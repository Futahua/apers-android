.class public Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;
.super Lorg/yaml/snakeyaml/constructor/Constructor;
.source "CustomClassLoaderConstructor.java"


# instance fields
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ClassLoader;",
            "Lorg/yaml/snakeyaml/LoaderOptions;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p3}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/LoaderOptions;)V

    if-eqz p2, :cond_0

    .line 48
    iput-object p2, p0, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;->loader:Ljava/lang/ClassLoader;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Loader must be provided."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 1

    .line 32
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0, p1, p2}, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lorg/yaml/snakeyaml/LoaderOptions;)V

    return-void
.end method


# virtual methods
.method protected getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 60
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;->loader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
