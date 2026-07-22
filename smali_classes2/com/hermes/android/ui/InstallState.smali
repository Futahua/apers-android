.class final enum Lcom/hermes/android/ui/InstallState;
.super Ljava/lang/Enum;
.source "EdgeFeaturesSheet.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hermes/android/ui/InstallState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hermes/android/ui/InstallState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "REVIEWING",
        "INSTALLING",
        "DONE",
        "FAILED",
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

.field private static final synthetic $VALUES:[Lcom/hermes/android/ui/InstallState;

.field public static final enum DONE:Lcom/hermes/android/ui/InstallState;

.field public static final enum FAILED:Lcom/hermes/android/ui/InstallState;

.field public static final enum IDLE:Lcom/hermes/android/ui/InstallState;

.field public static final enum INSTALLING:Lcom/hermes/android/ui/InstallState;

.field public static final enum REVIEWING:Lcom/hermes/android/ui/InstallState;


# direct methods
.method private static final synthetic $values()[Lcom/hermes/android/ui/InstallState;
    .locals 5

    sget-object v0, Lcom/hermes/android/ui/InstallState;->IDLE:Lcom/hermes/android/ui/InstallState;

    sget-object v1, Lcom/hermes/android/ui/InstallState;->REVIEWING:Lcom/hermes/android/ui/InstallState;

    sget-object v2, Lcom/hermes/android/ui/InstallState;->INSTALLING:Lcom/hermes/android/ui/InstallState;

    sget-object v3, Lcom/hermes/android/ui/InstallState;->DONE:Lcom/hermes/android/ui/InstallState;

    sget-object v4, Lcom/hermes/android/ui/InstallState;->FAILED:Lcom/hermes/android/ui/InstallState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/hermes/android/ui/InstallState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 189
    new-instance v0, Lcom/hermes/android/ui/InstallState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/ui/InstallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/ui/InstallState;->IDLE:Lcom/hermes/android/ui/InstallState;

    new-instance v0, Lcom/hermes/android/ui/InstallState;

    const-string v1, "REVIEWING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/ui/InstallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/ui/InstallState;->REVIEWING:Lcom/hermes/android/ui/InstallState;

    new-instance v0, Lcom/hermes/android/ui/InstallState;

    const-string v1, "INSTALLING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/ui/InstallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/ui/InstallState;->INSTALLING:Lcom/hermes/android/ui/InstallState;

    new-instance v0, Lcom/hermes/android/ui/InstallState;

    const-string v1, "DONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/ui/InstallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/ui/InstallState;->DONE:Lcom/hermes/android/ui/InstallState;

    new-instance v0, Lcom/hermes/android/ui/InstallState;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/ui/InstallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/ui/InstallState;->FAILED:Lcom/hermes/android/ui/InstallState;

    invoke-static {}, Lcom/hermes/android/ui/InstallState;->$values()[Lcom/hermes/android/ui/InstallState;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/ui/InstallState;->$VALUES:[Lcom/hermes/android/ui/InstallState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/ui/InstallState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/hermes/android/ui/InstallState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hermes/android/ui/InstallState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hermes/android/ui/InstallState;
    .locals 1

    const-class v0, Lcom/hermes/android/ui/InstallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 189
    check-cast p0, Lcom/hermes/android/ui/InstallState;

    return-object p0
.end method

.method public static values()[Lcom/hermes/android/ui/InstallState;
    .locals 1

    sget-object v0, Lcom/hermes/android/ui/InstallState;->$VALUES:[Lcom/hermes/android/ui/InstallState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 189
    check-cast v0, [Lcom/hermes/android/ui/InstallState;

    return-object v0
.end method
