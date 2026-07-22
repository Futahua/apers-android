package com.hermes.android;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.termux.terminal.TerminalSession;
import com.termux.terminal.TerminalSessionClient;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: TerminalSessionManager.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 >2\u00020\u0001:\u0002>?B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\bJ\b\u0010%\u001a\u00020\u0017H\u0002J\u0018\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020+0*0)J\u0006\u0010,\u001a\u00020+J\u001c\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b\u0018\u00010*2\u0006\u0010.\u001a\u00020\u000bJ\u000e\u0010/\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\bJ,\u00102\u001a\u0004\u0018\u00010\b2\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u000bJ\u0010\u00106\u001a\u0004\u0018\u00010\b2\u0006\u00107\u001a\u00020\rJ\u000e\u00108\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\bJ\u0006\u00109\u001a\u00020\u0017J\u001a\u0010:\u001a\u00020\u00172\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00170<J\u0006\u0010=\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00150\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\b8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\"\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0011\u0010&\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b'\u0010 R\u0011\u00100\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b0\u00101¨\u0006@"}, d2 = {"Lcom/hermes/android/TerminalSessionManager;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "sessions", "", "Lcom/termux/terminal/TerminalSession;", "sessionLabels", "", "", "activeIndex", "", "sessionClient", "Lcom/termux/terminal/TerminalSessionClient;", "getSessionClient", "()Lcom/termux/terminal/TerminalSessionClient;", "setSessionClient", "(Lcom/termux/terminal/TerminalSessionClient;)V", "hermesBindings", "Lcom/hermes/android/TerminalSessionManager$HermesBinding;", "setHermesBinding", "", "session", "binding", "hermesBinding", "activeSession", "getActiveSession", "()Lcom/termux/terminal/TerminalSession;", "activeSessionIndex", "getActiveSessionIndex", "()I", "activeHandleSnapshot", "activeSessionHandleSnapshot", "getActiveSessionHandleSnapshot", "()Ljava/lang/String;", "publishActiveHandle", "sessionCount", "getSessionCount", "sessionInfoList", "", "Lkotlin/Pair;", "", "hasRunningSession", "findRunningSession", "labelContains", "getLabel", "isAtMaxSessions", "()Z", "createSession", "command", "client", "label", "switchSession", "index", "closeSession", "pruneDeadSessions", "forEachSession", "action", "Lkotlin/Function1;", "closeAll", "Companion", "HermesBinding", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TerminalSessionManager {
    public static final int MAX_SESSIONS = 8;
    private static final String TAG = "TerminalSessionManager";
    public static final int TERMINAL_SCROLLBACK_ROWS = 10000;
    private static volatile TerminalSessionManager processInstance;
    private volatile String activeHandleSnapshot;
    private int activeIndex;
    private final Context context;
    private final Map<TerminalSession, HermesBinding> hermesBindings;
    private TerminalSessionClient sessionClient;
    private final Map<TerminalSession, String> sessionLabels;
    private final List<TerminalSession> sessions;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public TerminalSessionManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        processInstance = this;
        this.sessions = new ArrayList();
        this.sessionLabels = new LinkedHashMap();
        this.hermesBindings = new LinkedHashMap();
    }

    /* JADX INFO: compiled from: TerminalSessionManager.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/TerminalSessionManager$Companion;", "", "<init>", "()V", "TAG", "", "MAX_SESSIONS", "", "TERMINAL_SCROLLBACK_ROWS", "value", "Lcom/hermes/android/TerminalSessionManager;", "processInstance", "getProcessInstance", "()Lcom/hermes/android/TerminalSessionManager;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TerminalSessionManager getProcessInstance() {
            return TerminalSessionManager.processInstance;
        }
    }

    public final TerminalSessionClient getSessionClient() {
        return this.sessionClient;
    }

    public final void setSessionClient(TerminalSessionClient terminalSessionClient) {
        this.sessionClient = terminalSessionClient;
    }

    /* JADX INFO: compiled from: TerminalSessionManager.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/hermes/android/TerminalSessionManager$HermesBinding;", "", "launchEpochMs", "", "resumeSessionId", "", "<init>", "(JLjava/lang/String;)V", "getLaunchEpochMs", "()J", "getResumeSessionId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class HermesBinding {
        public static final int $stable = 0;
        private final long launchEpochMs;
        private final String resumeSessionId;

        public static /* synthetic */ HermesBinding copy$default(HermesBinding hermesBinding, long j, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                j = hermesBinding.launchEpochMs;
            }
            if ((i & 2) != 0) {
                str = hermesBinding.resumeSessionId;
            }
            return hermesBinding.copy(j, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final long getLaunchEpochMs() {
            return this.launchEpochMs;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getResumeSessionId() {
            return this.resumeSessionId;
        }

        public final HermesBinding copy(long launchEpochMs, String resumeSessionId) {
            return new HermesBinding(launchEpochMs, resumeSessionId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof HermesBinding)) {
                return false;
            }
            HermesBinding hermesBinding = (HermesBinding) other;
            return this.launchEpochMs == hermesBinding.launchEpochMs && Intrinsics.areEqual(this.resumeSessionId, hermesBinding.resumeSessionId);
        }

        public int hashCode() {
            int iHashCode = Long.hashCode(this.launchEpochMs) * 31;
            String str = this.resumeSessionId;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "HermesBinding(launchEpochMs=" + this.launchEpochMs + ", resumeSessionId=" + this.resumeSessionId + ")";
        }

        public HermesBinding(long j, String str) {
            this.launchEpochMs = j;
            this.resumeSessionId = str;
        }

        public final long getLaunchEpochMs() {
            return this.launchEpochMs;
        }

        public final String getResumeSessionId() {
            return this.resumeSessionId;
        }
    }

    public final void setHermesBinding(TerminalSession session, HermesBinding binding) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.hermesBindings.put(session, binding);
    }

    public final HermesBinding hermesBinding(TerminalSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        return this.hermesBindings.get(session);
    }

    public final TerminalSession getActiveSession() {
        return (TerminalSession) CollectionsKt.getOrNull(this.sessions, this.activeIndex);
    }

    /* JADX INFO: renamed from: getActiveSessionIndex, reason: from getter */
    public final int getActiveIndex() {
        return this.activeIndex;
    }

    /* JADX INFO: renamed from: getActiveSessionHandleSnapshot, reason: from getter */
    public final String getActiveHandleSnapshot() {
        return this.activeHandleSnapshot;
    }

    private final void publishActiveHandle() {
        TerminalSession terminalSession = (TerminalSession) CollectionsKt.getOrNull(this.sessions, this.activeIndex);
        this.activeHandleSnapshot = terminalSession != null ? terminalSession.mHandle : null;
    }

    public final int getSessionCount() {
        return this.sessions.size();
    }

    public final List<Pair<String, Boolean>> sessionInfoList() {
        List<TerminalSession> list = this.sessions;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            TerminalSession terminalSession = (TerminalSession) obj;
            String str = this.sessionLabels.get(terminalSession);
            if (str == null) {
                str = "Shell " + i2;
            }
            arrayList.add(TuplesKt.to(str, Boolean.valueOf(terminalSession.isRunning())));
            i = i2;
        }
        return arrayList;
    }

    public final boolean hasRunningSession() {
        List<TerminalSession> list = this.sessions;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((TerminalSession) it.next()).isRunning()) {
                return true;
            }
        }
        return false;
    }

    public final Pair<Integer, TerminalSession> findRunningSession(String labelContains) {
        Intrinsics.checkNotNullParameter(labelContains, "labelContains");
        int i = 0;
        for (Object obj : this.sessions) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            TerminalSession terminalSession = (TerminalSession) obj;
            String str = this.sessionLabels.get(terminalSession);
            if (str == null) {
                str = "";
            }
            if (StringsKt.contains(str, labelContains, true) && terminalSession.isRunning()) {
                return TuplesKt.to(Integer.valueOf(i), terminalSession);
            }
            i = i2;
        }
        return null;
    }

    public final String getLabel(TerminalSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        int iIndexOf = this.sessions.indexOf(session);
        String str = this.sessionLabels.get(session);
        if (str != null) {
            return str;
        }
        return "Shell " + (iIndexOf + 1);
    }

    public final boolean isAtMaxSessions() {
        return this.sessions.size() >= 8;
    }

    public static /* synthetic */ TerminalSession createSession$default(TerminalSessionManager terminalSessionManager, String str, TerminalSessionClient terminalSessionClient, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            terminalSessionClient = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return terminalSessionManager.createSession(str, terminalSessionClient, str2);
    }

    public final TerminalSession createSession(String command, TerminalSessionClient client, String label) {
        TerminalSessionClient terminalSessionClient;
        String str;
        String str2;
        String[] strArr;
        String str3;
        String[] strArr2;
        String str4;
        if (this.sessions.size() >= 8) {
            Log.w(TAG, "Cannot create session: limit 8 reached (current=" + this.sessions.size() + ")");
            return null;
        }
        if (client == null) {
            TerminalSessionClient terminalSessionClient2 = this.sessionClient;
            if (terminalSessionClient2 == null) {
                throw new IllegalStateException("No TerminalSessionClient set");
            }
            terminalSessionClient = terminalSessionClient2;
        } else {
            terminalSessionClient = client;
        }
        String absolutePath = this.context.getFilesDir().getAbsolutePath();
        String str5 = absolutePath + "/usr";
        String str6 = absolutePath + "/home";
        if (new File(str5 + "/bin/bash").exists()) {
            str = str5 + "/bin/bash";
        } else {
            str = new File(new StringBuilder().append(str5).append("/bin/sh").toString()).exists() ? str5 + "/bin/sh" : "/system/bin/sh";
        }
        if (Build.VERSION.SDK_INT < 29 || !StringsKt.startsWith$default(str, "/data/", false, 2, (Object) null)) {
            str2 = null;
        } else {
            String[] strArr3 = Build.SUPPORTED_64_BIT_ABIS;
            Intrinsics.checkNotNullExpressionValue(strArr3, "SUPPORTED_64_BIT_ABIS");
            str2 = !(strArr3.length == 0) ? "/system/bin/linker64" : "/system/bin/linker";
        }
        if (str2 != null) {
            if (command != null) {
                strArr2 = new String[]{str2, str, "-c", command};
            } else {
                strArr2 = new String[]{str2, str, "-l"};
            }
            str3 = str2;
        } else {
            if (command != null) {
                strArr = new String[]{str, "-c", command};
            } else {
                strArr = new String[]{str, "-l"};
            }
            str3 = str;
            strArr2 = strArr;
        }
        TerminalSession terminalSession = new TerminalSession(str3, str6, strArr2, EnvironmentBuilder.INSTANCE.build(this.context), Integer.valueOf(TERMINAL_SCROLLBACK_ROWS), terminalSessionClient);
        this.sessions.add(terminalSession);
        this.activeIndex = this.sessions.size() - 1;
        publishActiveHandle();
        if (label == null) {
            str4 = command != null ? (String) CollectionsKt.last(StringsKt.split$default((CharSequence) CollectionsKt.first(StringsKt.split$default(command, new String[]{" "}, false, 0, 6, (Object) null)), new String[]{"/"}, false, 0, 6, (Object) null)) : null;
            if (str4 == null) {
                str4 = "Shell " + this.sessions.size();
            }
        } else {
            str4 = label;
        }
        this.sessionLabels.put(terminalSession, str4);
        Log.d(TAG, "Created session #" + this.sessions.size() + " label=" + str4 + " (shell=" + str + ", cmd=" + command + ")");
        return terminalSession;
    }

    public final TerminalSession switchSession(int index) {
        if (index < 0 || index >= this.sessions.size()) {
            return null;
        }
        this.activeIndex = index;
        publishActiveHandle();
        return this.sessions.get(index);
    }

    public final void closeSession(TerminalSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        int iIndexOf = this.sessions.indexOf(session);
        if (iIndexOf >= 0) {
            session.finishIfRunning();
            this.sessionLabels.remove(session);
            this.hermesBindings.remove(session);
            this.sessions.remove(iIndexOf);
            if (this.activeIndex >= this.sessions.size()) {
                this.activeIndex = RangesKt.coerceAtLeast(this.sessions.size() - 1, 0);
            }
            publishActiveHandle();
        }
    }

    public final void pruneDeadSessions() {
        List<TerminalSession> list = this.sessions;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((TerminalSession) obj).isRunning()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            closeSession((TerminalSession) it.next());
        }
    }

    public final void forEachSession(Function1<? super TerminalSession, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        Iterator<T> it = this.sessions.iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
    }

    public final void closeAll() {
        Iterator<T> it = this.sessions.iterator();
        while (it.hasNext()) {
            ((TerminalSession) it.next()).finishIfRunning();
        }
        this.sessions.clear();
        this.sessionLabels.clear();
        this.hermesBindings.clear();
        this.activeIndex = 0;
        publishActiveHandle();
    }
}
