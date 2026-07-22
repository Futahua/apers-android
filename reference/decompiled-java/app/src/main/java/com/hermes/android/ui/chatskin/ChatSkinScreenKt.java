package com.hermes.android.ui.chatskin;

import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.SendKt;
import androidx.compose.material.icons.filled.BuildKt;
import androidx.compose.material.icons.filled.ImageKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import com.hermes.android.chat.BubbleRole;
import com.hermes.android.chat.ChatBubble;
import com.hermes.android.chat.ChatSkinState;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: compiled from: ChatSkinScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a_\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00112\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007¢\u0006\u0002\u0010\u0017\u001a\u001e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010\u001d\u001a%\u0010\u001e\u001a\u00020\n2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0003¢\u0006\u0002\u0010 \u001a\u0015\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#H\u0003¢\u0006\u0002\u0010$\u001a/\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020*H\u0003¢\u0006\u0004\b+\u0010,\u001a\u0015\u0010-\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#H\u0003¢\u0006\u0002\u0010$\u001a\u0017\u0010.\u001a\u00020\n2\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0003¢\u0006\u0002\u0010/\u001aC\u00100\u001a\u00020\n2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u000e2\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0011H\u0003¢\u0006\u0002\u00105\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002¨\u00066²\u0006\n\u00107\u001a\u000202X\u008a\u0084\u0002²\u0006\n\u00108\u001a\u000202X\u008a\u008e\u0002²\u0006\n\u00109\u001a\u00020\u001cX\u008a\u008e\u0002²\u0006\n\u0010:\u001a\u000202X\u008a\u008e\u0002²\u0006\n\u0010;\u001a\u00020\u000fX\u008a\u008e\u0002"}, d2 = {"UserBubble", "Landroidx/compose/ui/graphics/Color;", "J", "AssistantBubble", "ToolCard", "TextPrimary", "TextSecondary", "TextMuted", "Border", "ChatSkinScreen", BuildConfig.FLAVOR, "state", "Lcom/hermes/android/chat/ChatSkinState;", "onSend", "Lkotlin/Function1;", BuildConfig.FLAVOR, "onSwitchToTerminal", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "onAttachImage", "sessionKey", BuildConfig.FLAVOR, "(Lcom/hermes/android/chat/ChatSkinState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Landroidx/compose/runtime/Composer;II)V", "snapToLatest", "listState", "Landroidx/compose/foundation/lazy/LazyListState;", "lastIndex", BuildConfig.FLAVOR, "(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "JumpToLatestButton", "onClick", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "BubbleRow", "b", "Lcom/hermes/android/chat/ChatBubble;", "(Lcom/hermes/android/chat/ChatBubble;Landroidx/compose/runtime/Composer;I)V", "AlignedBubble", "content", "bg", "fg", "align", "Landroidx/compose/ui/Alignment$Horizontal;", "AlignedBubble-RIQooxk", "(Ljava/lang/String;JJLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)V", "ToolCardRow", "EmptyState", "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "InputBar", "enabled", BuildConfig.FLAVOR, "phase", "Lcom/hermes/android/chat/ChatSkinState$Phase;", "(ZLcom/hermes/android/chat/ChatSkinState$Phase;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "app_release", "atBottomByGeometry", "userAtBottom", "programmaticDepth", "expanded", "text"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ChatSkinScreenKt {
    private static final long UserBubble = ColorKt.Color(4280640491L);
    private static final long AssistantBubble = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long ToolCard = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long TextPrimary = Color.Companion.getWhite-0d7_KjU();
    private static final long TextSecondary = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.7f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long TextMuted = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
    private static final long Border = Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.2f, 0.0f, 0.0f, 0.0f, 14, (Object) null);

    /* JADX INFO: compiled from: ChatSkinScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BubbleRole.values().length];
            try {
                iArr[BubbleRole.USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BubbleRole.ASSISTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BubbleRole.TOOL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BubbleRole.SYSTEM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.chatskin.ChatSkinScreenKt$snapToLatest$1, reason: invalid class name */
    /* JADX INFO: compiled from: ChatSkinScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.chatskin.ChatSkinScreenKt", f = "ChatSkinScreen.kt", i = {0, 0}, l = {213, 220}, m = "snapToLatest", n = {"listState", "lastIndex"}, s = {"L$0", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChatSkinScreenKt.snapToLatest(null, 0, (Continuation) this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AlignedBubble_RIQooxk$lambda$27(String str, long j, long j2, Alignment.Horizontal horizontal, int i, Composer composer, int i2) {
        m73AlignedBubbleRIQooxk(str, j, j2, horizontal, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public static final Unit BubbleRow$lambda$25(ChatBubble chatBubble, int i, Composer composer, int i2) throws NoWhenBranchMatchedException {
        BubbleRow(chatBubble, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ChatSkinScreen$lambda$23(ChatSkinState chatSkinState, Function1 function1, Function0 function0, Modifier modifier, Function0 function02, Object obj, int i, int i2, Composer composer, int i3) {
        ChatSkinScreen(chatSkinState, function1, function0, modifier, function02, obj, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit EmptyState$lambda$36(Modifier modifier, int i, int i2, Composer composer, int i3) {
        EmptyState(modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit InputBar$lambda$45(boolean z, ChatSkinState.Phase phase, Function1 function1, Function0 function0, int i, int i2, Composer composer, int i3) {
        InputBar(z, phase, function1, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit JumpToLatestButton$lambda$24(Function0 function0, Modifier modifier, int i, int i2, Composer composer, int i3) {
        JumpToLatestButton(function0, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ToolCardRow$lambda$34(ChatBubble chatBubble, int i, Composer composer, int i2) {
        ToolCardRow(chatBubble, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v37 ??, still in use, count: 1, list:
          (r5v37 ?? I:java.lang.Object) from 0x065e: INVOKE (r7v0 ?? I:androidx.compose.runtime.Composer), (r5v37 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void (LINE:573)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    public static final void ChatSkinScreen(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v37 ??, still in use, count: 1, list:
          (r5v37 ?? I:java.lang.Object) from 0x065e: INVOKE (r7v0 ?? I:androidx.compose.runtime.Composer), (r5v37 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void (LINE:573)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r42v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListState ChatSkinScreen$lambda$22$lambda$2$lambda$1() {
        return new LazyListState(0, 0, 3, (DefaultConstructorMarker) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ChatSkinScreen$lambda$22$lambda$5$lambda$4(LazyListState lazyListState, float f) {
        LazyListLayoutInfo layoutInfo = lazyListState.getLayoutInfo();
        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.lastOrNull(layoutInfo.getVisibleItemsInfo());
        if (lazyListItemInfo == null) {
            return true;
        }
        return lazyListItemInfo.getIndex() == layoutInfo.getTotalItemsCount() - 1 && ((float) (lazyListItemInfo.getOffset() + lazyListItemInfo.getSize())) <= ((float) layoutInfo.getViewportEndOffset()) + f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ChatSkinScreen$lambda$22$lambda$10(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState ChatSkinScreen$lambda$22$lambda$8$lambda$7() {
        return SnapshotStateKt.mutableStateOf$default(true, (SnapshotMutationPolicy) null, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ChatSkinScreen$lambda$22$lambda$9(MutableState<Boolean> mutableState) {
        return ((Boolean) ((State) mutableState).getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int ChatSkinScreen$lambda$22$lambda$12(MutableState<Integer> mutableState) {
        return ((Number) ((State) mutableState).getValue()).intValue();
    }

    private static final void ChatSkinScreen$lambda$22$lambda$13(MutableState<Integer> mutableState, int i) {
        mutableState.setValue(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object ChatSkinScreen$lambda$22$followSnap(LazyListState lazyListState, List<ChatBubble> list, MutableState<Integer> mutableState, Continuation<? super Unit> continuation) {
        ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1 chatSkinScreenKt$ChatSkinScreen$1$followSnap$1;
        if (continuation instanceof ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1) {
            chatSkinScreenKt$ChatSkinScreen$1$followSnap$1 = (ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1) continuation;
            if ((chatSkinScreenKt$ChatSkinScreen$1$followSnap$1.label & Integer.MIN_VALUE) != 0) {
                chatSkinScreenKt$ChatSkinScreen$1$followSnap$1.label -= Integer.MIN_VALUE;
            } else {
                chatSkinScreenKt$ChatSkinScreen$1$followSnap$1 = new ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1(continuation);
            }
        }
        Object obj = chatSkinScreenKt$ChatSkinScreen$1$followSnap$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = chatSkinScreenKt$ChatSkinScreen$1$followSnap$1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ChatSkinScreen$lambda$22$lambda$13(mutableState, ChatSkinScreen$lambda$22$lambda$12(mutableState) + 1);
                int size = list.size() - 1;
                chatSkinScreenKt$ChatSkinScreen$1$followSnap$1.L$0 = mutableState;
                chatSkinScreenKt$ChatSkinScreen$1$followSnap$1.label = 1;
                if (snapToLatest(lazyListState, size, chatSkinScreenKt$ChatSkinScreen$1$followSnap$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutableState = (MutableState) chatSkinScreenKt$ChatSkinScreen$1$followSnap$1.L$0;
                ResultKt.throwOnFailure(obj);
            }
            ChatSkinScreen$lambda$22$lambda$13(mutableState, ChatSkinScreen$lambda$22$lambda$12(mutableState) - 1);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            ChatSkinScreen$lambda$22$lambda$13(mutableState, ChatSkinScreen$lambda$22$lambda$12(mutableState) - 1);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ChatSkinScreen$lambda$22$lambda$21$lambda$20$lambda$19(CoroutineScope coroutineScope, MutableState mutableState, LazyListState lazyListState, List list, MutableState mutableState2) {
        ChatSkinScreen$lambda$22$lambda$10(mutableState, true);
        BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new ChatSkinScreenKt$ChatSkinScreen$1$4$2$1$1(lazyListState, list, mutableState2, null), 3, (Object) null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object snapToLatest(LazyListState lazyListState, int i, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        int offset;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (i < 0) {
                return Unit.INSTANCE;
            }
            anonymousClass1.L$0 = lazyListState;
            anonymousClass1.I$0 = i;
            anonymousClass1.label = 1;
            if (LazyListState.scrollToItem$default(lazyListState, i, 0, anonymousClass1, 2, (Object) null) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            i = anonymousClass1.I$0;
            lazyListState = (LazyListState) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        LazyListLayoutInfo layoutInfo = lazyListState.getLayoutInfo();
        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.lastOrNull(layoutInfo.getVisibleItemsInfo());
        if (lazyListItemInfo == null || lazyListItemInfo.getIndex() != i || (offset = (lazyListItemInfo.getOffset() + lazyListItemInfo.getSize()) - layoutInfo.getViewportEndOffset()) <= 0) {
            return Unit.INSTANCE;
        }
        anonymousClass1.L$0 = null;
        anonymousClass1.label = 2;
        if (ScrollExtensionsKt.scrollBy((ScrollableState) lazyListState, offset, anonymousClass1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void JumpToLatestButton(final Function0<Unit> function0, Modifier modifier, Composer composer, final int i, final int i2) {
        int i3;
        final Modifier modifier2;
        Composer composer2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1750534567);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i3 & 19) == 18 || !composerStartRestartGroup.getSkipping()) {
                Modifier modifier3 = i4 == 0 ? (Modifier) Modifier.Companion : modifier2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1750534567, i3, -1, "com.hermes.android.ui.chatskin.JumpToLatestButton (ChatSkinScreen.kt:225)");
                }
                Modifier modifier4 = modifier3;
                composer2 = composerStartRestartGroup;
                SurfaceKt.Surface-o_FOJdg(function0, SizeKt.size-3ABfNKs(modifier3, Dp.constructor-impl(40)), false, RoundedCornerShapeKt.getCircleShape(), ColorKt.Color(4280165686L), 0L, 0.0f, Dp.constructor-impl(4), BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(1), Border), (MutableInteractionSource) null, ComposableSingletons$ChatSkinScreenKt.INSTANCE.m76getLambda2$app_release(), composer2, (i3 & 14) | 113270784, 6, 612);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                composer2 = composerStartRestartGroup;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda0
                    public final Object invoke(Object obj, Object obj2) {
                        return ChatSkinScreenKt.JumpToLatestButton$lambda$24(function0, modifier2, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                });
                return;
            }
            return;
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i3 & 19) == 18) {
            if (i4 == 0) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            Modifier modifier42 = modifier3;
            composer2 = composerStartRestartGroup;
            SurfaceKt.Surface-o_FOJdg(function0, SizeKt.size-3ABfNKs(modifier3, Dp.constructor-impl(40)), false, RoundedCornerShapeKt.getCircleShape(), ColorKt.Color(4280165686L), 0L, 0.0f, Dp.constructor-impl(4), BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(1), Border), (MutableInteractionSource) null, ComposableSingletons$ChatSkinScreenKt.INSTANCE.m76getLambda2$app_release(), composer2, (i3 & 14) | 113270784, 6, 612);
            if (ComposerKt.isTraceInProgress()) {
            }
            modifier2 = modifier42;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public static final void BubbleRow(final ChatBubble chatBubble, Composer composer, final int i) throws NoWhenBranchMatchedException {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-803862512);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(chatBubble) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-803862512, i2, -1, "com.hermes.android.ui.chatskin.BubbleRow (ChatSkinScreen.kt:246)");
            }
            int i3 = WhenMappings.$EnumSwitchMapping$0[chatBubble.getRole().ordinal()];
            if (i3 == 1) {
                composer2 = composerStartRestartGroup;
                composer2.startReplaceGroup(-1718384427);
                m73AlignedBubbleRIQooxk(chatBubble.getContent(), UserBubble, TextPrimary, Alignment.Companion.getEnd(), composer2, 3504);
                composer2.endReplaceGroup();
            } else if (i3 == 2) {
                composer2 = composerStartRestartGroup;
                composer2.startReplaceGroup(-1718381202);
                m73AlignedBubbleRIQooxk(chatBubble.getContent() + (chatBubble.isLive() ? " ▊" : BuildConfig.FLAVOR), AssistantBubble, TextPrimary, Alignment.Companion.getStart(), composer2, 3504);
                composer2.endReplaceGroup();
            } else if (i3 == 3) {
                composer2 = composerStartRestartGroup;
                composer2.startReplaceGroup(-1718374557);
                ToolCardRow(chatBubble, composer2, i2 & 14);
                composer2.endReplaceGroup();
            } else {
                if (i3 != 4) {
                    composerStartRestartGroup.startReplaceGroup(-1718385236);
                    composerStartRestartGroup.endReplaceGroup();
                    throw new NoWhenBranchMatchedException();
                }
                composerStartRestartGroup.startReplaceGroup(-1729953431);
                TextKt.Text--4IGK_g(chatBubble.getContent(), PaddingKt.padding-VpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), 0.0f, Dp.constructor-impl(2), 1, (Object) null), TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.box-impl(TextAlign.Companion.getCenter-e0LSkKk()), 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composerStartRestartGroup, 3504, 0, 130544);
                composerStartRestartGroup.endReplaceGroup();
                composer2 = composerStartRestartGroup;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda1
                public final Object invoke(Object obj, Object obj2) {
                    return ChatSkinScreenKt.BubbleRow$lambda$25(chatBubble, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: AlignedBubble-RIQooxk, reason: not valid java name */
    private static final void m73AlignedBubbleRIQooxk(final String str, final long j, final long j2, final Alignment.Horizontal horizontal, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1767006511);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= composerStartRestartGroup.changed(j2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(horizontal) ? 2048 : 1024;
        }
        if ((i2 & 1171) != 1170 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1767006511, i2, -1, "com.hermes.android.ui.chatskin.AlignedBubble (ChatSkinScreen.kt:263)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), horizontal, composerStartRestartGroup, ((((i2 >> 3) & 896) | 6) >> 3) & 112);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxWidth$default);
            Function0 constructor = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer2 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer2, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            SurfaceKt.Surface-T9BRK9s(SizeKt.widthIn-VpY3zN4$default(Modifier.Companion, 0.0f, Dp.constructor-impl(300), 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(16)), j, 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(-323987360, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$AlignedBubble$1$1
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i3) {
                    if ((i3 & 3) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-323987360, i3, -1, "com.hermes.android.ui.chatskin.AlignedBubble.<anonymous>.<anonymous> (ChatSkinScreen.kt:270)");
                        }
                        TextKt.Text--4IGK_g(str, PaddingKt.padding-VpY3zN4(Modifier.Companion, Dp.constructor-impl(12), Dp.constructor-impl(8)), j2, TextUnitKt.getSp(15), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(21), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3120, 6, 130032);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i2 << 3) & 896) | 12582918, 120);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda5
                public final Object invoke(Object obj, Object obj2) {
                    return ChatSkinScreenKt.AlignedBubble_RIQooxk$lambda$27(str, j, j2, horizontal, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void ToolCardRow(final ChatBubble chatBubble, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(794342612);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(chatBubble) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(794342612, i2, -1, "com.hermes.android.ui.chatskin.ToolCardRow (ChatSkinScreen.kt:278)");
            }
            composerStartRestartGroup.startReplaceGroup(1235997022);
            boolean z = (i2 & 14) == 4;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.mutableStateOf$default(false, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final MutableState mutableState = (MutableState) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxWidth$default);
            Function0 constructor = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer3 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer3, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
            long j = ToolCard;
            float f = 12;
            Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f));
            Modifier modifier = BorderKt.border-xT4_qwU(SizeKt.widthIn-VpY3zN4$default(Modifier.Companion, 0.0f, Dp.constructor-impl(320), 1, (Object) null), Dp.constructor-impl(1), Border, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f)));
            composerStartRestartGroup.startReplaceGroup(2018410704);
            boolean zChanged = composerStartRestartGroup.changed(mutableState);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda12
                    public final Object invoke() {
                        return ChatSkinScreenKt.ToolCardRow$lambda$33$lambda$32$lambda$31(mutableState);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            composerStartRestartGroup.endReplaceGroup();
            composer2 = composerStartRestartGroup;
            SurfaceKt.Surface-T9BRK9s(ClickableKt.clickable-XHw0xAI$default(modifier, false, (String) null, (Role) null, (Function0) objRememberedValue2, 7, (Object) null), shape, j, 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(-1637072923, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$ToolCardRow$1$2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer4, int i3) {
                    if ((i3 & 3) != 2 || !composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1637072923, i3, -1, "com.hermes.android.ui.chatskin.ToolCardRow.<anonymous>.<anonymous> (ChatSkinScreen.kt:291)");
                        }
                        Modifier modifier2 = PaddingKt.padding-VpY3zN4(Modifier.Companion, Dp.constructor-impl(12), Dp.constructor-impl(8));
                        ChatBubble chatBubble2 = chatBubble;
                        MutableState<Boolean> mutableState2 = mutableState;
                        ComposerKt.sourceInformationMarkerStart(composer4, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer4, 0);
                        ComposerKt.sourceInformationMarkerStart(composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composer4.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer4, modifier2);
                        Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
                        ComposerKt.sourceInformationMarkerStart(composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!(composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer4.startReusableNode();
                        if (composer4.getInserting()) {
                            composer4.createNode(constructor2);
                        } else {
                            composer4.useNode();
                        }
                        Composer composer5 = Updater.constructor-impl(composer4);
                        Updater.set-impl(composer5, measurePolicyColumnMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer5, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                            composer5.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                        }
                        Updater.set-impl(composer5, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer4, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                        Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                        ComposerKt.sourceInformationMarkerStart(composer4, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        Modifier modifier3 = Modifier.Companion;
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer4, 48);
                        ComposerKt.sourceInformationMarkerStart(composer4, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                        CompositionLocalMap currentCompositionLocalMap3 = composer4.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer4, modifier3);
                        Function0 constructor3 = ComposeUiNode.Companion.getConstructor();
                        ComposerKt.sourceInformationMarkerStart(composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!(composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer4.startReusableNode();
                        if (composer4.getInserting()) {
                            composer4.createNode(constructor3);
                        } else {
                            composer4.useNode();
                        }
                        Composer composer6 = Updater.constructor-impl(composer4);
                        Updater.set-impl(composer6, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer6, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (composer6.getInserting() || !Intrinsics.areEqual(composer6.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                            composer6.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                            composer6.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                        }
                        Updater.set-impl(composer6, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer4, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        RowScope rowScope = RowScopeInstance.INSTANCE;
                        IconKt.Icon-ww6aTOc(BuildKt.getBuild(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(15)), ChatSkinScreenKt.TextSecondary, composer4, 3504, 0);
                        SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer4, 6);
                        int i4 = R.string.chatskin_tool_used;
                        String toolName = chatBubble2.getToolName();
                        composer4.startReplaceGroup(1502261073);
                        if (toolName == null) {
                            toolName = StringResources_androidKt.stringResource(R.string.chatskin_tool_generic, composer4, 0);
                        }
                        composer4.endReplaceGroup();
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(i4, new Object[]{toolName}, composer4, 0), (Modifier) null, ChatSkinScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer4, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        composer4.startReplaceGroup(177756561);
                        if (ChatSkinScreenKt.ToolCardRow$lambda$29(mutableState2) && !StringsKt.isBlank(chatBubble2.getContent())) {
                            SpacerKt.Spacer(PaddingKt.padding-qDBjuR0$default(Modifier.Companion, 0.0f, Dp.constructor-impl(4), 0.0f, 0.0f, 13, (Object) null), composer4, 6);
                            TextKt.Text--4IGK_g(chatBubble2.getContent(), (Modifier) null, ChatSkinScreenKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, FontFamily.Companion.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer4, 3456, 6, 129970);
                        }
                        composer4.endReplaceGroup();
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        ComposerKt.sourceInformationMarkerEnd(composer4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer4.skipToGroupEnd();
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 12583296, 120);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda13
                public final Object invoke(Object obj, Object obj2) {
                    return ChatSkinScreenKt.ToolCardRow$lambda$34(chatBubble, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ToolCardRow$lambda$29(MutableState<Boolean> mutableState) {
        return ((Boolean) ((State) mutableState).getValue()).booleanValue();
    }

    private static final void ToolCardRow$lambda$30(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ToolCardRow$lambda$33$lambda$32$lambda$31(MutableState mutableState) {
        ToolCardRow$lambda$30(mutableState, !ToolCardRow$lambda$29(mutableState));
        return Unit.INSTANCE;
    }

    private static final void EmptyState(Modifier modifier, Composer composer, final int i, final int i2) {
        final Modifier modifier2;
        int i3;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2042875249);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i3 & 3) != 2 || !composerStartRestartGroup.getSkipping()) {
            Modifier modifier3 = i4 != 0 ? (Modifier) Modifier.Companion : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2042875249, i3, -1, "com.hermes.android.ui.chatskin.EmptyState (ChatSkinScreen.kt:317)");
            }
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(modifier3, 0.0f, 1, (Object) null);
            Alignment center = Alignment.Companion.getCenter();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxWidth$default);
            Function0 constructor = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composer3 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer3, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer3, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (composer3.getInserting() || !Intrinsics.areEqual(composer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composer3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer3.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.set-impl(composer3, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScope boxScope = BoxScopeInstance.INSTANCE;
            Modifier modifier4 = modifier3;
            composer2 = composerStartRestartGroup;
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.chatskin_empty_hint, composerStartRestartGroup, 0), PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(32)), TextMuted, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(20), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer2, 3504, 6, 130032);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda14
                public final Object invoke(Object obj, Object obj2) {
                    return ChatSkinScreenKt.EmptyState$lambda$36(modifier2, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void InputBar(final boolean z, final ChatSkinState.Phase phase, final Function1<? super String, Unit> function1, Function0<Unit> function0, Composer composer, final int i, final int i2) {
        int i3;
        Function0<Unit> function02;
        int i4;
        Function0<Unit> function03;
        Object objRememberedValue;
        int currentCompositeKeyHash;
        Composer composer2;
        Function2 setCompositeKeyHash;
        float f;
        boolean z2;
        MutableState mutableState;
        int i5;
        boolean z3;
        Object objRememberedValue2;
        final MutableState mutableState2;
        final MutableState mutableState3;
        final Function0<Unit> function04;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1213385347);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(phase) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function1) ? 256 : 128;
        }
        int i6 = i2 & 8;
        if (i6 == 0) {
            if ((i & 3072) == 0) {
                function02 = function0;
                i3 |= composerStartRestartGroup.changedInstance(function02) ? 2048 : 1024;
            }
            i4 = i3;
            if ((i4 & 1171) == 1170 || !composerStartRestartGroup.getSkipping()) {
                function03 = i6 == 0 ? null : function02;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1213385347, i4, -1, "com.hermes.android.ui.chatskin.InputBar (ChatSkinScreen.kt:333)");
                }
                composerStartRestartGroup.startReplaceGroup(-1075686623);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.mutableStateOf$default(BuildConfig.FLAVOR, (SnapshotMutationPolicy) null, 2, (Object) null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MutableState mutableState4 = (MutableState) objRememberedValue;
                composerStartRestartGroup.endReplaceGroup();
                Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                float f2 = 8;
                Modifier modifier = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(12), Dp.constructor-impl(f2));
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composerStartRestartGroup, 48);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
                Function0 constructor = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (!composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composer2 = Updater.constructor-impl(composerStartRestartGroup);
                Updater.set-impl(composer2, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (!composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(-1639605643);
                if (function03 == null) {
                    z3 = false;
                    f = f2;
                    z2 = true;
                    mutableState = mutableState4;
                    i5 = i4;
                    IconButtonKt.IconButton(function03, (Modifier) null, z, (IconButtonColors) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(1446766041, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$InputBar$1$1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer3, int i7) {
                            if ((i7 & 3) != 2 || !composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1446766041, i7, -1, "com.hermes.android.ui.chatskin.InputBar.<anonymous>.<anonymous> (ChatSkinScreen.kt:343)");
                                }
                                IconKt.Icon-ww6aTOc(ImageKt.getImage(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.terminal_attach_image, composer3, 0), (Modifier) null, z ? ChatSkinScreenKt.TextSecondary : ChatSkinScreenKt.TextMuted, composer3, 0, 4);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer3.skipToGroupEnd();
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i4 >> 9) & 14) | 196608 | ((i4 << 6) & 896), 26);
                } else {
                    f = f2;
                    z2 = true;
                    mutableState = mutableState4;
                    i5 = i4;
                    z3 = false;
                }
                composerStartRestartGroup.endReplaceGroup();
                String strInputBar$lambda$38 = InputBar$lambda$38(mutableState);
                Modifier modifierWeight$default = RowScope.weight$default(rowScope, Modifier.Companion, 1.0f, false, 2, (Object) null);
                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                long j = TextPrimary;
                TextFieldColors textFieldColors = outlinedTextFieldDefaults.colors-0hiis_0(j, j, TextMuted, 0L, 0L, 0L, 0L, 0L, 0L, 0L, (TextSelectionColors) null, Border, Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, (Object) null), Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerStartRestartGroup, 438, 3504, 0, 0, 3072, 2147469304, 4095);
                composerStartRestartGroup.startReplaceGroup(-1639592466);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 != Composer.Companion.getEmpty()) {
                    mutableState2 = mutableState;
                    objRememberedValue2 = new Function1() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda2
                        public final Object invoke(Object obj) {
                            return ChatSkinScreenKt.InputBar$lambda$44$lambda$41$lambda$40(mutableState2, (String) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    mutableState2 = mutableState;
                }
                composerStartRestartGroup.endReplaceGroup();
                int i7 = i5;
                MutableState mutableState5 = mutableState2;
                OutlinedTextFieldKt.OutlinedTextField(strInputBar$lambda$38, (Function1) objRememberedValue2, modifierWeight$default, z, false, (TextStyle) null, (Function2) null, ComposableLambdaKt.rememberComposableLambda(-977069606, z2, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$InputBar$1$3
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer3, int i8) {
                        String strStringResource;
                        if ((i8 & 3) != 2 || !composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-977069606, i8, -1, "com.hermes.android.ui.chatskin.InputBar.<anonymous>.<anonymous> (ChatSkinScreen.kt:355)");
                            }
                            if (z) {
                                composer3.startReplaceGroup(-277907796);
                                strStringResource = StringResources_androidKt.stringResource(R.string.chatskin_input_hint, composer3, 0);
                                composer3.endReplaceGroup();
                            } else {
                                composer3.startReplaceGroup(-277905559);
                                strStringResource = StringResources_androidKt.stringResource(R.string.chatskin_waiting, composer3, 0);
                                composer3.endReplaceGroup();
                            }
                            TextKt.Text--4IGK_g(strStringResource, (Modifier) null, ChatSkinScreenKt.TextMuted, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3456, 0, 131058);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer3.skipToGroupEnd();
                    }
                }, composerStartRestartGroup, 54), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 4, 0, (MutableInteractionSource) null, (Shape) null, textFieldColors, composerStartRestartGroup, ((i5 << 9) & 7168) | 12582960, 113246208, 0, 3800944);
                composerStartRestartGroup = composerStartRestartGroup;
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composerStartRestartGroup, 6);
                if (phase == ChatSkinState.Phase.IDLE) {
                    composerStartRestartGroup.startReplaceGroup(713168132);
                    ProgressIndicatorKt.CircularProgressIndicator-LxG7B9w(SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(24)), TextSecondary, Dp.constructor-impl(2), 0L, 0, composerStartRestartGroup, 438, 24);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(713309430);
                    composerStartRestartGroup.startReplaceGroup(-1639556707);
                    boolean z4 = (i7 & 896) == 256 ? true : z3;
                    Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z4 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                        mutableState3 = mutableState5;
                        objRememberedValue3 = new Function0() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda3
                            public final Object invoke() {
                                return ChatSkinScreenKt.InputBar$lambda$44$lambda$43$lambda$42(function1, mutableState3);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        mutableState3 = mutableState5;
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    IconButtonKt.IconButton((Function0) objRememberedValue3, (Modifier) null, !StringsKt.isBlank(InputBar$lambda$38(mutableState3)), (IconButtonColors) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-498931367, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$InputBar$1$5
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer3, int i8) {
                            if ((i8 & 3) != 2 || !composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-498931367, i8, -1, "com.hermes.android.ui.chatskin.InputBar.<anonymous>.<anonymous> (ChatSkinScreen.kt:384)");
                                }
                                IconKt.Icon-ww6aTOc(SendKt.getSend(Icons.AutoMirrored.Filled.INSTANCE), StringResources_androidKt.stringResource(R.string.chatskin_send, composer3, 0), (Modifier) null, !StringsKt.isBlank(ChatSkinScreenKt.InputBar$lambda$38(mutableState3)) ? ChatSkinScreenKt.UserBubble : ChatSkinScreenKt.TextMuted, composer3, 0, 4);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer3.skipToGroupEnd();
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, 196608, 26);
                    composerStartRestartGroup.endReplaceGroup();
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endNode();
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                function04 = function03;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                function04 = function02;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$$ExternalSyntheticLambda4
                    public final Object invoke(Object obj, Object obj2) {
                        return ChatSkinScreenKt.InputBar$lambda$45(z, phase, function1, function04, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                });
                return;
            }
            return;
        }
        i3 |= 3072;
        function02 = function0;
        i4 = i3;
        if ((i4 & 1171) == 1170) {
            if (i6 == 0) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            composerStartRestartGroup.startReplaceGroup(-1075686623);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
            }
            MutableState mutableState42 = (MutableState) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            Alignment.Vertical centerVertically2 = Alignment.Companion.getCenterVertically();
            float f22 = 8;
            Modifier modifier2 = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(12), Dp.constructor-impl(f22));
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, composerStartRestartGroup, 48);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
            Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
            }
            composerStartRestartGroup.startReusableNode();
            if (!composerStartRestartGroup.getInserting()) {
            }
            composer2 = Updater.constructor-impl(composerStartRestartGroup);
            Updater.set-impl(composer2, measurePolicyRowMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.set-impl(composer2, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
            setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
            if (!composer2.getInserting()) {
                composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                Updater.set-impl(composer2, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope2 = RowScopeInstance.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(-1639605643);
                if (function03 == null) {
                }
                composerStartRestartGroup.endReplaceGroup();
                String strInputBar$lambda$382 = InputBar$lambda$38(mutableState);
                Modifier modifierWeight$default2 = RowScope.weight$default(rowScope2, Modifier.Companion, 1.0f, false, 2, (Object) null);
                OutlinedTextFieldDefaults outlinedTextFieldDefaults2 = OutlinedTextFieldDefaults.INSTANCE;
                long j2 = TextPrimary;
                TextFieldColors textFieldColors2 = outlinedTextFieldDefaults2.colors-0hiis_0(j2, j2, TextMuted, 0L, 0L, 0L, 0L, 0L, 0L, 0L, (TextSelectionColors) null, Border, Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, (Object) null), Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerStartRestartGroup, 438, 3504, 0, 0, 3072, 2147469304, 4095);
                composerStartRestartGroup.startReplaceGroup(-1639592466);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 != Composer.Companion.getEmpty()) {
                }
                composerStartRestartGroup.endReplaceGroup();
                int i72 = i5;
                MutableState mutableState52 = mutableState2;
                OutlinedTextFieldKt.OutlinedTextField(strInputBar$lambda$382, (Function1) objRememberedValue2, modifierWeight$default2, z, false, (TextStyle) null, (Function2) null, ComposableLambdaKt.rememberComposableLambda(-977069606, z2, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$InputBar$1$3
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer3, int i8) {
                        String strStringResource;
                        if ((i8 & 3) != 2 || !composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-977069606, i8, -1, "com.hermes.android.ui.chatskin.InputBar.<anonymous>.<anonymous> (ChatSkinScreen.kt:355)");
                            }
                            if (z) {
                                composer3.startReplaceGroup(-277907796);
                                strStringResource = StringResources_androidKt.stringResource(R.string.chatskin_input_hint, composer3, 0);
                                composer3.endReplaceGroup();
                            } else {
                                composer3.startReplaceGroup(-277905559);
                                strStringResource = StringResources_androidKt.stringResource(R.string.chatskin_waiting, composer3, 0);
                                composer3.endReplaceGroup();
                            }
                            TextKt.Text--4IGK_g(strStringResource, (Modifier) null, ChatSkinScreenKt.TextMuted, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3456, 0, 131058);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer3.skipToGroupEnd();
                    }
                }, composerStartRestartGroup, 54), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, false, 4, 0, (MutableInteractionSource) null, (Shape) null, textFieldColors2, composerStartRestartGroup, ((i5 << 9) & 7168) | 12582960, 113246208, 0, 3800944);
                composerStartRestartGroup = composerStartRestartGroup;
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(f)), composerStartRestartGroup, 6);
                if (phase == ChatSkinState.Phase.IDLE) {
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endNode();
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                if (ComposerKt.isTraceInProgress()) {
                }
                function04 = function03;
            }
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String InputBar$lambda$38(MutableState<String> mutableState) {
        return (String) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit InputBar$lambda$44$lambda$41$lambda$40(MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit InputBar$lambda$44$lambda$43$lambda$42(Function1 function1, MutableState mutableState) {
        String string = StringsKt.trim(InputBar$lambda$38(mutableState)).toString();
        if (string.length() > 0) {
            function1.invoke(string);
            mutableState.setValue(BuildConfig.FLAVOR);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ChatSkinScreen$lambda$22$lambda$6(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ChatSkinScreen$lambda$22$lambda$21$lambda$18$lambda$17(final List list, LazyListScope lazyListScope) {
        Intrinsics.checkNotNullParameter(lazyListScope, "$this$LazyColumn");
        final ChatSkinScreenKt$ChatSkinScreen$lambda$22$lambda$21$lambda$18$lambda$17$$inlined$items$default$1 chatSkinScreenKt$ChatSkinScreen$lambda$22$lambda$21$lambda$18$lambda$17$$inlined$items$default$1 = new Function1() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$ChatSkinScreen$lambda$22$lambda$21$lambda$18$lambda$17$$inlined$items$default$1
            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final Void m74invoke(ChatBubble chatBubble) {
                return null;
            }

            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m74invoke((ChatBubble) obj);
            }
        };
        lazyListScope.items(list.size(), (Function1) null, new Function1<Integer, Object>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$ChatSkinScreen$lambda$22$lambda$21$lambda$18$lambda$17$$inlined$items$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final Object invoke(int i) {
                return chatSkinScreenKt$ChatSkinScreen$lambda$22$lambda$21$lambda$18$lambda$17$$inlined$items$default$1.invoke(list.get(i));
            }
        }, ComposableLambdaKt.composableLambdaInstance(-632812321, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$ChatSkinScreen$lambda$22$lambda$21$lambda$18$lambda$17$$inlined$items$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(4);
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) throws NoWhenBranchMatchedException {
                invoke((LazyItemScope) obj, ((Number) obj2).intValue(), (Composer) obj3, ((Number) obj4).intValue());
                return Unit.INSTANCE;
            }

            /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
            public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) throws NoWhenBranchMatchedException {
                int i3;
                ComposerKt.sourceInformation(composer, "C152@7074L22:LazyDsl.kt#428nma");
                if ((i2 & 6) == 0) {
                    i3 = (composer.changed(lazyItemScope) ? 4 : 2) | i2;
                } else {
                    i3 = i2;
                }
                if ((i2 & 48) == 0) {
                    i3 |= composer.changed(i) ? 32 : 16;
                }
                if ((i3 & 147) == 146 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-632812321, i3, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)");
                }
                ChatBubble chatBubble = (ChatBubble) list.get(i);
                composer.startReplaceGroup(-1830039422);
                ChatSkinScreenKt.BubbleRow(chatBubble, composer, 0);
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return Unit.INSTANCE;
    }
}
