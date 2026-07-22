.class final Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;
.super Ljava/lang/Object;
.source "ChatSkinScreen.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $atBottomByGeometry$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $listState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $programmaticDepth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userAtBottom$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $wasScrolling:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$wasScrolling:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$programmaticDepth$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$userAtBottom$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$atBottomByGeometry$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 145
    iget-object p2, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$programmaticDepth$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt;->access$ChatSkinScreen$lambda$22$lambda$12(Landroidx/compose/runtime/MutableState;)I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 149
    iget-object p2, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$userAtBottom$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2, v0}, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt;->access$ChatSkinScreen$lambda$22$lambda$10(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$wasScrolling:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 152
    iget-object p2, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 153
    iget-object p2, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$userAtBottom$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$atBottomByGeometry$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt;->access$ChatSkinScreen$lambda$22$lambda$6(Landroidx/compose/runtime/State;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt;->access$ChatSkinScreen$lambda$22$lambda$10(Landroidx/compose/runtime/MutableState;Z)V

    .line 155
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$2$1$2;->$wasScrolling:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p1, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 156
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
