.class public interface abstract Lcom/goterl/lazysodium/interfaces/StreamJava;
.super Ljava/lang/Object;
.source "StreamJava.java"

# interfaces
.implements Lcom/goterl/lazysodium/interfaces/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/StreamJava$Lazy;,
        Lcom/goterl/lazysodium/interfaces/StreamJava$Native;,
        Lcom/goterl/lazysodium/interfaces/StreamJava$Method;
    }
.end annotation


# static fields
.field public static final SALSA2012_KEYBYTES:I = 0x20

.field public static final SALSA2012_MESSAGEBYTES_MAX:J = 0x7fffffffffffffffL

.field public static final SALSA2012_NONCEBYTES:I = 0x8

.field public static final SALSA208_KEYBYTES:I = 0x20

.field public static final SALSA208_MESSAGEBYTES_MAX:J = 0x7fffffffffffffffL

.field public static final SALSA208_NONCEBYTES:I = 0x8

.field public static final XCHACHA20_KEYBYTES:I = 0x20

.field public static final XCHACHA20_MESSAGEBYTES_MAX:J = 0x7fffffffffffffffL

.field public static final XCHACHA20_NONCEBYTES:I = 0x18
