.class public final Lcom/hermes/android/UiErrorKt;
.super Ljava/lang/Object;
.source "UiError.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "uiMessage",
        "",
        "",
        "context",
        "Landroid/content/Context;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final uiMessage(Ljava/lang/Throwable;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p0, Lcom/hermes/android/LocalizedError;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/hermes/android/LocalizedError;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    const-string v1, "getString(...)"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hermes/android/LocalizedError;->getResId()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/hermes/android/LocalizedError;->getResId()I

    move-result p0

    invoke-interface {v0}, Lcom/hermes/android/LocalizedError;->getFormatArgs()[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    sget p0, Lcom/hermes/android/R$string;->error_unknown:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object p0
.end method
