.class public final synthetic Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda19;
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

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda19;->f$0:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda19;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda19;->f$0:Lcom/hermes/android/BootstrapManager;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda19;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/hermes/android/BootstrapManager;->$r8$lambda$04h7rE_FJ2N4MNXND5Cy_HRz0sE(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
