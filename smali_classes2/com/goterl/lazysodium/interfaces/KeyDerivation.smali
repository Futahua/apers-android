.class public interface abstract Lcom/goterl/lazysodium/interfaces/KeyDerivation;
.super Ljava/lang/Object;
.source "KeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/KeyDerivation$Checker;,
        Lcom/goterl/lazysodium/interfaces/KeyDerivation$Lazy;,
        Lcom/goterl/lazysodium/interfaces/KeyDerivation$Native;
    }
.end annotation


# static fields
.field public static final BLAKE2B_BYTES_MAX:I = 0x40

.field public static final BLAKE2B_BYTES_MIN:I = 0x10

.field public static final BYTES_MAX:I = 0x40

.field public static final BYTES_MIN:I = 0x10

.field public static final CONTEXT_BYTES:I = 0x8

.field public static final MASTER_KEY_BYTES:I = 0x20
