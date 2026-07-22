.class public final enum Lcom/goterl/lazysodium/interfaces/AEAD$Method;
.super Ljava/lang/Enum;
.source "AEAD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/AEAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/goterl/lazysodium/interfaces/AEAD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/goterl/lazysodium/interfaces/AEAD$Method;

.field public static final enum AES256GCM:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

.field public static final enum CHACHA20_POLY1305:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

.field public static final enum CHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

.field public static final enum XCHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;


# direct methods
.method private static synthetic $values()[Lcom/goterl/lazysodium/interfaces/AEAD$Method;
    .locals 4

    .line 56
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    sget-object v1, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    sget-object v2, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->XCHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    sget-object v3, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->AES256GCM:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    filled-new-array {v0, v1, v2, v3}, [Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    const-string v1, "CHACHA20_POLY1305"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    .line 58
    new-instance v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    const-string v1, "CHACHA20_POLY1305_IETF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    .line 59
    new-instance v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    const-string v1, "XCHACHA20_POLY1305_IETF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->XCHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    .line 60
    new-instance v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    const-string v1, "AES256GCM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->AES256GCM:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    .line 56
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->$values()[Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->$VALUES:[Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/AEAD$Method;
    .locals 1

    .line 56
    const-class v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    return-object p0
.end method

.method public static values()[Lcom/goterl/lazysodium/interfaces/AEAD$Method;
    .locals 1

    .line 56
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->$VALUES:[Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v0}, [Lcom/goterl/lazysodium/interfaces/AEAD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    return-object v0
.end method
