.class public final synthetic Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda18;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda18;->f$0:Ljava/io/File;

    invoke-static {v0}, Lcom/hermes/android/BootstrapManager;->$r8$lambda$I8B0e2C7p2_PMS3K9ym2Evs6868(Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
