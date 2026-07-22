.class public interface abstract Lcom/goterl/lazysodium/interfaces/SecretBox;
.super Ljava/lang/Object;
.source "SecretBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/SecretBox$Lazy;,
        Lcom/goterl/lazysodium/interfaces/SecretBox$Native;
    }
.end annotation


# static fields
.field public static final KEYBYTES:I = 0x20

.field public static final MACBYTES:I = 0x10

.field public static final NONCEBYTES:I = 0x18

.field public static final XSALSA20POLY1305_KEYBYTES:I = 0x20

.field public static final XSALSA20POLY1305_MACBYTES:I = 0x10

.field public static final XSALSA20POLY1305_NONCEBYTES:I = 0x18
