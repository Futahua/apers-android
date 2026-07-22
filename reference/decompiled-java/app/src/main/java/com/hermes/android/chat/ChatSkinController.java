package com.hermes.android.chat;

import androidx.compose.runtime.ComposerKt;
import com.hermes.android.chat.ChatSkinState;
import com.hermes.android.data.HermesHudRepository;
import com.termux.terminal.TerminalBuffer;
import com.termux.terminal.TerminalEmulator;
import com.termux.terminal.TerminalSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: ChatSkinController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000f¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u001d\u0010.\u001a\u00020\u001c2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001f00H\u0082\bJ\u0010\u00101\u001a\u00020,2\u0006\u00102\u001a\u00020\u0007H\u0002J\u000e\u00103\u001a\u00020,2\u0006\u00104\u001a\u00020\u0007J\u0010\u00105\u001a\u00020,2\b\u00106\u001a\u0004\u0018\u00010\u0007J\u0006\u00108\u001a\u00020,J\b\u00109\u001a\u00020,H\u0002J\b\u0010:\u001a\u00020,H\u0002J\u0010\u0010;\u001a\u00020,2\u0006\u0010<\u001a\u00020=H\u0002J\b\u0010>\u001a\u00020,H\u0002J\f\u0010?\u001a\u00020@*\u00020AH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0!¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Lcom/hermes/android/chat/ChatSkinController;", "", "terminal", "Lcom/termux/terminal/TerminalSession;", "hudRepo", "Lcom/hermes/android/data/HermesHudRepository;", "sessionId", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "minSessionStartSec", "", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "debounceMs", "", "settlePollIntervalMs", "settleTimeoutMs", "settleSlowPollIntervalMs", "settleMaxSlowPollMs", "settleNoEvidenceGiveUpMs", "previewThrottleMs", "<init>", "(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Double;Lkotlinx/coroutines/CoroutineDispatcher;JJJJJJJ)V", "Ljava/lang/Double;", "turnStartEpochMs", "Ljava/lang/Long;", "turnSawMidTurn", "", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/chat/ChatSkinState;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "detector", "Lcom/hermes/android/chat/TurnDetector;", "settleJob", "Lkotlinx/coroutines/Job;", "initJob", "previewJob", "previewScheduled", "onTerminalChanged", "", "loadHistory", "applyInitResult", "transform", "Lkotlin/Function1;", "armSettleWatch", "sid", "sendMessage", "text", "updateSessionId", "id", "disposed", "dispose", "onLivePreviewTick", "onDebounceCandidate", "endTurnSettled", "result", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;", "endTurnFrozen", "toBubble", "Lcom/hermes/android/chat/ChatBubble;", "Lcom/hermes/android/data/HermesHudRepository$ChatMessage;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ChatSkinController {
    public static final int $stable = 8;
    private final MutableStateFlow<ChatSkinState> _state;
    private final TurnDetector detector;
    private volatile boolean disposed;
    private final HermesHudRepository hudRepo;
    private Job initJob;
    private final CoroutineDispatcher io;
    private final Double minSessionStartSec;
    private Job previewJob;
    private boolean previewScheduled;
    private final long previewThrottleMs;
    private final CoroutineScope scope;
    private volatile String sessionId;
    private Job settleJob;
    private final long settleMaxSlowPollMs;
    private final long settleNoEvidenceGiveUpMs;
    private final long settlePollIntervalMs;
    private final long settleSlowPollIntervalMs;
    private final long settleTimeoutMs;
    private final StateFlow<ChatSkinState> state;
    private final TerminalSession terminal;
    private volatile boolean turnSawMidTurn;
    private volatile Long turnStartEpochMs;

    public ChatSkinController(TerminalSession terminalSession, HermesHudRepository hermesHudRepository, String str, CoroutineScope coroutineScope, Double d, CoroutineDispatcher coroutineDispatcher, long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        Intrinsics.checkNotNullParameter(terminalSession, "terminal");
        Intrinsics.checkNotNullParameter(hermesHudRepository, "hudRepo");
        Intrinsics.checkNotNullParameter(coroutineScope, "scope");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "io");
        this.terminal = terminalSession;
        this.hudRepo = hermesHudRepository;
        this.scope = coroutineScope;
        this.minSessionStartSec = d;
        this.io = coroutineDispatcher;
        this.settlePollIntervalMs = j2;
        this.settleTimeoutMs = j3;
        this.settleSlowPollIntervalMs = j4;
        this.settleMaxSlowPollMs = j5;
        this.settleNoEvidenceGiveUpMs = j6;
        this.previewThrottleMs = j7;
        this.sessionId = str;
        MutableStateFlow<ChatSkinState> MutableStateFlow = StateFlowKt.MutableStateFlow(new ChatSkinState(null, null, null, 7, null));
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        TurnDetector turnDetector = new TurnDetector(new Function0() { // from class: com.hermes.android.chat.ChatSkinController$$ExternalSyntheticLambda0
            public final Object invoke() {
                return ChatSkinController.detector$lambda$0(this.f$0);
            }
        }, j, coroutineScope);
        this.detector = turnDetector;
        turnDetector.setOnChunk(new Function1() { // from class: com.hermes.android.chat.ChatSkinController$$ExternalSyntheticLambda1
            public final Object invoke(Object obj) {
                return ChatSkinController._init_$lambda$1(this.f$0, (String) obj);
            }
        });
        turnDetector.setOnTurnEnd(new Function0() { // from class: com.hermes.android.chat.ChatSkinController$$ExternalSyntheticLambda2
            public final Object invoke() {
                return ChatSkinController._init_$lambda$2(this.f$0);
            }
        });
    }

    public /* synthetic */ ChatSkinController(TerminalSession terminalSession, HermesHudRepository hermesHudRepository, String str, CoroutineScope coroutineScope, Double d, CoroutineDispatcher coroutineDispatcher, long j, long j2, long j3, long j4, long j5, long j6, long j7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(terminalSession, hermesHudRepository, str, coroutineScope, (i & 16) != 0 ? null : d, (i & 32) != 0 ? Dispatchers.getIO() : coroutineDispatcher, (i & 64) != 0 ? 500L : j, (i & 128) != 0 ? 120L : j2, (i & 256) != 0 ? 3000L : j3, (i & 512) != 0 ? 1000L : j4, (i & 1024) != 0 ? 600000L : j5, (i & 2048) != 0 ? 60000L : j6, (i & 4096) != 0 ? 80L : j7);
    }

    public final StateFlow<ChatSkinState> getState() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String detector$lambda$0(ChatSkinController chatSkinController) {
        TerminalBuffer screen;
        TerminalEmulator emulator = chatSkinController.terminal.getEmulator();
        if (emulator == null || (screen = emulator.getScreen()) == null) {
            return null;
        }
        return screen.getTranscriptText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(ChatSkinController chatSkinController, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        chatSkinController.onLivePreviewTick();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$2(ChatSkinController chatSkinController) {
        chatSkinController.onDebounceCandidate();
        return Unit.INSTANCE;
    }

    public final void onTerminalChanged() {
        if (this.disposed) {
            return;
        }
        this.detector.onTerminalChanged();
    }

    public final void loadHistory() {
        ChatSkinState.Phase phase;
        Object value;
        if (this.disposed || (phase = ((ChatSkinState) this._state.getValue()).getPhase()) == ChatSkinState.Phase.SENDING || phase == ChatSkinState.Phase.WAITING_RESPONSE) {
            return;
        }
        MutableStateFlow<ChatSkinState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, ChatSkinState.copy$default((ChatSkinState) value, null, null, ChatSkinState.Phase.INITIALIZING, 3, null)));
        Job job = this.initJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.initJob = BuildersKt.launch$default(this.scope, this.io, (CoroutineStart) null, new AnonymousClass2(null), 2, (Object) null);
    }

    /* JADX INFO: renamed from: com.hermes.android.chat.ChatSkinController$loadHistory$2, reason: invalid class name */
    /* JADX INFO: compiled from: ChatSkinController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.chat.ChatSkinController$loadHistory$2", f = "ChatSkinController.kt", i = {0, 0, 2, 2, 2, 2}, l = {133, 144, 152, 159}, m = "invokeSuspend", n = {"maxTries", "tries", "sid", "check", "maxTries", "tries"}, s = {"I$0", "I$1", "L$0", "L$1", "I$0", "I$1"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatSkinController.this.new AnonymousClass2(continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Path cross not found for [B:31:0x00ba, B:34:0x00c6], limit reached: 64 */
        /* JADX WARN: Path cross not found for [B:34:0x00c6, B:31:0x00ba], limit reached: 64 */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0086 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x010c A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0145  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x017d  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x019e A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x009b -> B:25:0x009e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0128 -> B:49:0x0129). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            HermesHudRepository.SessionResolution sessionResolutionResolveNewestSession;
            int i;
            int i2;
            HermesHudRepository.SessionResolution.Found found;
            String id;
            String str;
            int i3;
            Ref.ObjectRef objectRef;
            ArrayList arrayList;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.label;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int iCoerceAtLeast = RangesKt.coerceAtLeast((int) (ChatSkinController.this.settleTimeoutMs / ChatSkinController.this.settlePollIntervalMs), 1);
                String str2 = ChatSkinController.this.sessionId;
                if (str2 == null) {
                    sessionResolutionResolveNewestSession = ChatSkinController.this.hudRepo.resolveNewestSession(ChatSkinController.this.minSessionStartSec);
                } else {
                    sessionResolutionResolveNewestSession = new HermesHudRepository.SessionResolution.Found(str2);
                }
                i = iCoerceAtLeast;
                i2 = 1;
                if (!Intrinsics.areEqual(sessionResolutionResolveNewestSession, HermesHudRepository.SessionResolution.Unavailable.INSTANCE)) {
                }
                if (sessionResolutionResolveNewestSession instanceof HermesHudRepository.SessionResolution.Found) {
                }
                if (found != null) {
                }
                id = null;
                if (id == null) {
                }
            } else {
                if (i4 != 1) {
                    if (i4 == 2) {
                        ResultKt.throwOnFailure(obj);
                        return Unit.INSTANCE;
                    }
                    if (i4 != 3) {
                        if (i4 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        return Unit.INSTANCE;
                    }
                    i3 = this.I$1;
                    i = this.I$0;
                    Ref.ObjectRef objectRef2 = (Ref.ObjectRef) this.L$1;
                    String str3 = (String) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    objectRef = objectRef2;
                    String str4 = str3;
                    str = str4;
                    objectRef.element = HermesHudRepository.settleCheck$default(ChatSkinController.this.hudRepo, str, 0.0d, 0, 4, (Object) null);
                    i3++;
                    if (!Intrinsics.areEqual(objectRef.element, HermesHudRepository.TurnSettle.Unavailable.INSTANCE) && i3 < i) {
                        this.L$0 = str;
                        this.L$1 = objectRef;
                        this.I$0 = i;
                        this.I$1 = i3;
                        this.label = 3;
                        if (DelayKt.delay(ChatSkinController.this.settlePollIntervalMs, (Continuation) this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        str4 = str;
                        str = str4;
                        objectRef.element = HermesHudRepository.settleCheck$default(ChatSkinController.this.hudRepo, str, 0.0d, 0, 4, (Object) null);
                        i3++;
                        if (!Intrinsics.areEqual(objectRef.element, HermesHudRepository.TurnSettle.Unavailable.INSTANCE)) {
                        }
                        if (objectRef.element instanceof HermesHudRepository.TurnSettle.MidTurn) {
                        }
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 4;
                        if (BuildersKt.withContext(Dispatchers.getMain(), new C00242(objectRef, ChatSkinController.this, str, arrayList, null), (Continuation) this) == coroutine_suspended) {
                        }
                        return Unit.INSTANCE;
                    }
                    if (objectRef.element instanceof HermesHudRepository.TurnSettle.MidTurn) {
                        List listChatMessages$default = HermesHudRepository.chatMessages$default(ChatSkinController.this.hudRepo, str, 0, 2, (Object) null);
                        ChatSkinController chatSkinController = ChatSkinController.this;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listChatMessages$default, 10));
                        Iterator it = listChatMessages$default.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(chatSkinController.toBubble((HermesHudRepository.ChatMessage) it.next()));
                        }
                        arrayList = arrayList2;
                    } else {
                        arrayList = null;
                    }
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 4;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new C00242(objectRef, ChatSkinController.this, str, arrayList, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                i2 = this.I$1;
                i = this.I$0;
                ResultKt.throwOnFailure(obj);
                sessionResolutionResolveNewestSession = ChatSkinController.this.hudRepo.resolveNewestSession(ChatSkinController.this.minSessionStartSec);
                i2++;
                if (!Intrinsics.areEqual(sessionResolutionResolveNewestSession, HermesHudRepository.SessionResolution.Unavailable.INSTANCE) && i2 < i) {
                    this.I$0 = i;
                    this.I$1 = i2;
                    this.label = 1;
                    if (DelayKt.delay(ChatSkinController.this.settlePollIntervalMs, (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    sessionResolutionResolveNewestSession = ChatSkinController.this.hudRepo.resolveNewestSession(ChatSkinController.this.minSessionStartSec);
                    i2++;
                    if (!Intrinsics.areEqual(sessionResolutionResolveNewestSession, HermesHudRepository.SessionResolution.Unavailable.INSTANCE)) {
                    }
                    if (sessionResolutionResolveNewestSession instanceof HermesHudRepository.SessionResolution.Found) {
                    }
                    if (found != null) {
                    }
                    id = null;
                    if (id == null) {
                    }
                } else {
                    found = sessionResolutionResolveNewestSession instanceof HermesHudRepository.SessionResolution.Found ? (HermesHudRepository.SessionResolution.Found) sessionResolutionResolveNewestSession : null;
                    if (found != null || (id = found.getId()) == null) {
                        id = null;
                    } else {
                        ChatSkinController.this.sessionId = id;
                    }
                    if (id == null) {
                        this.label = 2;
                        if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass1(ChatSkinController.this, null), (Continuation) this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                    objectRef3.element = HermesHudRepository.settleCheck$default(ChatSkinController.this.hudRepo, id, 0.0d, 0, 4, (Object) null);
                    str = id;
                    i3 = 1;
                    objectRef = objectRef3;
                    if (!Intrinsics.areEqual(objectRef.element, HermesHudRepository.TurnSettle.Unavailable.INSTANCE)) {
                    }
                    if (objectRef.element instanceof HermesHudRepository.TurnSettle.MidTurn) {
                    }
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 4;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new C00242(objectRef, ChatSkinController.this, str, arrayList, null), (Continuation) this) == coroutine_suspended) {
                    }
                    return Unit.INSTANCE;
                }
            }
        }

        /* JADX INFO: renamed from: com.hermes.android.chat.ChatSkinController$loadHistory$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: ChatSkinController.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.hermes.android.chat.ChatSkinController$loadHistory$2$1", f = "ChatSkinController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
            int label;
            final /* synthetic */ ChatSkinController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(ChatSkinController chatSkinController, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = chatSkinController;
            }

            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
                return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
            }

            public final Object invokeSuspend(Object obj) {
                Object value;
                boolean z;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    ChatSkinController chatSkinController = this.this$0;
                    if (InitApplyGate.INSTANCE.canApply(chatSkinController.disposed, ((ChatSkinState) chatSkinController._state.getValue()).getPhase())) {
                        MutableStateFlow mutableStateFlow = chatSkinController._state;
                        do {
                            value = mutableStateFlow.getValue();
                        } while (!mutableStateFlow.compareAndSet(value, ((ChatSkinState) value).withHistory(CollectionsKt.emptyList())));
                        z = true;
                    } else {
                        z = false;
                    }
                    return Boxing.boxBoolean(z);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: com.hermes.android.chat.ChatSkinController$loadHistory$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: ChatSkinController.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.hermes.android.chat.ChatSkinController$loadHistory$2$2", f = "ChatSkinController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00242 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Ref.ObjectRef<HermesHudRepository.TurnSettle> $check;
            final /* synthetic */ List<ChatBubble> $midTurnBubbles;
            final /* synthetic */ String $sid;
            int label;
            final /* synthetic */ ChatSkinController this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00242(Ref.ObjectRef<HermesHudRepository.TurnSettle> objectRef, ChatSkinController chatSkinController, String str, List<ChatBubble> list, Continuation<? super C00242> continuation) {
                super(2, continuation);
                this.$check = objectRef;
                this.this$0 = chatSkinController;
                this.$sid = str;
                this.$midTurnBubbles = list;
            }

            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00242(this.$check, this.this$0, this.$sid, this.$midTurnBubbles, continuation);
            }

            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
            public final Object invokeSuspend(Object obj) throws NoWhenBranchMatchedException {
                Object value;
                ChatSkinState chatSkinState;
                Object value2;
                Object value3;
                Object value4;
                ChatSkinState chatSkinState2;
                ArrayList arrayList;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                HermesHudRepository.TurnSettle turnSettle = (HermesHudRepository.TurnSettle) this.$check.element;
                boolean z = true;
                if (turnSettle instanceof HermesHudRepository.TurnSettle.Settled) {
                    ChatSkinController chatSkinController = this.this$0;
                    Ref.ObjectRef<HermesHudRepository.TurnSettle> objectRef = this.$check;
                    if (InitApplyGate.INSTANCE.canApply(chatSkinController.disposed, ((ChatSkinState) chatSkinController._state.getValue()).getPhase())) {
                        MutableStateFlow mutableStateFlow = chatSkinController._state;
                        do {
                            value4 = mutableStateFlow.getValue();
                            chatSkinState2 = (ChatSkinState) value4;
                            List messages = ((HermesHudRepository.TurnSettle.Settled) objectRef.element).getMessages();
                            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(messages, 10));
                            Iterator it = messages.iterator();
                            while (it.hasNext()) {
                                arrayList.add(chatSkinController.toBubble((HermesHudRepository.ChatMessage) it.next()));
                            }
                        } while (!mutableStateFlow.compareAndSet(value4, chatSkinState2.withHistory(arrayList)));
                    } else {
                        z = false;
                    }
                    Boxing.boxBoolean(z);
                } else if (Intrinsics.areEqual(turnSettle, HermesHudRepository.TurnSettle.MidTurn.INSTANCE)) {
                    ChatSkinController chatSkinController2 = this.this$0;
                    List<ChatBubble> list = this.$midTurnBubbles;
                    if (InitApplyGate.INSTANCE.canApply(chatSkinController2.disposed, ((ChatSkinState) chatSkinController2._state.getValue()).getPhase())) {
                        MutableStateFlow mutableStateFlow2 = chatSkinController2._state;
                        do {
                            value3 = mutableStateFlow2.getValue();
                        } while (!mutableStateFlow2.compareAndSet(value3, ((ChatSkinState) value3).withHistoryTurnInFlight(list == null ? CollectionsKt.emptyList() : list)));
                        this.this$0.armSettleWatch(this.$sid);
                    }
                } else if (Intrinsics.areEqual(turnSettle, HermesHudRepository.TurnSettle.Stale.INSTANCE)) {
                    ChatSkinController chatSkinController3 = this.this$0;
                    if (InitApplyGate.INSTANCE.canApply(chatSkinController3.disposed, ((ChatSkinState) chatSkinController3._state.getValue()).getPhase())) {
                        MutableStateFlow mutableStateFlow3 = chatSkinController3._state;
                        do {
                            value2 = mutableStateFlow3.getValue();
                        } while (!mutableStateFlow3.compareAndSet(value2, ((ChatSkinState) value2).withHistory(CollectionsKt.emptyList())));
                    } else {
                        z = false;
                    }
                    Boxing.boxBoolean(z);
                } else {
                    if (!Intrinsics.areEqual(turnSettle, HermesHudRepository.TurnSettle.Unavailable.INSTANCE)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    ChatSkinController chatSkinController4 = this.this$0;
                    if (InitApplyGate.INSTANCE.canApply(chatSkinController4.disposed, ((ChatSkinState) chatSkinController4._state.getValue()).getPhase())) {
                        MutableStateFlow mutableStateFlow4 = chatSkinController4._state;
                        do {
                            value = mutableStateFlow4.getValue();
                            chatSkinState = (ChatSkinState) value;
                        } while (!mutableStateFlow4.compareAndSet(value, chatSkinState.withHistoryTurnInFlight(chatSkinState.getHistory())));
                        this.this$0.armSettleWatch(this.$sid);
                    }
                }
                return Unit.INSTANCE;
            }
        }
    }

    private final boolean applyInitResult(Function1<? super ChatSkinState, ChatSkinState> transform) {
        Object value;
        if (!InitApplyGate.INSTANCE.canApply(this.disposed, ((ChatSkinState) this._state.getValue()).getPhase())) {
            return false;
        }
        MutableStateFlow mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, transform.invoke(value)));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void armSettleWatch(String sid) {
        if (this.disposed) {
            return;
        }
        Job job = this.settleJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.settleJob = BuildersKt.launch$default(this.scope, (CoroutineContext) null, (CoroutineStart) null, new AnonymousClass1(sid, null), 3, (Object) null);
    }

    /* JADX INFO: renamed from: com.hermes.android.chat.ChatSkinController$armSettleWatch$1, reason: invalid class name */
    /* JADX INFO: compiled from: ChatSkinController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.chat.ChatSkinController$armSettleWatch$1", f = "ChatSkinController.kt", i = {0, 1}, l = {ComposerKt.referenceKey, ComposerKt.reuseKey}, m = "invokeSuspend", n = {"startMs", "startMs"}, s = {"J$0", "J$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $sid;
        long J$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$sid = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatSkinController.this.new AnonymousClass1(this.$sid, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x006d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x006b -> B:19:0x006e). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            long jCurrentTimeMillis;
            HermesHudRepository.TurnSettle.Settled settled;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                jCurrentTimeMillis = System.currentTimeMillis();
                if (System.currentTimeMillis() - jCurrentTimeMillis >= ChatSkinController.this.settleMaxSlowPollMs) {
                }
            } else if (i == 1) {
                jCurrentTimeMillis = this.J$0;
                ResultKt.throwOnFailure(obj);
                this.J$0 = jCurrentTimeMillis;
                this.label = 2;
                obj = BuildersKt.withContext(ChatSkinController.this.io, new ChatSkinController$armSettleWatch$1$result$1(ChatSkinController.this, this.$sid, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                }
                settled = (HermesHudRepository.TurnSettle) obj;
                if (settled instanceof HermesHudRepository.TurnSettle.Settled) {
                }
                if (System.currentTimeMillis() - jCurrentTimeMillis >= ChatSkinController.this.settleMaxSlowPollMs) {
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                jCurrentTimeMillis = this.J$0;
                ResultKt.throwOnFailure(obj);
                settled = (HermesHudRepository.TurnSettle) obj;
                if (settled instanceof HermesHudRepository.TurnSettle.Settled) {
                    ChatSkinController.this.endTurnSettled(settled);
                    return Unit.INSTANCE;
                }
                if (System.currentTimeMillis() - jCurrentTimeMillis >= ChatSkinController.this.settleMaxSlowPollMs) {
                    this.J$0 = jCurrentTimeMillis;
                    this.label = 1;
                    if (DelayKt.delay(ChatSkinController.this.settleSlowPollIntervalMs, (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.J$0 = jCurrentTimeMillis;
                    this.label = 2;
                    obj = BuildersKt.withContext(ChatSkinController.this.io, new ChatSkinController$armSettleWatch$1$result$1(ChatSkinController.this, this.$sid, null), (Continuation) this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    settled = (HermesHudRepository.TurnSettle) obj;
                    if (settled instanceof HermesHudRepository.TurnSettle.Settled) {
                    }
                    if (System.currentTimeMillis() - jCurrentTimeMillis >= ChatSkinController.this.settleMaxSlowPollMs) {
                        ChatSkinController.this.endTurnFrozen();
                        return Unit.INSTANCE;
                    }
                }
            }
        }
    }

    public final void sendMessage(String text) {
        Object value;
        Intrinsics.checkNotNullParameter(text, "text");
        if (this.disposed || text.length() == 0 || ((ChatSkinState) this._state.getValue()).getPhase() != ChatSkinState.Phase.IDLE) {
            return;
        }
        Job job = this.settleJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.turnStartEpochMs = Long.valueOf(System.currentTimeMillis());
        this.turnSawMidTurn = false;
        MutableStateFlow<ChatSkinState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, ((ChatSkinState) value).onUserSend(text)));
        this.detector.markTurnStart(text);
        this.terminal.write(text + "\r");
    }

    public final void updateSessionId(String id) {
        this.sessionId = id;
    }

    public final void dispose() {
        this.disposed = true;
        this.detector.cancel();
        Job job = this.initJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        Job job2 = this.settleJob;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        Job job3 = this.previewJob;
        if (job3 != null) {
            Job.DefaultImpls.cancel$default(job3, (CancellationException) null, 1, (Object) null);
        }
        this.previewScheduled = false;
    }

    private final void onLivePreviewTick() {
        if (this.turnStartEpochMs == null || this.previewScheduled) {
            return;
        }
        this.previewScheduled = true;
        this.previewJob = BuildersKt.launch$default(this.scope, (CoroutineContext) null, (CoroutineStart) null, new C01211(null), 3, (Object) null);
    }

    /* JADX INFO: renamed from: com.hermes.android.chat.ChatSkinController$onLivePreviewTick$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatSkinController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.chat.ChatSkinController$onLivePreviewTick$1", f = "ChatSkinController.kt", i = {}, l = {270}, m = "invokeSuspend", n = {}, s = {})
    static final class C01211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C01211(Continuation<? super C01211> continuation) {
            super(2, continuation);
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatSkinController.this.new C01211(continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(ChatSkinController.this.previewThrottleMs, (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ChatSkinController.this.previewScheduled = false;
            String strCurrentTurnText = ChatSkinController.this.detector.currentTurnText();
            MutableStateFlow mutableStateFlow = ChatSkinController.this._state;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value, ((ChatSkinState) value).onLivePreview(strCurrentTurnText)));
            return Unit.INSTANCE;
        }
    }

    private final void onDebounceCandidate() {
        Job job = this.settleJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        Long l = this.turnStartEpochMs;
        if (l != null) {
            this.settleJob = BuildersKt.launch$default(this.scope, (CoroutineContext) null, (CoroutineStart) null, new C01201(l.longValue(), this, null), 3, (Object) null);
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.chat.ChatSkinController$onDebounceCandidate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatSkinController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.chat.ChatSkinController$onDebounceCandidate$1", f = "ChatSkinController.kt", i = {0, 0, 0, 1, 1, 1, 2, 2}, l = {317, 325, 332}, m = "invokeSuspend", n = {"sid", "sinceSec", "elapsed", "sid", "sinceSec", "elapsed", "sid", "sinceSec"}, s = {"L$0", "D$0", "J$0", "L$0", "D$0", "J$0", "L$0", "D$0"})
    static final class C01201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $turnStartMs;
        double D$0;
        long J$0;
        Object L$0;
        int label;
        final /* synthetic */ ChatSkinController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01201(long j, ChatSkinController chatSkinController, Continuation<? super C01201> continuation) {
            super(2, continuation);
            this.$turnStartMs = j;
            this.this$0 = chatSkinController;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01201(this.$turnStartMs, this.this$0, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00cb  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0137 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0138  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0138 -> B:41:0x0139). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Ref.ObjectRef objectRef;
            double d;
            long jCurrentTimeMillis;
            long j;
            Object objWithContext;
            HermesHudRepository.TurnSettle.Settled settled;
            Object objWithContext2;
            HermesHudRepository.SessionResolution.Found found;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            int i2 = 2;
            boolean z = true;
            z = true;
            z = true;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                objectRef = new Ref.ObjectRef();
                objectRef.element = this.this$0.sessionId;
                d = this.$turnStartMs / 1000.0d;
                jCurrentTimeMillis = System.currentTimeMillis() - this.$turnStartMs;
                if (!ChatTurnSettleWait.INSTANCE.shouldKeepWaiting(jCurrentTimeMillis, this.this$0.turnSawMidTurn, this.this$0.settleNoEvidenceGiveUpMs, this.this$0.settleMaxSlowPollMs)) {
                }
            } else if (i == 1) {
                jCurrentTimeMillis = this.J$0;
                d = this.D$0;
                objectRef = (Ref.ObjectRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                objWithContext2 = obj;
                found = (HermesHudRepository.SessionResolution) objWithContext2;
                if (found instanceof HermesHudRepository.SessionResolution.Found) {
                }
                if (objectRef.element != null) {
                }
                double d2 = d;
                j = jCurrentTimeMillis;
                this.L$0 = objectRef;
                this.D$0 = d2;
                this.label = 3;
                if (DelayKt.delay(ChatTurnSettleWait.INSTANCE.pollInterval(j, this.this$0.settleTimeoutMs, this.this$0.settlePollIntervalMs, this.this$0.settleSlowPollIntervalMs), (Continuation) this) != coroutine_suspended) {
                }
            } else if (i == 2) {
                jCurrentTimeMillis = this.J$0;
                d = this.D$0;
                objectRef = (Ref.ObjectRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                objWithContext = obj;
                settled = (HermesHudRepository.TurnSettle) objWithContext;
                if (settled instanceof HermesHudRepository.TurnSettle.Settled) {
                }
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                double d3 = this.D$0;
                objectRef = (Ref.ObjectRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                d = d3;
                i2 = 2;
                z = true;
                jCurrentTimeMillis = System.currentTimeMillis() - this.$turnStartMs;
                if (!ChatTurnSettleWait.INSTANCE.shouldKeepWaiting(jCurrentTimeMillis, this.this$0.turnSawMidTurn, this.this$0.settleNoEvidenceGiveUpMs, this.this$0.settleMaxSlowPollMs)) {
                    if (objectRef.element == null) {
                        this.L$0 = objectRef;
                        this.D$0 = d;
                        this.J$0 = jCurrentTimeMillis;
                        this.label = z ? 1 : 0;
                        objWithContext2 = BuildersKt.withContext(this.this$0.io, new ChatSkinController$onDebounceCandidate$1$r$1(this.this$0, null), (Continuation) this);
                        if (objWithContext2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        found = (HermesHudRepository.SessionResolution) objWithContext2;
                        if (found instanceof HermesHudRepository.SessionResolution.Found) {
                            HermesHudRepository.SessionResolution.Found found2 = found;
                            objectRef.element = found2.getId();
                            this.this$0.sessionId = found2.getId();
                        }
                    }
                    if (objectRef.element != null) {
                        this.L$0 = objectRef;
                        this.D$0 = d;
                        this.J$0 = jCurrentTimeMillis;
                        this.label = i2;
                        objWithContext = BuildersKt.withContext(this.this$0.io, new ChatSkinController$onDebounceCandidate$1$result$1(this.this$0, objectRef, d, null), (Continuation) this);
                        if (objWithContext == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        settled = (HermesHudRepository.TurnSettle) objWithContext;
                        if (settled instanceof HermesHudRepository.TurnSettle.Settled) {
                            this.this$0.endTurnSettled(settled);
                            return Unit.INSTANCE;
                        }
                        if (settled instanceof HermesHudRepository.TurnSettle.MidTurn) {
                            this.this$0.turnSawMidTurn = z;
                        }
                    }
                    double d22 = d;
                    j = jCurrentTimeMillis;
                    this.L$0 = objectRef;
                    this.D$0 = d22;
                    this.label = 3;
                    if (DelayKt.delay(ChatTurnSettleWait.INSTANCE.pollInterval(j, this.this$0.settleTimeoutMs, this.this$0.settlePollIntervalMs, this.this$0.settleSlowPollIntervalMs), (Continuation) this) != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    d = d22;
                    i2 = 2;
                    z = true;
                    jCurrentTimeMillis = System.currentTimeMillis() - this.$turnStartMs;
                    if (!ChatTurnSettleWait.INSTANCE.shouldKeepWaiting(jCurrentTimeMillis, this.this$0.turnSawMidTurn, this.this$0.settleNoEvidenceGiveUpMs, this.this$0.settleMaxSlowPollMs)) {
                        this.this$0.endTurnFrozen();
                        return Unit.INSTANCE;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endTurnSettled(HermesHudRepository.TurnSettle.Settled result) {
        Object value;
        ChatSkinState chatSkinState;
        ArrayList arrayList;
        this.turnStartEpochMs = null;
        MutableStateFlow<ChatSkinState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
            chatSkinState = (ChatSkinState) value;
            List messages = result.getMessages();
            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(messages, 10));
            Iterator it = messages.iterator();
            while (it.hasNext()) {
                arrayList.add(toBubble((HermesHudRepository.ChatMessage) it.next()));
            }
        } while (!mutableStateFlow.compareAndSet(value, chatSkinState.onTurnEnd(arrayList)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endTurnFrozen() {
        Object value;
        this.turnStartEpochMs = null;
        MutableStateFlow<ChatSkinState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, ((ChatSkinState) value).freezeLiveIntoHistory()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChatBubble toBubble(HermesHudRepository.ChatMessage chatMessage) {
        return ChatSkinBubbleMapper.INSTANCE.toBubble(chatMessage.getRole(), chatMessage.getContent(), chatMessage.getToolName());
    }
}
