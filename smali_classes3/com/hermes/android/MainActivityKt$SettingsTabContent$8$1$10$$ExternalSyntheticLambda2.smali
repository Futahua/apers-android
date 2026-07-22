.class public final synthetic Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

.field public final synthetic f$1:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$10;->$r8$lambda$2G9yr-C_IYoeRmwI-33OEAW8Eic(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Landroidx/appcompat/app/AppCompatActivity;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
