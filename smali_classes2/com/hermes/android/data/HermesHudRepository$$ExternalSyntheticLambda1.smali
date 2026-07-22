.class public final synthetic Lcom/hermes/android/data/HermesHudRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/data/HermesHudRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/hermes/android/data/HermesHudRepository;->$r8$lambda$-ZANFD2wURmMS2sZ_mtRYzCyLHc(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
