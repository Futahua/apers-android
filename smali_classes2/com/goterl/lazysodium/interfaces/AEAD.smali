.class public interface abstract Lcom/goterl/lazysodium/interfaces/AEAD;
.super Ljava/lang/Object;
.source "AEAD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/AEAD$StateAES;,
        Lcom/goterl/lazysodium/interfaces/AEAD$Lazy;,
        Lcom/goterl/lazysodium/interfaces/AEAD$Native;,
        Lcom/goterl/lazysodium/interfaces/AEAD$Method;
    }
.end annotation


# static fields
.field public static final AES256GCM_ABYTES:I = 0x10

.field public static final AES256GCM_KEYBYTES:I = 0x20

.field public static final AES256GCM_NPUBBYTES:I = 0xc

.field public static final AES256GCM_NSECBYTES:I = 0x0

.field public static final CHACHA20POLY1305_ABYTES:I = 0x10

.field public static final CHACHA20POLY1305_IETF_ABYTES:I = 0x10

.field public static final CHACHA20POLY1305_IETF_KEYBYTES:I = 0x20

.field public static final CHACHA20POLY1305_IETF_NPUBBYTES:I = 0xc

.field public static final CHACHA20POLY1305_KEYBYTES:I = 0x20

.field public static final CHACHA20POLY1305_NPUBBYTES:I = 0x8

.field public static final XCHACHA20POLY1305_IETF_ABYTES:I = 0x10

.field public static final XCHACHA20POLY1305_IETF_KEYBYTES:I = 0x20

.field public static final XCHACHA20POLY1305_IETF_NPUBBYTES:I = 0x18
