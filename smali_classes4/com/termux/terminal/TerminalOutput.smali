.class public abstract Lcom/termux/terminal/TerminalOutput;
.super Ljava/lang/Object;
.source "TerminalOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBell()V
.end method

.method public abstract onColorsChanged()V
.end method

.method public abstract onCopyTextToClipboard(Ljava/lang/String;)V
.end method

.method public abstract onPasteTextFromClipboard()V
.end method

.method public abstract titleChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final write(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract write([BII)V
.end method
