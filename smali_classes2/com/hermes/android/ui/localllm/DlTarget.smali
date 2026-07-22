.class final enum Lcom/hermes/android/ui/localllm/DlTarget;
.super Ljava/lang/Enum;
.source "LocalLlmSetupScreen.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hermes/android/ui/localllm/DlTarget;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/hermes/android/ui/localllm/DlTarget;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "GGUF",
        "NPU_BUNDLE",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/hermes/android/ui/localllm/DlTarget;

.field public static final enum GGUF:Lcom/hermes/android/ui/localllm/DlTarget;

.field public static final enum NPU_BUNDLE:Lcom/hermes/android/ui/localllm/DlTarget;


# direct methods
.method private static final synthetic $values()[Lcom/hermes/android/ui/localllm/DlTarget;
    .locals 2

    sget-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->GGUF:Lcom/hermes/android/ui/localllm/DlTarget;

    sget-object v1, Lcom/hermes/android/ui/localllm/DlTarget;->NPU_BUNDLE:Lcom/hermes/android/ui/localllm/DlTarget;

    filled-new-array {v0, v1}, [Lcom/hermes/android/ui/localllm/DlTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 174
    new-instance v0, Lcom/hermes/android/ui/localllm/DlTarget;

    const-string v1, "GGUF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/ui/localllm/DlTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->GGUF:Lcom/hermes/android/ui/localllm/DlTarget;

    new-instance v0, Lcom/hermes/android/ui/localllm/DlTarget;

    const-string v1, "NPU_BUNDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/ui/localllm/DlTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->NPU_BUNDLE:Lcom/hermes/android/ui/localllm/DlTarget;

    invoke-static {}, Lcom/hermes/android/ui/localllm/DlTarget;->$values()[Lcom/hermes/android/ui/localllm/DlTarget;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->$VALUES:[Lcom/hermes/android/ui/localllm/DlTarget;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hermes/android/ui/localllm/DlTarget;
    .locals 1

    const-class v0, Lcom/hermes/android/ui/localllm/DlTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 174
    check-cast p0, Lcom/hermes/android/ui/localllm/DlTarget;

    return-object p0
.end method

.method public static values()[Lcom/hermes/android/ui/localllm/DlTarget;
    .locals 1

    sget-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->$VALUES:[Lcom/hermes/android/ui/localllm/DlTarget;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 174
    check-cast v0, [Lcom/hermes/android/ui/localllm/DlTarget;

    return-object v0
.end method
