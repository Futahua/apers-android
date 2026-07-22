.class public interface abstract Lcom/goterl/lazysodium/interfaces/KeyExchange;
.super Ljava/lang/Object;
.source "KeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/KeyExchange$Lazy;,
        Lcom/goterl/lazysodium/interfaces/KeyExchange$Native;
    }
.end annotation


# static fields
.field public static final PRIMITIVE:Ljava/lang/String; = "x25519blake2b"

.field public static final PUBLICKEYBYTES:I = 0x20

.field public static final SECRETKEYBYTES:I = 0x20

.field public static final SEEDBYTES:I = 0x20

.field public static final SESSIONKEYBYTES:I = 0x20
