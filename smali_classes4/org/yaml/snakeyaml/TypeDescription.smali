.class public Lorg/yaml/snakeyaml/TypeDescription;
.super Ljava/lang/Object;
.source "TypeDescription.java"


# static fields
.field private static final log:Lorg/yaml/snakeyaml/internal/Logger;


# instance fields
.field protected beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field private transient delegatesChecked:Z

.field private transient dumpProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation
.end field

.field protected excludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private impl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected includes:[Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/PropertySubstitute;",
            ">;"
        }
    .end annotation
.end field

.field private transient propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

.field private final tag:Lorg/yaml/snakeyaml/nodes/Tag;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/yaml/snakeyaml/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/yaml/snakeyaml/internal/Logger;->getLogger(Ljava/lang/String;)Lorg/yaml/snakeyaml/internal/Logger;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/TypeDescription;->log:Lorg/yaml/snakeyaml/internal/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p2}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    .line 69
    iput-object p2, p0, Lorg/yaml/snakeyaml/TypeDescription;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 70
    iput-object p3, p0, Lorg/yaml/snakeyaml/TypeDescription;->impl:Ljava/lang/Class;

    .line 71
    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    return-void
.end method

.method private checkDelegates()V
    .locals 3

    .line 153
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    .line 156
    :try_start_0
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/TypeDescription;->discoverProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setDelegate(Lorg/yaml/snakeyaml/introspector/Property;)V
    :try_end_0
    .catch Lorg/yaml/snakeyaml/error/YAMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->delegatesChecked:Z

    return-void
.end method

.method private discoverProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 3

    .line 164
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {v0, v2, p1, v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public varargs addPropertyParameters(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 139
    invoke-virtual/range {v1 .. v6}, Lorg/yaml/snakeyaml/TypeDescription;->substituteProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    .line 142
    invoke-virtual {p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setActualTypeArguments([Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public finalizeConstruction(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public getProperties()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-eqz v0, :cond_e

    .line 226
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 227
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    .line 228
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 229
    iget-object v4, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    iget-object v4, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-virtual {p0, v3}, Lorg/yaml/snakeyaml/TypeDescription;->getProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v0

    .line 236
    :cond_3
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 237
    :cond_4
    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    .line 239
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 240
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v0

    .line 243
    :cond_5
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    .line 244
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/introspector/Property;

    .line 245
    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 246
    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 249
    :cond_7
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v0

    .line 252
    :cond_8
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->delegatesChecked:Z

    if-nez v1, :cond_9

    .line 253
    invoke-direct {p0}, Lorg/yaml/snakeyaml/TypeDescription;->checkDelegates()V

    .line 256
    :cond_9
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    .line 258
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/introspector/Property;

    .line 259
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/Property;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 260
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 264
    :cond_b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/introspector/Property;

    .line 265
    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 266
    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 270
    :cond_d
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 1

    .line 174
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->delegatesChecked:Z

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lorg/yaml/snakeyaml/TypeDescription;->checkDelegates()V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/yaml/snakeyaml/introspector/Property;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/TypeDescription;->discoverProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTag()Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public newInstance(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 3

    .line 298
    iget-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->impl:Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 300
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v2, 0x1

    .line 301
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 302
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 304
    sget-object v1, Lorg/yaml/snakeyaml/TypeDescription;->log:Lorg/yaml/snakeyaml/internal/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/yaml/snakeyaml/internal/Logger;->warn(Ljava/lang/String;)V

    .line 305
    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->impl:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public putListPropertyType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/TypeDescription;->addPropertyParameters(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public putMapPropertyType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 126
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/TypeDescription;->addPropertyParameters(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public varargs setExcludes([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 212
    array-length v0, p1

    if-lez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    .line 214
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method public varargs setIncludes([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 208
    array-length v0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    return-void
.end method

.method public setupPropertyType(Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public varargs substituteProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 191
    new-instance v6, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lorg/yaml/snakeyaml/TypeDescription;->substituteProperty(Lorg/yaml/snakeyaml/introspector/PropertySubstitute;)V

    return-void
.end method

.method public substituteProperty(Lorg/yaml/snakeyaml/introspector/PropertySubstitute;)V
    .locals 2

    .line 195
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setTargetType(Ljava/lang/Class;)V

    .line 199
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeDescription for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/TypeDescription;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
