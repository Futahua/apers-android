.class final Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ChatSkinScreen.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt;->ChatSkinScreen$lambda$22$followSnap(Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermes.android.ui.chatskin.ChatSkinScreenKt"
    f = "ChatSkinScreen.kt"
    i = {
        0x0
    }
    l = {
        0xa2
    }
    m = "ChatSkinScreen$lambda$22$followSnap"
    n = {
        "programmaticDepth$delegate"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt$ChatSkinScreen$1$followSnap$1;->label:I

    const/4 p1, 0x0

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, p1, p1, v0}, Lcom/hermes/android/ui/chatskin/ChatSkinScreenKt;->access$ChatSkinScreen$lambda$22$followSnap(Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
