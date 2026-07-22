.class public final enum Lorg/yaml/snakeyaml/internal/Logger$Level;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/internal/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/internal/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/internal/Logger$Level;

.field public static final enum WARNING:Lorg/yaml/snakeyaml/internal/Logger$Level;


# instance fields
.field private final level:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lorg/yaml/snakeyaml/internal/Logger$Level;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "WARNING"

    invoke-direct {v0, v3, v1, v2}, Lorg/yaml/snakeyaml/internal/Logger$Level;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v0, Lorg/yaml/snakeyaml/internal/Logger$Level;->WARNING:Lorg/yaml/snakeyaml/internal/Logger$Level;

    .line 17
    filled-new-array {v0}, [Lorg/yaml/snakeyaml/internal/Logger$Level;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/internal/Logger$Level;->$VALUES:[Lorg/yaml/snakeyaml/internal/Logger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/logging/Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lorg/yaml/snakeyaml/internal/Logger$Level;->level:Ljava/util/logging/Level;

    return-void
.end method

.method static synthetic access$000(Lorg/yaml/snakeyaml/internal/Logger$Level;)Ljava/util/logging/Level;
    .locals 0

    .line 17
    iget-object p0, p0, Lorg/yaml/snakeyaml/internal/Logger$Level;->level:Ljava/util/logging/Level;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/internal/Logger$Level;
    .locals 1

    .line 17
    const-class v0, Lorg/yaml/snakeyaml/internal/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/yaml/snakeyaml/internal/Logger$Level;

    return-object p0
.end method

.method public static values()[Lorg/yaml/snakeyaml/internal/Logger$Level;
    .locals 1

    .line 17
    sget-object v0, Lorg/yaml/snakeyaml/internal/Logger$Level;->$VALUES:[Lorg/yaml/snakeyaml/internal/Logger$Level;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/internal/Logger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/internal/Logger$Level;

    return-object v0
.end method
