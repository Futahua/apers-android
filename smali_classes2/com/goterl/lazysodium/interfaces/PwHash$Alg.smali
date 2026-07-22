.class public final enum Lcom/goterl/lazysodium/interfaces/PwHash$Alg;
.super Ljava/lang/Enum;
.source "PwHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/PwHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/goterl/lazysodium/interfaces/PwHash$Alg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

.field public static final enum PWHASH_ALG_ARGON2I13:Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

.field public static final enum PWHASH_ALG_ARGON2ID13:Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/goterl/lazysodium/interfaces/PwHash$Alg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final val:I


# direct methods
.method private static synthetic $values()[Lcom/goterl/lazysodium/interfaces/PwHash$Alg;
    .locals 2

    .line 256
    sget-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->PWHASH_ALG_ARGON2I13:Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    sget-object v1, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->PWHASH_ALG_ARGON2ID13:Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    filled-new-array {v0, v1}, [Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 257
    new-instance v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    const-string v1, "PWHASH_ALG_ARGON2I13"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->PWHASH_ALG_ARGON2I13:Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    .line 258
    new-instance v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    const-string v1, "PWHASH_ALG_ARGON2ID13"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->PWHASH_ALG_ARGON2ID13:Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    .line 256
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->$values()[Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->$VALUES:[Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    .line 278
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->getMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 263
    iput p3, p0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->val:I

    return-void
.end method

.method public static getDefault()Lcom/goterl/lazysodium/interfaces/PwHash$Alg;
    .locals 1

    .line 271
    sget-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->PWHASH_ALG_ARGON2ID13:Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    return-object v0
.end method

.method private static getMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/goterl/lazysodium/interfaces/PwHash$Alg;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->values()[Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 283
    iget v5, v4, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->val:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(I)Lcom/goterl/lazysodium/interfaces/PwHash$Alg;
    .locals 1

    .line 275
    sget-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/PwHash$Alg;
    .locals 1

    .line 256
    const-class v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    return-object p0
.end method

.method public static values()[Lcom/goterl/lazysodium/interfaces/PwHash$Alg;
    .locals 1

    .line 256
    sget-object v0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->$VALUES:[Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    invoke-virtual {v0}, [Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/goterl/lazysodium/interfaces/PwHash$Alg;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->val:I

    return v0
.end method
