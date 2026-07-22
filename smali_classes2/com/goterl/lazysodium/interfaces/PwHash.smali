.class public interface abstract Lcom/goterl/lazysodium/interfaces/PwHash;
.super Ljava/lang/Object;
.source "PwHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/PwHash$Alg;,
        Lcom/goterl/lazysodium/interfaces/PwHash$Lazy;,
        Lcom/goterl/lazysodium/interfaces/PwHash$Native;,
        Lcom/goterl/lazysodium/interfaces/PwHash$Checker;
    }
.end annotation


# static fields
.field public static final ARGON2ID_BYTES_MAX:I = 0x7fffffff

.field public static final ARGON2ID_BYTES_MIN:I = 0x10

.field public static final ARGON2ID_MEMLIMIT_INTERACTIVE:I = 0x4000000

.field public static final ARGON2ID_MEMLIMIT_MAX:I = 0x7fffffff

.field public static final ARGON2ID_MEMLIMIT_MIN:I = 0x2000

.field public static final ARGON2ID_MEMLIMIT_MODERATE:I = 0x10000000

.field public static final ARGON2ID_MEMLIMIT_SENSITIVE:I = 0x40000000

.field public static final ARGON2ID_OPSLIMIT_INTERACTIVE:J = 0x2L

.field public static final ARGON2ID_OPSLIMIT_MAX:J = 0x7fffffffL

.field public static final ARGON2ID_OPSLIMIT_MIN:J = 0x1L

.field public static final ARGON2ID_OPSLIMIT_MODERATE:J = 0x3L

.field public static final ARGON2ID_OPSLIMIT_SENSITIVE:J = 0x4L

.field public static final ARGON2ID_PASSWD_MAX:I = 0x7fffffff

.field public static final ARGON2ID_PASSWD_MIN:I = 0x0

.field public static final ARGON2ID_SALTBYTES:I = 0x10

.field public static final ARGON2ID_STR_BYTES:I = 0x80

.field public static final BYTES_MAX:I = 0x7fffffff

.field public static final BYTES_MIN:I = 0x10

.field public static final MEMLIMIT_INTERACTIVE:Lcom/sun/jna/NativeLong;

.field public static final MEMLIMIT_MAX:Lcom/sun/jna/NativeLong;

.field public static final MEMLIMIT_MIN:Lcom/sun/jna/NativeLong;

.field public static final MEMLIMIT_MODERATE:Lcom/sun/jna/NativeLong;

.field public static final MEMLIMIT_SENSITIVE:Lcom/sun/jna/NativeLong;

.field public static final OPSLIMIT_INTERACTIVE:J = 0x2L

.field public static final OPSLIMIT_MAX:J = 0x7fffffffL

.field public static final OPSLIMIT_MIN:J = 0x1L

.field public static final OPSLIMIT_MODERATE:J = 0x3L

.field public static final OPSLIMIT_SENSITIVE:J = 0x4L

.field public static final PASSWD_MAX:I = 0x7fffffff

.field public static final PASSWD_MIN:I = 0x0

.field public static final SALTBYTES:I = 0x10

.field public static final STR_BYTES:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/sun/jna/NativeLong;

    const-wide/16 v1, 0x2000

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash;->MEMLIMIT_MIN:Lcom/sun/jna/NativeLong;

    .line 64
    new-instance v0, Lcom/sun/jna/NativeLong;

    const-wide/32 v1, 0x4000000

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash;->MEMLIMIT_INTERACTIVE:Lcom/sun/jna/NativeLong;

    .line 65
    new-instance v0, Lcom/sun/jna/NativeLong;

    const-wide/32 v1, 0x40000000

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash;->MEMLIMIT_SENSITIVE:Lcom/sun/jna/NativeLong;

    .line 66
    new-instance v0, Lcom/sun/jna/NativeLong;

    const-wide/32 v1, 0x10000000

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash;->MEMLIMIT_MODERATE:Lcom/sun/jna/NativeLong;

    .line 67
    new-instance v0, Lcom/sun/jna/NativeLong;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    sput-object v0, Lcom/goterl/lazysodium/interfaces/PwHash;->MEMLIMIT_MAX:Lcom/sun/jna/NativeLong;

    return-void
.end method
