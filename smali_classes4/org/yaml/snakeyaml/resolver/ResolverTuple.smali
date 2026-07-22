.class final Lorg/yaml/snakeyaml/resolver/ResolverTuple;
.super Ljava/lang/Object;
.source "ResolverTuple.java"


# instance fields
.field private final limit:I

.field private final regexp:Ljava/util/regex/Pattern;

.field private final tag:Lorg/yaml/snakeyaml/nodes/Tag;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 27
    iput-object p2, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->regexp:Ljava/util/regex/Pattern;

    .line 28
    iput p3, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->limit:I

    return-void
.end method


# virtual methods
.method public getLimit()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->limit:I

    return v0
.end method

.method public getRegexp()Ljava/util/regex/Pattern;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->regexp:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getTag()Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tuple tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " regexp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->regexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
