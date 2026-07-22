package com.hermes.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.ComponentActivityKt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.core.view.PointerIconCompat;
import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.hermes.android.HermesService;
import com.hermes.android.data.AdManager;
import com.hermes.android.data.BillingRepository;
import com.hermes.android.data.ProStatus;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\b\u0010\u001e\u001a\u00020\u001bH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, d2 = {"Lcom/hermes/android/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "bootstrapManager", "Lcom/hermes/android/BootstrapManager;", "proStatus", "Lcom/hermes/android/data/ProStatus;", "billingRepository", "Lcom/hermes/android/data/BillingRepository;", "adManager", "Lcom/hermes/android/data/AdManager;", "hermesService", "Lcom/hermes/android/HermesService;", "serviceBound", "", "sessionManagerReady", "Landroidx/compose/runtime/MutableState;", "sessionManager", "Lcom/hermes/android/TerminalSessionManager;", "getSessionManager", "()Lcom/hermes/android/TerminalSessionManager;", "serviceConnection", "Landroid/content/ServiceConnection;", "getServiceConnection$app_release", "()Landroid/content/ServiceConnection;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MainActivity extends AppCompatActivity {
    public static final int $stable = 8;
    private AdManager adManager;
    private BillingRepository billingRepository;
    private BootstrapManager bootstrapManager;
    private HermesService hermesService;
    private ProStatus proStatus;
    private boolean serviceBound;
    private final MutableState<Boolean> sessionManagerReady = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
    private final ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.hermes.android.MainActivity$serviceConnection$1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder binder) {
            TerminalSessionManager sessionManager;
            MainActivity mainActivity = this.this$0;
            Intrinsics.checkNotNull(binder, "null cannot be cast to non-null type com.hermes.android.HermesService.LocalBinder");
            mainActivity.hermesService = ((HermesService.LocalBinder) binder).getThis$0();
            this.this$0.serviceBound = true;
            this.this$0.sessionManagerReady.setValue(true);
            HermesService hermesService = this.this$0.hermesService;
            Log.d("MainActivity", "Service connected, sessions=" + ((hermesService == null || (sessionManager = hermesService.getSessionManager()) == null) ? null : Integer.valueOf(sessionManager.getSessionCount())));
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            this.this$0.hermesService = null;
            this.this$0.serviceBound = false;
            this.this$0.sessionManagerReady.setValue(false);
            Log.d("MainActivity", "Service disconnected");
        }
    };

    public static final /* synthetic */ TerminalSessionManager access$getSessionManager(MainActivity mainActivity) {
        return mainActivity.getSessionManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TerminalSessionManager getSessionManager() {
        HermesService hermesService = this.hermesService;
        if (hermesService != null) {
            return hermesService.getSessionManager();
        }
        return null;
    }

    /* JADX INFO: renamed from: getServiceConnection$app_release, reason: from getter */
    public final ServiceConnection getServiceConnection() {
        return this.serviceConnection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
            requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, PointerIconCompat.TYPE_CONTEXT_MENU);
        }
        Context context = (Context) this;
        this.bootstrapManager = new BootstrapManager(context);
        this.proStatus = new ProStatus(context);
        ProStatus proStatus = this.proStatus;
        if (proStatus == null) {
            Intrinsics.throwUninitializedPropertyAccessException("proStatus");
            proStatus = null;
        }
        this.billingRepository = new BillingRepository(context, proStatus);
        ProStatus proStatus2 = this.proStatus;
        if (proStatus2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("proStatus");
            proStatus2 = null;
        }
        AdManager adManager = new AdManager(context, proStatus2);
        this.adManager = adManager;
        adManager.initialize();
        BillingRepository billingRepository = this.billingRepository;
        if (billingRepository == null) {
            Intrinsics.throwUninitializedPropertyAccessException("billingRepository");
            billingRepository = null;
        }
        billingRepository.connect();
        BootstrapManager bootstrapManager = this.bootstrapManager;
        if (bootstrapManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bootstrapManager");
            bootstrapManager = null;
        }
        if (bootstrapManager.isInstalled()) {
            try {
                startForegroundService(new Intent((Context) this, (Class<?>) HermesService.class));
            } catch (IllegalStateException e) {
                Log.w("MainActivity", "FGS start not allowed: " + e.getMessage());
            } catch (Exception e2) {
                Log.e("MainActivity", "FGS start failed unexpectedly", e2);
            }
            bindService(new Intent(context, (Class<?>) HermesService.class), this.serviceConnection, 1);
        }
        ComponentActivityKt.setContent$default((ComponentActivity) this, (CompositionContext) null, ComposableLambdaKt.composableLambdaInstance(-1981519122, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivity.onCreate.1

            /* JADX INFO: renamed from: com.hermes.android.MainActivity$onCreate$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: MainActivity.kt */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            static final class C00181 implements Function2<Composer, Integer, Unit> {
                final /* synthetic */ MainActivity this$0;

                C00181(MainActivity mainActivity) {
                    this.this$0 = mainActivity;
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    BootstrapManager bootstrapManager;
                    AdManager adManager;
                    BillingRepository billingRepository;
                    ProStatus proStatus;
                    if ((i & 3) != 2 || !composer.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-418207610, i, -1, "com.hermes.android.MainActivity.onCreate.<anonymous>.<anonymous> (MainActivity.kt:191)");
                        }
                        BootstrapManager bootstrapManager2 = this.this$0.bootstrapManager;
                        if (bootstrapManager2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("bootstrapManager");
                            bootstrapManager = null;
                        } else {
                            bootstrapManager = bootstrapManager2;
                        }
                        MutableState mutableState = this.this$0.sessionManagerReady;
                        composer.startReplaceGroup(656173175);
                        boolean zChangedInstance = composer.changedInstance(this.this$0);
                        final MainActivity mainActivity = this.this$0;
                        Object objRememberedValue = composer.rememberedValue();
                        if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                            objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivity$onCreate$1$1$$ExternalSyntheticLambda0
                                public final Object invoke() {
                                    return MainActivity.access$getSessionManager(mainActivity);
                                }
                            };
                            composer.updateRememberedValue(objRememberedValue);
                        }
                        Function0 function0 = (Function0) objRememberedValue;
                        composer.endReplaceGroup();
                        LifecycleCoroutineScope lifecycleScope = LifecycleOwnerKt.getLifecycleScope((LifecycleOwner) this.this$0);
                        MainActivity mainActivity2 = this.this$0;
                        MainActivity mainActivity3 = mainActivity2;
                        AdManager adManager2 = mainActivity2.adManager;
                        if (adManager2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adManager");
                            adManager = null;
                        } else {
                            adManager = adManager2;
                        }
                        BillingRepository billingRepository2 = this.this$0.billingRepository;
                        if (billingRepository2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("billingRepository");
                            billingRepository = null;
                        } else {
                            billingRepository = billingRepository2;
                        }
                        ProStatus proStatus2 = this.this$0.proStatus;
                        if (proStatus2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("proStatus");
                            proStatus = null;
                        } else {
                            proStatus = proStatus2;
                        }
                        MainActivityKt.HermesApp(bootstrapManager, mutableState, function0, lifecycleScope, mainActivity3, adManager, billingRepository, proStatus, composer, (AdManager.$stable << 15) | (BillingRepository.$stable << 18) | (ProStatus.$stable << 21));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer.skipToGroupEnd();
                }
            }

            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((Composer) obj, ((Number) obj2).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                if ((i & 3) != 2 || !composer.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1981519122, i, -1, "com.hermes.android.MainActivity.onCreate.<anonymous> (MainActivity.kt:190)");
                    }
                    MainActivityKt.HermesTheme(ComposableLambdaKt.rememberComposableLambda(-418207610, true, new C00181(MainActivity.this), composer, 54), composer, 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        }), 1, (Object) null);
    }

    protected void onDestroy() {
        if (this.serviceBound) {
            unbindService(this.serviceConnection);
            this.serviceBound = false;
        }
        super.onDestroy();
        BillingRepository billingRepository = this.billingRepository;
        if (billingRepository == null) {
            Intrinsics.throwUninitializedPropertyAccessException("billingRepository");
            billingRepository = null;
        }
        billingRepository.destroy();
    }
}
