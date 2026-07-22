package com.hermes.android;

import android.util.Log;
import com.termux.terminal.TerminalSession;
import com.termux.terminal.TerminalSessionClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NullTerminalSessionClient.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\r\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0002\u0010\u0019J\u001c\u0010\u001a\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u001d\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u001e\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u001f\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010 \u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J,\u0010!\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\u000e\u0010\"\u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016J\"\u0010%\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u000e\u0010\"\u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016¨\u0006'"}, d2 = {"Lcom/hermes/android/NullTerminalSessionClient;", "Lcom/termux/terminal/TerminalSessionClient;", "<init>", "()V", "onTextChanged", "", "changedSession", "Lcom/termux/terminal/TerminalSession;", "onTitleChanged", "onSessionFinished", "finishedSession", "onCopyTextToClipboard", "session", "text", "", "onPasteTextFromClipboard", "onBell", "onColorsChanged", "onTerminalCursorStateChange", "state", "", "setTerminalShellPid", "pid", "", "getTerminalCursorStyle", "()Ljava/lang/Integer;", "logError", "tag", "message", "logWarn", "logInfo", "logDebug", "logVerbose", "logStackTraceWithMessage", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "logStackTrace", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NullTerminalSessionClient implements TerminalSessionClient {
    public static final int $stable = 0;
    private static final String TAG = "NullTerminalClient";

    public void onBell(TerminalSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
    }

    public void onColorsChanged(TerminalSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
    }

    public void onCopyTextToClipboard(TerminalSession session, String text) {
        Intrinsics.checkNotNullParameter(session, "session");
    }

    public void onPasteTextFromClipboard(TerminalSession session) {
    }

    public void onTerminalCursorStateChange(boolean state) {
    }

    public void onTextChanged(TerminalSession changedSession) {
        Intrinsics.checkNotNullParameter(changedSession, "changedSession");
    }

    public void onTitleChanged(TerminalSession changedSession) {
        Intrinsics.checkNotNullParameter(changedSession, "changedSession");
    }

    public void onSessionFinished(TerminalSession finishedSession) {
        Intrinsics.checkNotNullParameter(finishedSession, "finishedSession");
        Log.d(TAG, "Session finished (no UI attached)");
    }

    public void setTerminalShellPid(TerminalSession session, int pid) {
        Intrinsics.checkNotNullParameter(session, "session");
        Log.d(TAG, "Shell PID (background): " + pid);
    }

    public Integer getTerminalCursorStyle() {
        return 0;
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
