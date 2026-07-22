.class public Lorg/yaml/snakeyaml/LoaderOptions;
.super Ljava/lang/Object;
.source "LoaderOptions.java"


# instance fields
.field private allowDuplicateKeys:Z

.field private allowRecursiveKeys:Z

.field private codePointLimit:I

.field private enumCaseSensitive:Z

.field private maxAliasesForCollections:I

.field private nestingDepthLimit:I

.field private processComments:Z

.field private tagInspector:Lorg/yaml/snakeyaml/inspector/TagInspector;

.field private wrappedToRootException:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    const/16 v2, 0x32

    .line 28
    iput v2, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    .line 31
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    .line 33
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->processComments:Z

    .line 35
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->enumCaseSensitive:Z

    .line 37
    iput v2, p0, Lorg/yaml/snakeyaml/LoaderOptions;->nestingDepthLimit:I

    const/high16 v0, 0x300000

    .line 39
    iput v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->codePointLimit:I

    .line 44
    new-instance v0, Lorg/yaml/snakeyaml/inspector/UnTrustedTagInspector;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/inspector/UnTrustedTagInspector;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->tagInspector:Lorg/yaml/snakeyaml/inspector/TagInspector;

    return-void
.end method


# virtual methods
.method public final getAllowRecursiveKeys()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    return v0
.end method

.method public final getCodePointLimit()I
    .locals 1

    .line 196
    iget v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->codePointLimit:I

    return v0
.end method

.method public final getMaxAliasesForCollections()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    return v0
.end method

.method public final getNestingDepthLimit()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->nestingDepthLimit:I

    return v0
.end method

.method public getTagInspector()Lorg/yaml/snakeyaml/inspector/TagInspector;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->tagInspector:Lorg/yaml/snakeyaml/inspector/TagInspector;

    return-object v0
.end method

.method public final isAllowDuplicateKeys()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    return v0
.end method

.method public final isEnumCaseSensitive()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->enumCaseSensitive:Z

    return v0
.end method

.method public final isProcessComments()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->processComments:Z

    return v0
.end method

.method public final isWrappedToRootException()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    return v0
.end method

.method public setAllowDuplicateKeys(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowDuplicateKeys:Z

    return-void
.end method

.method public setAllowRecursiveKeys(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->allowRecursiveKeys:Z

    return-void
.end method

.method public setCodePointLimit(I)V
    .locals 0

    .line 206
    iput p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->codePointLimit:I

    return-void
.end method

.method public setEnumCaseSensitive(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->enumCaseSensitive:Z

    return-void
.end method

.method public setMaxAliasesForCollections(I)V
    .locals 0

    .line 109
    iput p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->maxAliasesForCollections:I

    return-void
.end method

.method public setNestingDepthLimit(I)V
    .locals 0

    .line 187
    iput p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->nestingDepthLimit:I

    return-void
.end method

.method public setProcessComments(Z)Lorg/yaml/snakeyaml/LoaderOptions;
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->processComments:Z

    return-object p0
.end method

.method public setTagInspector(Lorg/yaml/snakeyaml/inspector/TagInspector;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->tagInspector:Lorg/yaml/snakeyaml/inspector/TagInspector;

    return-void
.end method

.method public setWrappedToRootException(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/LoaderOptions;->wrappedToRootException:Z

    return-void
.end method
