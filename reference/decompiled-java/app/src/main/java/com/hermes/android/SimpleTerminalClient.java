package com.hermes.android;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.termux.terminal.TerminalEmulator;
import com.termux.terminal.TerminalSession;
import com.termux.terminal.TerminalSessionClient;
import com.termux.view.TerminalViewClient;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SimpleTerminalClient.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 h2\u00020\u00012\u00020\u0002:\u0001hB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u0013H\u0016J\u0010\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u0013H\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u0013H\u0016J\u001a\u00100\u001a\u00020\n2\u0006\u00101\u001a\u00020\u00132\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u0012\u00104\u001a\u00020\n2\b\u00101\u001a\u0004\u0018\u00010\u0013H\u0016J\u0018\u00105\u001a\u00020\n2\u0006\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u000208H\u0002J\u0010\u00109\u001a\u00020\n2\u0006\u00101\u001a\u00020\u0013H\u0016J\u0010\u0010:\u001a\u00020\n2\u0006\u00101\u001a\u00020\u0013H\u0016J\u0010\u0010;\u001a\u00020\n2\u0006\u0010<\u001a\u00020\u0019H\u0016J\u0018\u0010=\u001a\u00020\n2\u0006\u00101\u001a\u00020\u00132\u0006\u0010>\u001a\u000208H\u0016J\r\u0010?\u001a\u000208H\u0016¢\u0006\u0002\u0010@J\u0010\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020BH\u0016J\u0012\u0010D\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010FH\u0016J\b\u0010G\u001a\u00020\u0019H\u0016J\b\u0010H\u001a\u00020\u0019H\u0016J\b\u0010I\u001a\u000208H\u0016J\b\u0010J\u001a\u00020\u0019H\u0016J\b\u0010K\u001a\u00020\u0019H\u0016J\u0010\u0010L\u001a\u00020\n2\u0006\u0010M\u001a\u00020\u0019H\u0016J$\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u0002082\b\u0010E\u001a\u0004\u0018\u00010P2\b\u00101\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010Q\u001a\u00020\u00192\u0006\u0010O\u001a\u0002082\b\u0010E\u001a\u0004\u0018\u00010PH\u0016J\u0012\u0010R\u001a\u00020\u00192\b\u0010S\u001a\u0004\u0018\u00010FH\u0016J\b\u0010T\u001a\u00020\u0019H\u0016J\b\u0010U\u001a\u00020\u0019H\u0016J\b\u0010V\u001a\u00020\nH\u0016J\b\u0010W\u001a\u00020\u0019H\u0016J\b\u0010X\u001a\u00020\u0019H\u0016J\"\u0010Y\u001a\u00020\u00192\u0006\u0010Z\u001a\u0002082\u0006\u0010[\u001a\u00020\u00192\b\u00101\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\\\u001a\u00020\nH\u0016J\u001c\u0010]\u001a\u00020\n2\b\u0010^\u001a\u0004\u0018\u0001032\b\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010`\u001a\u00020\n2\b\u0010^\u001a\u0004\u0018\u0001032\b\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010a\u001a\u00020\n2\b\u0010^\u001a\u0004\u0018\u0001032\b\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010b\u001a\u00020\n2\b\u0010^\u001a\u0004\u0018\u0001032\b\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010c\u001a\u00020\n2\b\u0010^\u001a\u0004\u0018\u0001032\b\u0010_\u001a\u0004\u0018\u000103H\u0016J,\u0010d\u001a\u00020\n2\b\u0010^\u001a\u0004\u0018\u0001032\b\u0010_\u001a\u0004\u0018\u0001032\u000e\u0010E\u001a\n\u0018\u00010ej\u0004\u0018\u0001`fH\u0016J\"\u0010g\u001a\u00020\n2\b\u0010^\u001a\u0004\u0018\u0001032\u000e\u0010E\u001a\n\u0018\u00010ej\u0004\u0018\u0001`fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000e\"\u0004\b\u001b\u0010\u0010R\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010R\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000e\"\u0004\b!\u0010\u0010R.\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\n\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010)\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u000e\"\u0004\b+\u0010\u0010¨\u0006i"}, d2 = {"Lcom/hermes/android/SimpleTerminalClient;", "Lcom/termux/terminal/TerminalSessionClient;", "Lcom/termux/view/TerminalViewClient;", "appContext", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "generation", "", "markActive", "", "onSessionTextChanged", "Lkotlin/Function0;", "getOnSessionTextChanged", "()Lkotlin/jvm/functions/Function0;", "setOnSessionTextChanged", "(Lkotlin/jvm/functions/Function0;)V", "onSessionFinished", "Lkotlin/Function1;", "Lcom/termux/terminal/TerminalSession;", "getOnSessionFinished", "()Lkotlin/jvm/functions/Function1;", "setOnSessionFinished", "(Lkotlin/jvm/functions/Function1;)V", "peekControlState", "", "getPeekControlState", "setPeekControlState", "peekAltState", "getPeekAltState", "setPeekAltState", "onConsumeStickyModifiers", "getOnConsumeStickyModifiers", "setOnConsumeStickyModifiers", "onAttachClipboardImage", "Lkotlin/Function2;", "Landroid/net/Uri;", "getOnAttachClipboardImage", "()Lkotlin/jvm/functions/Function2;", "setOnAttachClipboardImage", "(Lkotlin/jvm/functions/Function2;)V", "onTextChangedExtra", "getOnTextChangedExtra", "setOnTextChangedExtra", "onTextChanged", "changedSession", "onTitleChanged", "finishedSession", "onCopyTextToClipboard", "session", "text", "", "onPasteTextFromClipboard", "toast", "ctx", "resId", "", "onBell", "onColorsChanged", "onTerminalCursorStateChange", "state", "setTerminalShellPid", "pid", "getTerminalCursorStyle", "()Ljava/lang/Integer;", "onScale", "", "scale", "onSingleTapUp", "e", "Landroid/view/MotionEvent;", "shouldBackButtonBeMappedToEscape", "shouldEnforceCharBasedInput", "getInputMode", "shouldUseCtrlSpaceWorkaround", "isTerminalViewSelected", "copyModeChanged", "copyMode", "onKeyDown", "keyCode", "Landroid/view/KeyEvent;", "onKeyUp", "onLongPress", NotificationCompat.CATEGORY_EVENT, "readControlKey", "readAltKey", "consumeStickyModifiers", "readShiftKey", "readFnKey", "onCodePoint", "codePoint", "ctrlDown", "onEmulatorSet", "logError", "tag", "message", "logWarn", "logInfo", "logDebug", "logVerbose", "logStackTraceWithMessage", "Ljava/lang/Exception;", "Lkotlin/Exception;", "logStackTrace", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SimpleTerminalClient implements TerminalSessionClient, TerminalViewClient {
    private static final String TAG = "SimpleTerminalClient";
    private final Context appContext;
    private volatile long generation;
    private Function2<? super TerminalSession, ? super Uri, Unit> onAttachClipboardImage;
    private Function0<Unit> onConsumeStickyModifiers;
    private Function1<? super TerminalSession, Unit> onSessionFinished;
    private Function0<Unit> onSessionTextChanged;
    private Function0<Unit> onTextChangedExtra;
    private Function0<Boolean> peekAltState;
    private Function0<Boolean> peekControlState;
    public static final int $stable = 8;
    private static final AtomicLong ACTIVE_GENERATION = new AtomicLong(0);

    /* JADX WARN: Illegal instructions before constructor call */
    public SimpleTerminalClient() {
        Context context = null;
        this(context, 1, context);
    }

    public void copyModeChanged(boolean copyMode) {
    }

    public int getInputMode() {
        return 0;
    }

    public boolean isTerminalViewSelected() {
        return true;
    }

    public void onBell(TerminalSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
    }

    public boolean onCodePoint(int codePoint, boolean ctrlDown, TerminalSession session) {
        return false;
    }

    public void onColorsChanged(TerminalSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
    }

    public void onEmulatorSet() {
    }

    public boolean onKeyDown(int keyCode, KeyEvent e, TerminalSession session) {
        return false;
    }

    public boolean onKeyUp(int keyCode, KeyEvent e) {
        return false;
    }

    public boolean onLongPress(MotionEvent event) {
        return false;
    }

    public float onScale(float scale) {
        return 1.0f;
    }

    public void onSingleTapUp(MotionEvent e) {
    }

    public void onTerminalCursorStateChange(boolean state) {
    }

    public void onTitleChanged(TerminalSession changedSession) {
        Intrinsics.checkNotNullParameter(changedSession, "changedSession");
    }

    public boolean readFnKey() {
        return false;
    }

    public boolean readShiftKey() {
        return false;
    }

    public boolean shouldBackButtonBeMappedToEscape() {
        return false;
    }

    public boolean shouldEnforceCharBasedInput() {
        return true;
    }

    public boolean shouldUseCtrlSpaceWorkaround() {
        return false;
    }

    public SimpleTerminalClient(Context context) {
        this.appContext = context;
    }

    public /* synthetic */ SimpleTerminalClient(Context context, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : context);
    }

    public final void markActive() {
        this.generation = ACTIVE_GENERATION.incrementAndGet();
    }

    public final Function0<Unit> getOnSessionTextChanged() {
        return this.onSessionTextChanged;
    }

    public final void setOnSessionTextChanged(Function0<Unit> function0) {
        this.onSessionTextChanged = function0;
    }

    public final Function1<TerminalSession, Unit> getOnSessionFinished() {
        return this.onSessionFinished;
    }

    public final void setOnSessionFinished(Function1<? super TerminalSession, Unit> function1) {
        this.onSessionFinished = function1;
    }

    public final Function0<Boolean> getPeekControlState() {
        return this.peekControlState;
    }

    public final void setPeekControlState(Function0<Boolean> function0) {
        this.peekControlState = function0;
    }

    public final Function0<Boolean> getPeekAltState() {
        return this.peekAltState;
    }

    public final void setPeekAltState(Function0<Boolean> function0) {
        this.peekAltState = function0;
    }

    public final Function0<Unit> getOnConsumeStickyModifiers() {
        return this.onConsumeStickyModifiers;
    }

    public final void setOnConsumeStickyModifiers(Function0<Unit> function0) {
        this.onConsumeStickyModifiers = function0;
    }

    public final Function2<TerminalSession, Uri, Unit> getOnAttachClipboardImage() {
        return this.onAttachClipboardImage;
    }

    public final void setOnAttachClipboardImage(Function2<? super TerminalSession, ? super Uri, Unit> function2) {
        this.onAttachClipboardImage = function2;
    }

    public final Function0<Unit> getOnTextChangedExtra() {
        return this.onTextChangedExtra;
    }

    public final void setOnTextChangedExtra(Function0<Unit> function0) {
        this.onTextChangedExtra = function0;
    }

    public void onTextChanged(TerminalSession changedSession) {
        Intrinsics.checkNotNullParameter(changedSession, "changedSession");
        Function0<Unit> function0 = this.onSessionTextChanged;
        if (function0 != null) {
            function0.invoke();
        }
        Function0<Unit> function02 = this.onTextChangedExtra;
        if (function02 != null) {
            function02.invoke();
        }
    }

    public void onSessionFinished(TerminalSession finishedSession) {
        Intrinsics.checkNotNullParameter(finishedSession, "finishedSession");
        Function1<? super TerminalSession, Unit> function1 = this.onSessionFinished;
        if (function1 != null) {
            function1.invoke(finishedSession);
        }
    }

    public void onCopyTextToClipboard(TerminalSession session, String text) {
        String str;
        Intrinsics.checkNotNullParameter(session, "session");
        Context context = this.appContext;
        if (context == null || (str = text) == null || str.length() == 0) {
            return;
        }
        try {
            Object systemService = context.getSystemService("clipboard");
            ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
            if (clipboardManager == null) {
                return;
            }
            clipboardManager.setPrimaryClip(ClipData.newPlainText("hermes-terminal", text));
        } catch (Exception e) {
            Log.w(TAG, "copy to clipboard failed: " + e.getMessage());
        }
    }

    public void onPasteTextFromClipboard(final TerminalSession session) {
        ClipData primaryClip;
        ClipData.Item itemAt;
        TerminalEmulator emulator;
        final Context context = this.appContext;
        if (context == null) {
            return;
        }
        try {
            Object systemService = context.getSystemService("clipboard");
            ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
            if (clipboardManager == null || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() == 0 || (itemAt = primaryClip.getItemAt(0)) == null) {
                return;
            }
            final Uri uriImageUriFromClip = ImageAttach.INSTANCE.imageUriFromClip(context, itemAt.getUri());
            if (uriImageUriFromClip != null) {
                consumeStickyModifiers();
                Function2<? super TerminalSession, ? super Uri, Unit> function2 = this.onAttachClipboardImage;
                if (session != null && function2 != null) {
                    function2.invoke(session, uriImageUriFromClip);
                    return;
                } else {
                    final Handler handler = new Handler(Looper.getMainLooper());
                    new Thread(new Runnable() { // from class: com.hermes.android.SimpleTerminalClient$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            SimpleTerminalClient.onPasteTextFromClipboard$lambda$1(context, uriImageUriFromClip, handler, session, this);
                        }
                    }).start();
                    return;
                }
            }
            CharSequence charSequenceCoerceToText = itemAt.coerceToText(context);
            String string = charSequenceCoerceToText != null ? charSequenceCoerceToText.toString() : null;
            String str = string;
            if (str != null && str.length() != 0) {
                if (session != null && (emulator = session.getEmulator()) != null) {
                    emulator.paste(string);
                }
                consumeStickyModifiers();
            }
        } catch (Exception e) {
            Log.w(TAG, "paste from clipboard failed: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPasteTextFromClipboard$lambda$1(final Context context, Uri uri, Handler handler, final TerminalSession terminalSession, final SimpleTerminalClient simpleTerminalClient) {
        final String strSaveToHermesImages = ImageAttach.INSTANCE.saveToHermesImages(context, uri);
        handler.post(new Runnable() { // from class: com.hermes.android.SimpleTerminalClient$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SimpleTerminalClient.onPasteTextFromClipboard$lambda$1$lambda$0(strSaveToHermesImages, terminalSession, simpleTerminalClient, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPasteTextFromClipboard$lambda$1$lambda$0(String str, TerminalSession terminalSession, SimpleTerminalClient simpleTerminalClient, Context context) {
        if (str != null) {
            if (terminalSession != null) {
                terminalSession.write(ImageAttach.INSTANCE.imageCommand(str));
            }
            simpleTerminalClient.toast(context, R.string.image_attached);
            return;
        }
        simpleTerminalClient.toast(context, R.string.image_attach_failed);
    }

    private final void toast(Context ctx, int resId) {
        try {
            Toast.makeText(ctx, resId, 0).show();
        } catch (Exception unused) {
        }
    }

    public void setTerminalShellPid(TerminalSession session, int pid) {
        Intrinsics.checkNotNullParameter(session, "session");
        Log.d(TAG, "Shell PID: " + pid);
    }

    public Integer getTerminalCursorStyle() {
        return 0;
    }

    public boolean readControlKey() {
        Function0<Boolean> function0 = this.peekControlState;
        if (function0 != null) {
            return ((Boolean) function0.invoke()).booleanValue();
        }
        return false;
    }

    public boolean readAltKey() {
        Function0<Boolean> function0 = this.peekAltState;
        if (function0 != null) {
            return ((Boolean) function0.invoke()).booleanValue();
        }
        return false;
    }

    public void consumeStickyModifiers() {
        Function0<Unit> function0;
        if (this.generation == 0 || this.generation != ACTIVE_GENERATION.get() || (function0 = this.onConsumeStickyModifiers) == null) {
            return;
        }
        function0.invoke();
    }

    public void logError(String tag, String message) {
        if (tag == null) {
            tag = TAG;
        }
        if (message == null) {
            message = "";
        }
        Log.e(tag, message);
    }

    public void logWarn(String tag, String message) {
        if (tag == null) {
            tag = TAG;
        }
        if (message == null) {
            message = "";
        }
        Log.w(tag, message);
    }

    public void logInfo(String tag, String message) {
        if (tag == null) {
            tag = TAG;
        }
        if (message == null) {
            message = "";
        }
        Log.i(tag, message);
    }

    public void logDebug(String tag, String message) {
        if (tag == null) {
            tag = TAG;
        }
        if (message == null) {
            message = "";
        }
        Log.d(tag, message);
    }

    public void logVerbose(String tag, String message) {
        if (tag == null) {
            tag = TAG;
        }
        if (message == null) {
            message = "";
        }
        Log.v(tag, message);
    }

    public void logStackTraceWithMessage(String tag, String message, Exception e) {
        if (tag == null) {
            tag = TAG;
        }
        Log.e(tag, message, e);
    }

    public void logStackTrace(String tag, Exception e) {
        if (tag == null) {
            tag = TAG;
        }
        Log.e(tag, "Stack trace", e);
    }
}
