.class public interface abstract Lcom/goterl/lazysodium/interfaces/Base;
.super Ljava/lang/Object;
.source "Base.java"


# virtual methods
.method public abstract bytes(Ljava/lang/String;)[B
.end method

.method public abstract removeNulls([B)[B
.end method

.method public abstract res(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation
.end method

.method public abstract str([B)Ljava/lang/String;
.end method

.method public abstract str([BLjava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract successful(I)Z
.end method

.method public abstract wrongLen(II)Z
.end method

.method public abstract wrongLen(IJ)Z
.end method

.method public abstract wrongLen([BI)Z
.end method
