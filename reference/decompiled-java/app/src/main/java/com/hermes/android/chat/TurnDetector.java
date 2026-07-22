package com.hermes.android.chat;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: TurnDetector.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 -2\u00020\u0001:\u0002-.B)\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\n\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0002J\u0006\u0010 \u001a\u00020\rJ\u0010\u0010!\u001a\u00020\r2\b\b\u0002\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\rJ\n\u0010%\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020\u0004H\u0002J\u0010\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0002J\u0018\u0010*\u001a\u00020+2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004H\u0002R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/hermes/android/chat/TurnDetector;", "", "transcriptProvider", "Lkotlin/Function0;", "", "debounceMs", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lkotlin/jvm/functions/Function0;JLkotlinx/coroutines/CoroutineScope;)V", "onChunk", "Lkotlin/Function1;", "", "getOnChunk", "()Lkotlin/jvm/functions/Function1;", "setOnChunk", "(Lkotlin/jvm/functions/Function1;)V", "onTurnEnd", "getOnTurnEnd", "()Lkotlin/jvm/functions/Function0;", "setOnTurnEnd", "(Lkotlin/jvm/functions/Function0;)V", "lastClean", "turnAnchor", "turnHead", "turnBaseLen", "", "echoToSkip", "debounceJob", "Lkotlinx/coroutines/Job;", "cleanTranscript", "onTerminalChanged", "markTurnStart", "sentText", "currentTurnText", "cancel", "currentTurnRaw", "turnSliceStart", "clean", "stripEcho", "raw", "matchEcho", "Lcom/hermes/android/chat/TurnDetector$EchoMatch;", "echo", "Companion", "EchoMatch", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TurnDetector {

    @Deprecated
    public static final int ANCHOR_LEN = 200;

    @Deprecated
    public static final int ECHO_START_CAP = 512;
    private Job debounceJob;
    private final long debounceMs;
    private String echoToSkip;
    private String lastClean;
    private Function1<? super String, Unit> onChunk;
    private Function0<Unit> onTurnEnd;
    private final CoroutineScope scope;
    private final Function0<String> transcriptProvider;
    private String turnAnchor;
    private int turnBaseLen;
    private String turnHead;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public TurnDetector(Function0<String> function0, long j, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(function0, "transcriptProvider");
        Intrinsics.checkNotNullParameter(coroutineScope, "scope");
        this.transcriptProvider = function0;
        this.debounceMs = j;
        this.scope = coroutineScope;
        this.lastClean = "";
        this.turnAnchor = "";
        this.turnHead = "";
        this.echoToSkip = "";
    }

    public /* synthetic */ TurnDetector(Function0 function0, long j, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i & 2) != 0 ? 500L : j, coroutineScope);
    }

    public final Function1<String, Unit> getOnChunk() {
        return this.onChunk;
    }

    public final void setOnChunk(Function1<? super String, Unit> function1) {
        this.onChunk = function1;
    }

    public final Function0<Unit> getOnTurnEnd() {
        return this.onTurnEnd;
    }

    public final void setOnTurnEnd(Function0<Unit> function0) {
        this.onTurnEnd = function0;
    }

    /* JADX INFO: compiled from: TurnDetector.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/hermes/android/chat/TurnDetector$Companion;", "", "<init>", "()V", "ANCHOR_LEN", "", "ECHO_START_CAP", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final String cleanTranscript() {
        String str = (String) this.transcriptProvider.invoke();
        if (str != null) {
            return TranscriptCleaner.INSTANCE.strip(str);
        }
        return null;
    }

    public final void onTerminalChanged() {
        String strCleanTranscript = cleanTranscript();
        if (strCleanTranscript == null) {
            return;
        }
        if (!Intrinsics.areEqual(strCleanTranscript, this.lastClean)) {
            if (strCleanTranscript.length() > this.lastClean.length() && StringsKt.startsWith$default(strCleanTranscript, this.lastClean, false, 2, (Object) null)) {
                String strSubstring = strCleanTranscript.substring(this.lastClean.length());
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                this.lastClean = strCleanTranscript;
                Function1<? super String, Unit> function1 = this.onChunk;
                if (function1 != null) {
                    function1.invoke(strSubstring);
                }
            } else {
                this.lastClean = strCleanTranscript;
                Function1<? super String, Unit> function12 = this.onChunk;
                if (function12 != null) {
                    function12.invoke("");
                }
            }
        }
        Job job = this.debounceJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.debounceJob = BuildersKt.launch$default(this.scope, (CoroutineContext) null, (CoroutineStart) null, new AnonymousClass1(null), 3, (Object) null);
    }

    /* JADX INFO: renamed from: com.hermes.android.chat.TurnDetector$onTerminalChanged$1, reason: invalid class name */
    /* JADX INFO: compiled from: TurnDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.chat.TurnDetector$onTerminalChanged$1", f = "TurnDetector.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TurnDetector.this.new AnonymousClass1(continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            String string;
            Function0<Unit> onTurnEnd;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(TurnDetector.this.debounceMs, (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            String strCurrentTurnRaw = TurnDetector.this.currentTurnRaw();
            if (strCurrentTurnRaw == null || (string = StringsKt.trim(strCurrentTurnRaw).toString()) == null) {
                string = "";
            }
            if (string.length() > 0 && (onTurnEnd = TurnDetector.this.getOnTurnEnd()) != null) {
                onTurnEnd.invoke();
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void markTurnStart$default(TurnDetector turnDetector, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        turnDetector.markTurnStart(str);
    }

    public final void markTurnStart(String sentText) {
        Intrinsics.checkNotNullParameter(sentText, "sentText");
        String strCleanTranscript = cleanTranscript();
        if (strCleanTranscript == null) {
            strCleanTranscript = "";
        }
        this.turnBaseLen = strCleanTranscript.length();
        this.turnAnchor = StringsKt.takeLast(strCleanTranscript, 200);
        this.turnHead = StringsKt.take(strCleanTranscript, 200);
        this.lastClean = strCleanTranscript;
        this.echoToSkip = sentText;
        Job job = this.debounceJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }

    public final String currentTurnText() {
        TranscriptCleaner transcriptCleaner = TranscriptCleaner.INSTANCE;
        String strCurrentTurnRaw = currentTurnRaw();
        if (strCurrentTurnRaw == null) {
            strCurrentTurnRaw = "";
        }
        return transcriptCleaner.cleanForPreview(strCurrentTurnRaw);
    }

    public final void cancel() {
        Job job = this.debounceJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String currentTurnRaw() {
        String strCleanTranscript = cleanTranscript();
        if (strCleanTranscript == null) {
            return null;
        }
        String strSubstring = strCleanTranscript.substring(turnSliceStart(strCleanTranscript));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return stripEcho(strSubstring);
    }

    private final int turnSliceStart(String clean) {
        if (this.turnAnchor.length() == 0) {
            return 0;
        }
        int iLastIndexOf$default = StringsKt.lastIndexOf$default(clean, this.turnAnchor, this.turnBaseLen - this.turnAnchor.length(), false, 4, (Object) null);
        if (iLastIndexOf$default >= 0) {
            return iLastIndexOf$default + this.turnAnchor.length();
        }
        boolean z = this.turnHead.length() > 0 && StringsKt.startsWith$default(clean, this.turnHead, false, 2, (Object) null);
        if (z) {
            int length = clean.length();
            int i = this.turnBaseLen;
            if (length >= i) {
                String strSubstring = clean.substring(RangesKt.coerceAtLeast(i - 200, 0), this.turnBaseLen);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                this.turnAnchor = strSubstring;
                return this.turnBaseLen;
            }
        }
        if (z) {
            this.turnBaseLen = clean.length();
            this.turnAnchor = StringsKt.takeLast(clean, 200);
            return clean.length();
        }
        this.turnAnchor = "";
        this.turnHead = "";
        this.turnBaseLen = 0;
        return 0;
    }

    /* JADX INFO: compiled from: TurnDetector.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/chat/TurnDetector$EchoMatch;", "", "Complete", "Partial", "None", "Lcom/hermes/android/chat/TurnDetector$EchoMatch$Complete;", "Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;", "Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private interface EchoMatch {

        /* JADX INFO: compiled from: TurnDetector.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/chat/TurnDetector$EchoMatch$Complete;", "Lcom/hermes/android/chat/TurnDetector$EchoMatch;", "endIndex", "", "<init>", "(I)V", "getEndIndex", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final /* data */ class Complete implements EchoMatch {
            public static final int $stable = 0;
            private final int endIndex;

            public static /* synthetic */ Complete copy$default(Complete complete, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = complete.endIndex;
                }
                return complete.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getEndIndex() {
                return this.endIndex;
            }

            public final Complete copy(int endIndex) {
                return new Complete(endIndex);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Complete) && this.endIndex == ((Complete) other).endIndex;
            }

            public int hashCode() {
                return Integer.hashCode(this.endIndex);
            }

            public String toString() {
                return "Complete(endIndex=" + this.endIndex + ")";
            }

            public Complete(int i) {
                this.endIndex = i;
            }

            public final int getEndIndex() {
                return this.endIndex;
            }
        }

        /* JADX INFO: compiled from: TurnDetector.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;", "Lcom/hermes/android/chat/TurnDetector$EchoMatch;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Partial implements EchoMatch {
            public static final int $stable = 0;
            public static final Partial INSTANCE = new Partial();

            private Partial() {
            }
        }

        /* JADX INFO: compiled from: TurnDetector.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;", "Lcom/hermes/android/chat/TurnDetector$EchoMatch;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class None implements EchoMatch {
            public static final int $stable = 0;
            public static final None INSTANCE = new None();

            private None() {
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    private final String stripEcho(String raw) throws NoWhenBranchMatchedException, IOException {
        if (StringsKt.isBlank(this.echoToSkip)) {
            return raw;
        }
        EchoMatch echoMatchMatchEcho = matchEcho(raw, this.echoToSkip);
        if (echoMatchMatchEcho instanceof EchoMatch.Complete) {
            String strSubstring = raw.substring(((EchoMatch.Complete) echoMatchMatchEcho).getEndIndex());
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            return strSubstring;
        }
        if (Intrinsics.areEqual(echoMatchMatchEcho, EchoMatch.Partial.INSTANCE)) {
            return "";
        }
        if (Intrinsics.areEqual(echoMatchMatchEcho, EchoMatch.None.INSTANCE)) {
            return raw;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final EchoMatch matchEcho(String raw, String echo) throws IOException {
        String str = echo;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!CharsKt.isWhitespace(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        if (string.length() == 0) {
            return EchoMatch.None.INSTANCE;
        }
        ArrayList arrayList = new ArrayList(raw.length());
        String str2 = raw;
        int length = str2.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!TranscriptCleaner.INSTANCE.isNoise$app_release(raw.charAt(i2))) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (arrayList.isEmpty()) {
            return EchoMatch.None.INSTANCE;
        }
        Object obj = arrayList.get(0);
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        int iIndexOf$default = StringsKt.indexOf$default(str2, '\n', ((Number) obj).intValue(), false, 4, (Object) null);
        if (iIndexOf$default == -1) {
            iIndexOf$default = raw.length();
        }
        int iMin = Math.min(512, arrayList.size());
        for (int i3 = 0; i3 < iMin && ((Number) arrayList.get(i3)).intValue() < iIndexOf$default; i3++) {
            int i4 = 0;
            int i5 = i3;
            while (i5 < arrayList.size() && i4 < string.length()) {
                Object obj2 = arrayList.get(i5);
                Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                if (raw.charAt(((Number) obj2).intValue()) != string.charAt(i4)) {
                    break;
                }
                i5++;
                i4++;
            }
            if (i4 == string.length()) {
                int iIntValue = ((Number) arrayList.get(i5 - 1)).intValue();
                do {
                    iIntValue++;
                    if (iIntValue >= raw.length() || raw.charAt(iIntValue) == '\n') {
                        break;
                    }
                } while (TranscriptCleaner.INSTANCE.isNoise$app_release(raw.charAt(iIntValue)));
                return (iIntValue >= raw.length() || raw.charAt(iIntValue) != '\n') ? iIntValue >= raw.length() ? EchoMatch.Partial.INSTANCE : EchoMatch.None.INSTANCE : new EchoMatch.Complete(iIntValue + 1);
            }
            if (i5 == arrayList.size() && i4 > 0) {
                return EchoMatch.Partial.INSTANCE;
            }
        }
        return EchoMatch.None.INSTANCE;
    }
}
