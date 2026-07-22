.class public final synthetic Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/data/HermesConfigRepository;

.field public final synthetic f$1:Lcom/hermes/android/data/AiProvider;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;->f$0:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p2, p0, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;->f$1:Lcom/hermes/android/data/AiProvider;

    iput-object p3, p0, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;->f$0:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v1, p0, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;->f$1:Lcom/hermes/android/data/AiProvider;

    iget-object v2, p0, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hermes/android/pairing/PairingViewModel$Companion;->$r8$lambda$uMMqvVMcaaecTcARDAxwjCzc4CU(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
