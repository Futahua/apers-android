package com.hermes.android;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.hermes.android.data.HermesConfigRepository;
import com.termux.terminal.TerminalSession;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HermesService.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\b\u0007\u0018\u0000 $2\u00020\u0001:\u0002$%B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u0019\u001a\u00020\u0017H\u0002J\"\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u0012\u0010\u001e\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010 \u001a\u00020\u0017H\u0016J\b\u0010!\u001a\u00020\u0017H\u0002J\b\u0010\"\u001a\u00020\u0017H\u0002J\b\u0010#\u001a\u00020\u0017H\u0002R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0018\u00010\nR\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00060\u000fR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/hermes/android/HermesService;", "Landroid/app/Service;", "<init>", "()V", "value", "Lcom/hermes/android/TerminalSessionManager;", "sessionManager", "getSessionManager", "()Lcom/hermes/android/TerminalSessionManager;", "wakeLock", "Landroid/os/PowerManager$WakeLock;", "Landroid/os/PowerManager;", "ttsBridge", "Lcom/hermes/android/TtsPlaybackBridge;", "binder", "Lcom/hermes/android/HermesService$LocalBinder;", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onUnbind", "", "onRebind", "", "onCreate", "ensureLocalLlmReadyIfConfigured", "onStartCommand", "", "flags", "startId", "onTaskRemoved", "rootIntent", "onDestroy", "acquireWakeLock", "releaseWakeLock", "createNotificationChannel", "Companion", "LocalBinder", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HermesService extends Service {
    private static final String CHANNEL_ID = "hermes_service";
    private static final int NOTIFICATION_ID = 1;
    private static final String TAG = "HermesService";
    private static final String WAKELOCK_TAG = "hermes:terminal_session";
    private final LocalBinder binder = new LocalBinder();
    private TerminalSessionManager sessionManager;
    private TtsPlaybackBridge ttsBridge;
    private PowerManager.WakeLock wakeLock;
    public static final int $stable = 8;

    public final TerminalSessionManager getSessionManager() {
        TerminalSessionManager terminalSessionManager = this.sessionManager;
        if (terminalSessionManager != null) {
            return terminalSessionManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sessionManager");
        return null;
    }

    /* JADX INFO: compiled from: HermesService.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/HermesService$LocalBinder;", "Landroid/os/Binder;", "<init>", "(Lcom/hermes/android/HermesService;)V", NotificationCompat.CATEGORY_SERVICE, "Lcom/hermes/android/HermesService;", "getService", "()Lcom/hermes/android/HermesService;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class LocalBinder extends Binder {
        public LocalBinder() {
        }

        /* JADX INFO: renamed from: getService, reason: from getter */
        public final HermesService getThis$0() {
            return HermesService.this;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(TAG, "onBind: Activity binding");
        return this.binder;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Log.d(TAG, "onUnbind: switching all sessions to NullClient");
        final NullTerminalSessionClient nullTerminalSessionClient = new NullTerminalSessionClient();
        getSessionManager().forEachSession(new Function1() { // from class: com.hermes.android.HermesService$$ExternalSyntheticLambda1
            public final Object invoke(Object obj) {
                return HermesService.onUnbind$lambda$0(nullTerminalSessionClient, (TerminalSession) obj);
            }
        });
        getSessionManager().setSessionClient(nullTerminalSessionClient);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onUnbind$lambda$0(NullTerminalSessionClient nullTerminalSessionClient, TerminalSession terminalSession) {
        Intrinsics.checkNotNullParameter(terminalSession, "session");
        terminalSession.updateTerminalSessionClient(nullTerminalSessionClient);
        return Unit.INSTANCE;
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        Log.d(TAG, "onRebind: Activity re-binding");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "onCreate: initializing SessionManager");
        createNotificationChannel();
        HermesService hermesService = this;
        this.sessionManager = new TerminalSessionManager(hermesService);
        acquireWakeLock();
        ensureLocalLlmReadyIfConfigured();
        TtsPlaybackBridge ttsPlaybackBridge = new TtsPlaybackBridge(HermesPaths.INSTANCE.hermesHome(hermesService));
        ttsPlaybackBridge.start();
        this.ttsBridge = ttsPlaybackBridge;
    }

    private final void ensureLocalLlmReadyIfConfigured() {
        Thread thread = new Thread(new Runnable() { // from class: com.hermes.android.HermesService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HermesService.ensureLocalLlmReadyIfConfigured$lambda$2(this.f$0);
            }
        }, "local-llm-ready-check");
        thread.setDaemon(true);
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ensureLocalLlmReadyIfConfigured$lambda$2(HermesService hermesService) {
        try {
            HermesConfigRepository hermesConfigRepository = new HermesConfigRepository(HermesPaths.INSTANCE.hermesHome(hermesService));
            String activeProviderId = hermesConfigRepository.readActiveProviderId();
            hermesConfigRepository.ensureLocalLlmDefaultsIfActive(activeProviderId, NpuModuleBridge.INSTANCE.activeContextLength(hermesService));
            LocalLlmModuleBridge.INSTANCE.ensureServerRunningIfConfigured(hermesService, activeProviderId);
        } catch (Exception e) {
            Log.e(TAG, "ensureLocalLlmReadyIfConfigured failed", e);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        HermesService hermesService = this;
        Notification notificationBuild = new Notification.Builder(hermesService, CHANNEL_ID).setContentTitle("Hermes-agent Android").setContentText(getString(R.string.service_text)).setSmallIcon(android.R.drawable.ic_dialog_info).setContentIntent(PendingIntent.getActivity(hermesService, 0, new Intent(hermesService, (Class<?>) MainActivity.class), AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL)).setOngoing(true).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        try {
            if (Build.VERSION.SDK_INT >= 34) {
                startForeground(1, notificationBuild, 1073741824);
            } else {
                startForeground(1, notificationBuild);
            }
            return 1;
        } catch (IllegalStateException e) {
            Log.w(TAG, "startForeground not allowed (background start) — stopping self: " + e.getMessage());
            stopSelf();
            return 2;
        } catch (Exception e2) {
            Log.e(TAG, "startForeground failed unexpectedly — stopping self", e2);
            stopSelf();
            return 2;
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent rootIntent) {
        Log.d(TAG, "onTaskRemoved: service continues running (" + getSessionManager().getSessionCount() + " sessions)");
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d(TAG, "onDestroy: closing all sessions");
        getSessionManager().closeAll();
        releaseWakeLock();
        TtsPlaybackBridge ttsPlaybackBridge = this.ttsBridge;
        if (ttsPlaybackBridge != null) {
            ttsPlaybackBridge.stop();
        }
        this.ttsBridge = null;
        super.onDestroy();
    }

    private final void acquireWakeLock() {
        Object systemService = getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) systemService).newWakeLock(1, WAKELOCK_TAG);
        wakeLockNewWakeLock.acquire();
        this.wakeLock = wakeLockNewWakeLock;
        Log.d(TAG, "WakeLock acquired");
    }

    private final void releaseWakeLock() {
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock != null && wakeLock.isHeld()) {
            wakeLock.release();
            Log.d(TAG, "WakeLock released");
        }
        this.wakeLock = null;
    }

    private final void createNotificationChannel() {
        NotificationChannel notificationChannel = new NotificationChannel(CHANNEL_ID, getString(R.string.service_channel), 2);
        notificationChannel.setDescription(getString(R.string.service_channel_desc));
        notificationChannel.setShowBadge(false);
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
    }
}
