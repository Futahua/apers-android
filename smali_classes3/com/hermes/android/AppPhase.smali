.class public final enum Lcom/hermes/android/AppPhase;
.super Ljava/lang/Enum;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hermes/android/AppPhase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hermes/android/AppPhase;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LOADING",
        "ONBOARDING",
        "PAIRING",
        "INSTALLING",
        "READY",
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

.field private static final synthetic $VALUES:[Lcom/hermes/android/AppPhase;

.field public static final enum INSTALLING:Lcom/hermes/android/AppPhase;

.field public static final enum LOADING:Lcom/hermes/android/AppPhase;

.field public static final enum ONBOARDING:Lcom/hermes/android/AppPhase;

.field public static final enum PAIRING:Lcom/hermes/android/AppPhase;

.field public static final enum READY:Lcom/hermes/android/AppPhase;


# direct methods
.method private static final synthetic $values()[Lcom/hermes/android/AppPhase;
    .locals 5

    sget-object v0, Lcom/hermes/android/AppPhase;->LOADING:Lcom/hermes/android/AppPhase;

    sget-object v1, Lcom/hermes/android/AppPhase;->ONBOARDING:Lcom/hermes/android/AppPhase;

    sget-object v2, Lcom/hermes/android/AppPhase;->PAIRING:Lcom/hermes/android/AppPhase;

    sget-object v3, Lcom/hermes/android/AppPhase;->INSTALLING:Lcom/hermes/android/AppPhase;

    sget-object v4, Lcom/hermes/android/AppPhase;->READY:Lcom/hermes/android/AppPhase;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/hermes/android/AppPhase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 255
    new-instance v0, Lcom/hermes/android/AppPhase;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/AppPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/AppPhase;->LOADING:Lcom/hermes/android/AppPhase;

    new-instance v0, Lcom/hermes/android/AppPhase;

    const-string v1, "ONBOARDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/AppPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/AppPhase;->ONBOARDING:Lcom/hermes/android/AppPhase;

    new-instance v0, Lcom/hermes/android/AppPhase;

    const-string v1, "PAIRING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/AppPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/AppPhase;->PAIRING:Lcom/hermes/android/AppPhase;

    new-instance v0, Lcom/hermes/android/AppPhase;

    const-string v1, "INSTALLING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/AppPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/AppPhase;->INSTALLING:Lcom/hermes/android/AppPhase;

    new-instance v0, Lcom/hermes/android/AppPhase;

    const-string v1, "READY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/AppPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/AppPhase;->READY:Lcom/hermes/android/AppPhase;

    invoke-static {}, Lcom/hermes/android/AppPhase;->$values()[Lcom/hermes/android/AppPhase;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/AppPhase;->$VALUES:[Lcom/hermes/android/AppPhase;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/AppPhase;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/hermes/android/AppPhase;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hermes/android/AppPhase;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hermes/android/AppPhase;
    .locals 1

    const-class v0, Lcom/hermes/android/AppPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 255
    check-cast p0, Lcom/hermes/android/AppPhase;

    return-object p0
.end method

.method public static values()[Lcom/hermes/android/AppPhase;
    .locals 1

    sget-object v0, Lcom/hermes/android/AppPhase;->$VALUES:[Lcom/hermes/android/AppPhase;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 255
    check-cast v0, [Lcom/hermes/android/AppPhase;

    return-object v0
.end method
