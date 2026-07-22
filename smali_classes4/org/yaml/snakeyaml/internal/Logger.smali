.class public Lorg/yaml/snakeyaml/internal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/internal/Logger$Level;
    }
.end annotation


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/yaml/snakeyaml/internal/Logger;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/yaml/snakeyaml/internal/Logger;
    .locals 1

    .line 34
    new-instance v0, Lorg/yaml/snakeyaml/internal/Logger;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/internal/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isLoggable(Lorg/yaml/snakeyaml/internal/Logger$Level;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/yaml/snakeyaml/internal/Logger;->logger:Ljava/util/logging/Logger;

    invoke-static {p1}, Lorg/yaml/snakeyaml/internal/Logger$Level;->access$000(Lorg/yaml/snakeyaml/internal/Logger$Level;)Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/yaml/snakeyaml/internal/Logger;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/yaml/snakeyaml/internal/Logger$Level;->WARNING:Lorg/yaml/snakeyaml/internal/Logger$Level;

    invoke-static {v1}, Lorg/yaml/snakeyaml/internal/Logger$Level;->access$000(Lorg/yaml/snakeyaml/internal/Logger$Level;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
