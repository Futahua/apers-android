.class public final enum Lcom/hermes/android/BottomTab;
.super Ljava/lang/Enum;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hermes/android/BottomTab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hermes/android/BottomTab;",
        "",
        "labelRes",
        "",
        "icon",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "<init>",
        "(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/ImageVector;)V",
        "getLabelRes",
        "()I",
        "getIcon",
        "()Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Home",
        "Terminal",
        "Settings",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/hermes/android/BottomTab;

.field public static final enum Home:Lcom/hermes/android/BottomTab;

.field public static final enum Settings:Lcom/hermes/android/BottomTab;

.field public static final enum Terminal:Lcom/hermes/android/BottomTab;


# instance fields
.field private final icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field private final labelRes:I


# direct methods
.method private static final synthetic $values()[Lcom/hermes/android/BottomTab;
    .locals 3

    sget-object v0, Lcom/hermes/android/BottomTab;->Home:Lcom/hermes/android/BottomTab;

    sget-object v1, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    sget-object v2, Lcom/hermes/android/BottomTab;->Settings:Lcom/hermes/android/BottomTab;

    filled-new-array {v0, v1, v2}, [Lcom/hermes/android/BottomTab;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1674
    new-instance v0, Lcom/hermes/android/BottomTab;

    sget v1, Lcom/hermes/android/R$string;->tab_home:I

    sget-object v2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/icons/filled/HomeKt;->getHome(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    const-string v3, "Home"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/hermes/android/BottomTab;-><init>(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/ImageVector;)V

    sput-object v0, Lcom/hermes/android/BottomTab;->Home:Lcom/hermes/android/BottomTab;

    .line 1675
    new-instance v0, Lcom/hermes/android/BottomTab;

    sget v1, Lcom/hermes/android/R$string;->tab_terminal:I

    sget-object v2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/icons/filled/TerminalKt;->getTerminal(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    const-string v3, "Terminal"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/hermes/android/BottomTab;-><init>(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/ImageVector;)V

    sput-object v0, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    .line 1676
    new-instance v0, Lcom/hermes/android/BottomTab;

    sget v1, Lcom/hermes/android/R$string;->tab_settings:I

    sget-object v2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/icons/filled/SettingsKt;->getSettings(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    const-string v3, "Settings"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/hermes/android/BottomTab;-><init>(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/ImageVector;)V

    sput-object v0, Lcom/hermes/android/BottomTab;->Settings:Lcom/hermes/android/BottomTab;

    invoke-static {}, Lcom/hermes/android/BottomTab;->$values()[Lcom/hermes/android/BottomTab;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/BottomTab;->$VALUES:[Lcom/hermes/android/BottomTab;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/BottomTab;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/ImageVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/graphics/vector/ImageVector;",
            ")V"
        }
    .end annotation

    .line 1672
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hermes/android/BottomTab;->labelRes:I

    iput-object p4, p0, Lcom/hermes/android/BottomTab;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/hermes/android/BottomTab;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hermes/android/BottomTab;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hermes/android/BottomTab;
    .locals 1

    const-class v0, Lcom/hermes/android/BottomTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1677
    check-cast p0, Lcom/hermes/android/BottomTab;

    return-object p0
.end method

.method public static values()[Lcom/hermes/android/BottomTab;
    .locals 1

    sget-object v0, Lcom/hermes/android/BottomTab;->$VALUES:[Lcom/hermes/android/BottomTab;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1677
    check-cast v0, [Lcom/hermes/android/BottomTab;

    return-object v0
.end method


# virtual methods
.method public final getIcon()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/hermes/android/BottomTab;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final getLabelRes()I
    .locals 1

    .line 1672
    iget v0, p0, Lcom/hermes/android/BottomTab;->labelRes:I

    return v0
.end method
