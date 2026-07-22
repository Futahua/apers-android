.class public interface abstract Lcom/goterl/lazysodium/interfaces/SecretStream;
.super Ljava/lang/Object;
.source "SecretStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/SecretStream$State;,
        Lcom/goterl/lazysodium/interfaces/SecretStream$Lazy;,
        Lcom/goterl/lazysodium/interfaces/SecretStream$Native;,
        Lcom/goterl/lazysodium/interfaces/SecretStream$Checker;
    }
.end annotation


# static fields
.field public static final ABYTES:I = 0x11

.field public static final CHACHA20_IETF_NONCEBYTES:I = 0xc

.field public static final HEADERBYTES:I = 0x18

.field public static final KEYBYTES:I = 0x20

.field public static final MESSAGEBYTES_MAX:J = 0x800000000L

.field public static final NONCEBYTES:I = 0xc

.field public static final TAG_FINAL:B = 0x3t

.field public static final TAG_MESSAGE:B = 0x0t

.field public static final TAG_PUSH:B = 0x1t

.field public static final TAG_REKEY:B = 0x2t

.field public static final XCHACHA20POLY1305_TAG_FINAL:B = 0x3t

.field public static final XCHACHA20POLY1305_TAG_MESSAGE:B = 0x0t

.field public static final XCHACHA20POLY1305_TAG_PUSH:B = 0x1t

.field public static final XCHACHA20POLY1305_TAG_REKEY:B = 0x2t
