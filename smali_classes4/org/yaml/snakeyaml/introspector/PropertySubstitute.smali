.class public Lorg/yaml/snakeyaml/introspector/PropertySubstitute;
.super Lorg/yaml/snakeyaml/introspector/Property;
.source "PropertySubstitute.java"


# static fields
.field private static final log:Lorg/yaml/snakeyaml/internal/Logger;


# instance fields
.field private delegate:Lorg/yaml/snakeyaml/introspector/Property;

.field private field:Ljava/lang/reflect/Field;

.field private filler:Z

.field protected parameters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient read:Ljava/lang/reflect/Method;

.field private final readMethod:Ljava/lang/String;

.field protected targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient write:Ljava/lang/reflect/Method;

.field private final writeMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/yaml/snakeyaml/internal/Logger;->getLogger(Ljava/lang/String;)Lorg/yaml/snakeyaml/internal/Logger;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Lorg/yaml/snakeyaml/internal/Logger;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
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

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    iput-object p3, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->readMethod:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p5}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setActualTypeArguments([Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 58
    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method private varargs discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 194
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 196
    array-length v6, v5

    array-length v7, p3

    if-eq v6, v7, :cond_0

    goto :goto_3

    :cond_0
    const/4 v6, 0x1

    move v7, v2

    move v8, v6

    .line 200
    :goto_2
    array-length v9, v5

    if-ge v7, v9, :cond_2

    .line 201
    aget-object v9, v5, v7

    aget-object v10, p3, v7

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    move v8, v2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    .line 206
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_5
    sget-object p1, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Lorg/yaml/snakeyaml/internal/Logger;

    sget-object v0, Lorg/yaml/snakeyaml/internal/Logger$Level;->WARNING:Lorg/yaml/snakeyaml/internal/Logger$Level;

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/internal/Logger;->isLoggable(Lorg/yaml/snakeyaml/internal/Logger$Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    .line 213
    const-string p3, "Failed to find [%s(%d args)] for %s.%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/yaml/snakeyaml/internal/Logger;->warn(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 114
    const-string v0, "\' on object "

    :try_start_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 115
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v1, p1}, Lorg/yaml/snakeyaml/introspector/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 127
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No getter or delegate for property \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 120
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find getter for property \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActualTypeArguments()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/Property;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 139
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getAnnotations()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 221
    invoke-super {p0}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 230
    invoke-super {p0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isReadable()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 80
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    if-nez v1, :cond_0

    .line 81
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_6

    .line 83
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 84
    check-cast p2, Ljava/util/Collection;

    .line 85
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 89
    check-cast p2, Ljava/util/Map;

    .line 90
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 97
    iget-object v2, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_3
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 103
    :cond_4
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {v0, p1, p2}, Lorg/yaml/snakeyaml/introspector/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 106
    :cond_5
    sget-object p2, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Lorg/yaml/snakeyaml/internal/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No setter/delegate for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' on object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/yaml/snakeyaml/internal/Logger;->warn(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public varargs setActualTypeArguments([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 70
    array-length v0, p1

    if-lez v0, :cond_0

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/yaml/snakeyaml/introspector/Property;)V
    .locals 2

    .line 248
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    .line 249
    iget-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    .line 251
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method

.method public setTargetType(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    if-eq v0, p1, :cond_5

    .line 157
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    .line 159
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 162
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 164
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 166
    iput-object v6, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    sget-object v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Lorg/yaml/snakeyaml/internal/Logger;

    sget-object v1, Lorg/yaml/snakeyaml/internal/Logger$Level;->WARNING:Lorg/yaml/snakeyaml/internal/Logger$Level;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/internal/Logger;->isLoggable(Lorg/yaml/snakeyaml/internal/Logger$Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Failed to find field for %s.%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/internal/Logger;->warn(Ljava/lang/String;)V

    .line 177
    :cond_3
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->readMethod:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 178
    new-array v1, v3, [Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    .line 180
    :cond_4
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 181
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    .line 182
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-direct {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    .line 183
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 184
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    .line 185
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    :cond_5
    return-void
.end method
