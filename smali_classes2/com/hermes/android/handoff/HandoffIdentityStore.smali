.class public final Lcom/hermes/android/handoff/HandoffIdentityStore;
.super Ljava/lang/Object;
.source "HandoffIdentityStore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffIdentityStore;",
        "",
        "keyFile",
        "Ljava/io/File;",
        "crypto",
        "Lcom/hermes/android/handoff/HandoffCrypto;",
        "<init>",
        "(Ljava/io/File;Lcom/hermes/android/handoff/HandoffCrypto;)V",
        "loadOrCreate",
        "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;",
        "hardenPerms",
        "",
        "f",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final crypto:Lcom/hermes/android/handoff/HandoffCrypto;

.field private final keyFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/hermes/android/handoff/HandoffCrypto;)V
    .locals 1

    const-string v0, "keyFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crypto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->keyFile:Ljava/io/File;

    iput-object p2, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    return-void
.end method

.method private final hardenPerms(Ljava/io/File;)V
    .locals 2

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/hermes/android/handoff/HandoffIdentityStore;

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 50
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 51
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method


# virtual methods
.method public final loadOrCreate()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->keyFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->keyFile:Ljava/io/File;

    invoke-static {v0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 23
    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 26
    new-instance v1, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {v2, v0}, Lcom/hermes/android/handoff/HandoffCrypto;->publicFromPrivate([B)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;-><init>([B[B)V

    return-object v1

    .line 23
    :cond_0
    new-instance v1, Lcom/hermes/android/LocalizedIllegalArgument;

    .line 24
    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "identity key file corrupted: length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected 32)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    sget v3, Lcom/hermes/android/R$string;->handoff_err_identity_corrupt:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/hermes/android/LocalizedIllegalArgument;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw v1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto;->generateIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->keyFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->keyFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, ".idkey-"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 33
    :try_start_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 34
    invoke-direct {p0, v1}, Lcom/hermes/android/handoff/HandoffIdentityStore;->hardenPerms(Ljava/io/File;)V

    .line 35
    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->keyFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 41
    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffIdentityStore;->keyFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/hermes/android/handoff/HandoffIdentityStore;->hardenPerms(Ljava/io/File;)V

    return-object v0

    .line 35
    :cond_3
    :try_start_1
    new-instance v0, Lcom/hermes/android/LocalizedIllegalState;

    .line 36
    const-string v3, "identity key file rename failed"

    sget v4, Lcom/hermes/android/R$string;->handoff_err_identity_write:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    .line 35
    invoke-direct/range {v2 .. v7}, Lcom/hermes/android/LocalizedIllegalState;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 39
    throw v0
.end method
