.class public abstract Lcom/hermes/android/llama/ModelDownloadState;
.super Ljava/lang/Object;
.source "ModelDownloadState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/llama/ModelDownloadState$Downloading;,
        Lcom/hermes/android/llama/ModelDownloadState$Failed;,
        Lcom/hermes/android/llama/ModelDownloadState$FailureReason;,
        Lcom/hermes/android/llama/ModelDownloadState$Idle;,
        Lcom/hermes/android/llama/ModelDownloadState$Ready;,
        Lcom/hermes/android/llama/ModelDownloadState$Verifying;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\u0008\tB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0005\n\u000b\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hermes/android/llama/ModelDownloadState;",
        "",
        "<init>",
        "()V",
        "Idle",
        "Downloading",
        "Verifying",
        "Ready",
        "Failed",
        "FailureReason",
        "Lcom/hermes/android/llama/ModelDownloadState$Downloading;",
        "Lcom/hermes/android/llama/ModelDownloadState$Failed;",
        "Lcom/hermes/android/llama/ModelDownloadState$Idle;",
        "Lcom/hermes/android/llama/ModelDownloadState$Ready;",
        "Lcom/hermes/android/llama/ModelDownloadState$Verifying;",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/llama/ModelDownloadState;-><init>()V

    return-void
.end method
