.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/data/AiProvider;

.field public final synthetic f$1:Lcom/hermes/android/BootstrapManager;

.field public final synthetic f$2:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$3:Lcom/hermes/android/data/HermesConfigRepository;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/HermesConfigRepository;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$0:Lcom/hermes/android/data/AiProvider;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$1:Lcom/hermes/android/BootstrapManager;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$2:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$3:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$4:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$5:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$6:I

    iput p8, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$0:Lcom/hermes/android/data/AiProvider;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$1:Lcom/hermes/android/BootstrapManager;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$2:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$3:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$4:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$5:Lkotlin/jvm/functions/Function0;

    iget v6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$6:I

    iget v7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda21;->f$7:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$wvgeJ8wtgAS5nxKLyHW-0-4AhPk(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/HermesConfigRepository;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
