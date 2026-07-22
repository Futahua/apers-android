.class public abstract Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;
.super Ljava/lang/Object;
.source "XaiOauthRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/oauth/XaiOauthRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DiscoveryResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Failure;,
        Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;",
        "",
        "<init>",
        "()V",
        "Success",
        "Failure",
        "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Failure;",
        "Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Success;",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;-><init>()V

    return-void
.end method
