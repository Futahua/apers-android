.class public final Lcom/hermes/android/LocalizedIllegalState;
.super Ljava/lang/IllegalStateException;
.source "UiError.kt"

# interfaces
.implements Lcom/hermes/android/LocalizedError;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\tX\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hermes/android/LocalizedIllegalState;",
        "Ljava/lang/IllegalStateException;",
        "Lkotlin/IllegalStateException;",
        "Lcom/hermes/android/LocalizedError;",
        "msg",
        "",
        "resId",
        "",
        "formatArgs",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I[Ljava/lang/Object;)V",
        "getResId",
        "()I",
        "getFormatArgs",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final formatArgs:[Ljava/lang/Object;

.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    iput p2, p0, Lcom/hermes/android/LocalizedIllegalState;->resId:I

    .line 37
    iput-object p3, p0, Lcom/hermes/android/LocalizedIllegalState;->formatArgs:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 37
    new-array p3, v0, [Ljava/lang/Object;

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/hermes/android/LocalizedIllegalState;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFormatArgs()[Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/hermes/android/LocalizedIllegalState;->formatArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/hermes/android/LocalizedIllegalState;->resId:I

    return v0
.end method
