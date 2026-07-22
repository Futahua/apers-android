.class public final Lcom/hermes/android/MainActivity$serviceConnection$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/hermes/android/MainActivity$serviceConnection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "binder",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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


# instance fields
.field final synthetic this$0:Lcom/hermes/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/hermes/android/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    const-string v0, "null cannot be cast to non-null type com.hermes.android.HermesService.LocalBinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/hermes/android/HermesService$LocalBinder;

    invoke-virtual {p2}, Lcom/hermes/android/HermesService$LocalBinder;->getService()Lcom/hermes/android/HermesService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hermes/android/MainActivity;->access$setHermesService$p(Lcom/hermes/android/MainActivity;Lcom/hermes/android/HermesService;)V

    .line 137
    iget-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/hermes/android/MainActivity;->access$setServiceBound$p(Lcom/hermes/android/MainActivity;Z)V

    .line 138
    iget-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-static {p1}, Lcom/hermes/android/MainActivity;->access$getSessionManagerReady$p(Lcom/hermes/android/MainActivity;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-static {p1}, Lcom/hermes/android/MainActivity;->access$getHermesService$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/HermesService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hermes/android/HermesService;->getSessionManager()Lcom/hermes/android/TerminalSessionManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hermes/android/TerminalSessionManager;->getSessionCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Service connected, sessions="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivity;->access$setHermesService$p(Lcom/hermes/android/MainActivity;Lcom/hermes/android/HermesService;)V

    .line 143
    iget-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivity;->access$setServiceBound$p(Lcom/hermes/android/MainActivity;Z)V

    .line 144
    iget-object p1, p0, Lcom/hermes/android/MainActivity$serviceConnection$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-static {p1}, Lcom/hermes/android/MainActivity;->access$getSessionManagerReady$p(Lcom/hermes/android/MainActivity;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 145
    const-string p1, "MainActivity"

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
