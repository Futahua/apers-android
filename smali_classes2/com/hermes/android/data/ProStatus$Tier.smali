.class public final enum Lcom/hermes/android/data/ProStatus$Tier;
.super Ljava/lang/Enum;
.source "ProStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/ProStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hermes/android/data/ProStatus$Tier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/hermes/android/data/ProStatus$Tier;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "FREE",
        "PRO",
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

.field private static final synthetic $VALUES:[Lcom/hermes/android/data/ProStatus$Tier;

.field public static final enum FREE:Lcom/hermes/android/data/ProStatus$Tier;

.field public static final enum PRO:Lcom/hermes/android/data/ProStatus$Tier;


# direct methods
.method private static final synthetic $values()[Lcom/hermes/android/data/ProStatus$Tier;
    .locals 2

    sget-object v0, Lcom/hermes/android/data/ProStatus$Tier;->FREE:Lcom/hermes/android/data/ProStatus$Tier;

    sget-object v1, Lcom/hermes/android/data/ProStatus$Tier;->PRO:Lcom/hermes/android/data/ProStatus$Tier;

    filled-new-array {v0, v1}, [Lcom/hermes/android/data/ProStatus$Tier;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/hermes/android/data/ProStatus$Tier;

    const-string v1, "FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/data/ProStatus$Tier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/data/ProStatus$Tier;->FREE:Lcom/hermes/android/data/ProStatus$Tier;

    new-instance v0, Lcom/hermes/android/data/ProStatus$Tier;

    const-string v1, "PRO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hermes/android/data/ProStatus$Tier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hermes/android/data/ProStatus$Tier;->PRO:Lcom/hermes/android/data/ProStatus$Tier;

    invoke-static {}, Lcom/hermes/android/data/ProStatus$Tier;->$values()[Lcom/hermes/android/data/ProStatus$Tier;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/data/ProStatus$Tier;->$VALUES:[Lcom/hermes/android/data/ProStatus$Tier;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/data/ProStatus$Tier;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/hermes/android/data/ProStatus$Tier;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hermes/android/data/ProStatus$Tier;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hermes/android/data/ProStatus$Tier;
    .locals 1

    const-class v0, Lcom/hermes/android/data/ProStatus$Tier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 16
    check-cast p0, Lcom/hermes/android/data/ProStatus$Tier;

    return-object p0
.end method

.method public static values()[Lcom/hermes/android/data/ProStatus$Tier;
    .locals 1

    sget-object v0, Lcom/hermes/android/data/ProStatus$Tier;->$VALUES:[Lcom/hermes/android/data/ProStatus$Tier;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, [Lcom/hermes/android/data/ProStatus$Tier;

    return-object v0
.end method
