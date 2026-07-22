.class public interface abstract Lcom/goterl/lazysodium/interfaces/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/Hash$State512;,
        Lcom/goterl/lazysodium/interfaces/Hash$State256;,
        Lcom/goterl/lazysodium/interfaces/Hash$Lazy;,
        Lcom/goterl/lazysodium/interfaces/Hash$Native;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x40

.field public static final SHA256_BYTES:I = 0x20

.field public static final SHA512_BYTES:I = 0x40
