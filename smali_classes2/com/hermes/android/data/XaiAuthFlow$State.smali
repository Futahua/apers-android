.class public abstract Lcom/hermes/android/data/XaiAuthFlow$State;
.super Ljava/lang/Object;
.source "XaiAuthFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/XaiAuthFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/XaiAuthFlow$State$AwaitingCallback;,
        Lcom/hermes/android/data/XaiAuthFlow$State$Discovering;,
        Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;,
        Lcom/hermes/android/data/XaiAuthFlow$State$Failed;,
        Lcom/hermes/android/data/XaiAuthFlow$State$Idle;,
        Lcom/hermes/android/data/XaiAuthFlow$State$Starting;,
        Lcom/hermes/android/data/XaiAuthFlow$State$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\u0008\t\nB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0007\u000b\u000c\r\u000e\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hermes/android/data/XaiAuthFlow$State;",
        "",
        "<init>",
        "()V",
        "Idle",
        "Discovering",
        "Starting",
        "AwaitingCallback",
        "Exchanging",
        "Success",
        "Failed",
        "Lcom/hermes/android/data/XaiAuthFlow$State$AwaitingCallback;",
        "Lcom/hermes/android/data/XaiAuthFlow$State$Discovering;",
        "Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;",
        "Lcom/hermes/android/data/XaiAuthFlow$State$Failed;",
        "Lcom/hermes/android/data/XaiAuthFlow$State$Idle;",
        "Lcom/hermes/android/data/XaiAuthFlow$State$Starting;",
        "Lcom/hermes/android/data/XaiAuthFlow$State$Success;",
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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/data/XaiAuthFlow$State;-><init>()V

    return-void
.end method
