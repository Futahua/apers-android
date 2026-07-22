.class public final synthetic Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$1:Ljava/io/File;

    iput-wide p3, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$2:J

    iput-object p5, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$1:Ljava/io/File;

    iget-wide v2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$2:J

    iget-object v4, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;->f$3:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hermes/android/BootstrapManager;->$r8$lambda$E7G5G2DY2J9yKhX2QWBELmFmPw8(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method
