.class public final Lcom/hermes/android/MainActivityKt$TerminalTabContent$lambda$440$lambda$439$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->TerminalTabContent(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 MainActivity.kt\ncom/hermes/android/MainActivityKt\n*L\n1#1,490:1\n3958#2:491\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime_release"
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
.field final synthetic $client$inlined:Lcom/hermes/android/SimpleTerminalClient;


# direct methods
.method public constructor <init>(Lcom/hermes/android/SimpleTerminalClient;)V
    .locals 0

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$lambda$440$lambda$439$$inlined$onDispose$1;->$client$inlined:Lcom/hermes/android/SimpleTerminalClient;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$lambda$440$lambda$439$$inlined$onDispose$1;->$client$inlined:Lcom/hermes/android/SimpleTerminalClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hermes/android/SimpleTerminalClient;->setOnTextChangedExtra(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
