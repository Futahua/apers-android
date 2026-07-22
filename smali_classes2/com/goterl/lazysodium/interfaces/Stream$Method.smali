.class public final enum Lcom/goterl/lazysodium/interfaces/Stream$Method;
.super Ljava/lang/Enum;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/goterl/lazysodium/interfaces/Stream$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/goterl/lazysodium/interfaces/Stream$Method;

.field public static final enum CHACHA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

.field public static final enum CHACHA20_IETF:Lcom/goterl/lazysodium/interfaces/Stream$Method;

.field public static final enum SALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

.field public static final enum XSALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;


# direct methods
.method private static synthetic $values()[Lcom/goterl/lazysodium/interfaces/Stream$Method;
    .locals 4

    .line 49
    sget-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    sget-object v1, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20_IETF:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    sget-object v2, Lcom/goterl/lazysodium/interfaces/Stream$Method;->SALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    sget-object v3, Lcom/goterl/lazysodium/interfaces/Stream$Method;->XSALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    filled-new-array {v0, v1, v2, v3}, [Lcom/goterl/lazysodium/interfaces/Stream$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;

    const-string v1, "CHACHA20"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/Stream$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    .line 51
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;

    const-string v1, "CHACHA20_IETF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/Stream$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20_IETF:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    .line 52
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;

    const-string v1, "SALSA20"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/Stream$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->SALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    .line 53
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;

    const-string v1, "XSALSA20"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/Stream$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->XSALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    .line 49
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->$values()[Lcom/goterl/lazysodium/interfaces/Stream$Method;

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->$VALUES:[Lcom/goterl/lazysodium/interfaces/Stream$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Stream$Method;
    .locals 1

    .line 49
    const-class v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/goterl/lazysodium/interfaces/Stream$Method;

    return-object p0
.end method

.method public static values()[Lcom/goterl/lazysodium/interfaces/Stream$Method;
    .locals 1

    .line 49
    sget-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->$VALUES:[Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {v0}, [Lcom/goterl/lazysodium/interfaces/Stream$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/goterl/lazysodium/interfaces/Stream$Method;

    return-object v0
.end method
