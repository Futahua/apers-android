.class public final synthetic Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/hermes/android/BootstrapManager;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/hermes/android/BootstrapManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;->f$1:Lcom/hermes/android/BootstrapManager;

    iput-object p3, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;->f$1:Lcom/hermes/android/BootstrapManager;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/hermes/android/BootstrapManager;->$r8$lambda$g29AGq4GDfdHCX4j5l4GIZXbRX8(Ljava/io/File;Lcom/hermes/android/BootstrapManager;Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
