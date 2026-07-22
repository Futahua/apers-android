.class public final synthetic Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/BootstrapManager;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda17;->f$0:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda17;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda17;->f$0:Lcom/hermes/android/BootstrapManager;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda17;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/hermes/android/BootstrapManager;->$r8$lambda$TXGia5v2J3rwojanpMuZnz7tF1c(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    move-result-object v0

    return-object v0
.end method
