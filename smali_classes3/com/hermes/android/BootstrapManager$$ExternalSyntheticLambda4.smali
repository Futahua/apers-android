.class public final synthetic Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:Lcom/hermes/android/BootstrapManager;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/hermes/android/BootstrapManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;->f$2:Lcom/hermes/android/BootstrapManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;->f$2:Lcom/hermes/android/BootstrapManager;

    invoke-static {v0, v1, v2}, Lcom/hermes/android/BootstrapManager;->$r8$lambda$W_3zb_jqkDqDOkfqEGNjbFVrd_s(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/hermes/android/BootstrapManager;)V

    return-void
.end method
