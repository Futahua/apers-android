.class public interface abstract Lcom/goterl/lazysodium/interfaces/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;,
        Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;,
        Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;,
        Lcom/goterl/lazysodium/interfaces/Auth$Type;,
        Lcom/goterl/lazysodium/interfaces/Auth$Lazy;,
        Lcom/goterl/lazysodium/interfaces/Auth$Native;,
        Lcom/goterl/lazysodium/interfaces/Auth$Checker;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x20

.field public static final HMACSHA256_BYTES:I = 0x20

.field public static final HMACSHA256_KEYBYTES:I = 0x20

.field public static final HMACSHA512256_BYTES:I = 0x20

.field public static final HMACSHA512256_KEYBYTES:I = 0x20

.field public static final HMACSHA512_BYTES:I = 0x40

.field public static final HMACSHA512_KEYBYTES:I = 0x20

.field public static final KEYBYTES:I = 0x20
