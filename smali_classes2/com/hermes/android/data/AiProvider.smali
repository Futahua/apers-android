.class public final Lcom/hermes/android/data/AiProvider;
.super Ljava/lang/Object;
.source "ProviderCatalog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/AiProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProviderCatalog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProviderCatalog.kt\ncom/hermes/android/data/AiProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,510:1\n774#2:511\n865#2,2:512\n774#2:514\n865#2,2:515\n1485#2:517\n1510#2,3:518\n1513#2,3:528\n774#2:531\n865#2,2:532\n381#3,7:521\n*S KotlinDebug\n*F\n+ 1 ProviderCatalog.kt\ncom/hermes/android/data/AiProvider\n*L\n495#1:511\n495#1:512,2\n502#1:514\n502#1:515,2\n502#1:517\n502#1:518,3\n502#1:528,3\n505#1:531\n505#1:532,2\n502#1:521,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008;\u0008\u0087\u0008\u0018\u0000 O2\u00020\u0001:\u0001OB\u00e5\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u000cH\u00c6\u0003J\t\u0010<\u001a\u00020\u000cH\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u000cH\u00c6\u0003J\t\u0010?\u001a\u00020\u000cH\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\t\u0010C\u001a\u00020\u0015H\u00c6\u0003J\t\u0010D\u001a\u00020\u0015H\u00c6\u0003J\t\u0010E\u001a\u00020\u0003H\u00c6\u0003J\t\u0010F\u001a\u00020\u0003H\u00c6\u0003J\t\u0010G\u001a\u00020\u000cH\u00c6\u0003J\t\u0010H\u001a\u00020\u000cH\u00c6\u0003J\t\u0010I\u001a\u00020\u000cH\u00c6\u0003J\u00ef\u0001\u0010J\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010K\u001a\u00020\u000c2\u0008\u0010L\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010M\u001a\u00020\u0015H\u00d6\u0001J\t\u0010N\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001fR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001fR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001fR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001fR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001fR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001fR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\'R\u0011\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\'R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\'R\u0011\u0010\u0010\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\'R\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001fR\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001fR\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001fR\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0011\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010/R\u0011\u0010\u0017\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u001fR\u0011\u0010\u0018\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001fR\u0011\u0010\u0019\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\'R\u0011\u0010\u001a\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\'R\u0011\u0010\u001b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\'\u00a8\u0006P"
    }
    d2 = {
        "Lcom/hermes/android/data/AiProvider;",
        "",
        "id",
        "",
        "name",
        "description",
        "envVar",
        "baseUrlEnvVar",
        "keyHint",
        "keyUrl",
        "keyLabel",
        "isPopular",
        "",
        "requiresKey",
        "category",
        "isCustom",
        "allowsCustomModel",
        "defaultBaseUrl",
        "defaultModelId",
        "apiMode",
        "contextWindow",
        "",
        "maxTokens",
        "hermesProvider",
        "hermesDefaultModel",
        "isOAuth",
        "isVirtual",
        "isLabs",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZ)V",
        "getId",
        "()Ljava/lang/String;",
        "getName",
        "getDescription",
        "getEnvVar",
        "getBaseUrlEnvVar",
        "getKeyHint",
        "getKeyUrl",
        "getKeyLabel",
        "()Z",
        "getRequiresKey",
        "getCategory",
        "getAllowsCustomModel",
        "getDefaultBaseUrl",
        "getDefaultModelId",
        "getApiMode",
        "getContextWindow",
        "()I",
        "getMaxTokens",
        "getHermesProvider",
        "getHermesDefaultModel",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Companion",
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

.field private static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/hermes/android/data/AiProvider$Companion;

.field private static final LABS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONBOARDING_BY_CATEGORY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final POPULAR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowsCustomModel:Z

.field private final apiMode:Ljava/lang/String;

.field private final baseUrlEnvVar:Ljava/lang/String;

.field private final category:Ljava/lang/String;

.field private final contextWindow:I

.field private final defaultBaseUrl:Ljava/lang/String;

.field private final defaultModelId:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final envVar:Ljava/lang/String;

.field private final hermesDefaultModel:Ljava/lang/String;

.field private final hermesProvider:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isCustom:Z

.field private final isLabs:Z

.field private final isOAuth:Z

.field private final isPopular:Z

.field private final isVirtual:Z

.field private final keyHint:Ljava/lang/String;

.field private final keyLabel:Ljava/lang/String;

.field private final keyUrl:Ljava/lang/String;

.field private final maxTokens:I

.field private final name:Ljava/lang/String;

.field private final requiresKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 84

    new-instance v0, Lcom/hermes/android/data/AiProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/AiProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    .line 116
    new-instance v2, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v28, v2

    const v26, 0x73ea90

    const/16 v27, 0x0

    const-string v3, "anthropic"

    const-string v4, "Anthropic Claude"

    const-string v5, "Claude Opus, Sonnet, Haiku"

    const-string v6, "ANTHROPIC_API_KEY"

    const/4 v7, 0x0

    const-string v8, "sk-ant-..."

    const-string v9, "https://console.anthropic.com/settings/keys"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "Popular"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "anthropic"

    const-string v22, "claude-opus-4-6"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v2 .. v27}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    new-instance v30, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v29, v30

    const v54, 0x73ea90

    const/16 v55, 0x0

    const-string v31, "openai"

    const-string v32, "OpenAI"

    const-string v33, "GPT-5.4, GPT-5.4-mini, o3"

    const-string v34, "OPENAI_API_KEY"

    const/16 v35, 0x0

    const-string v36, "sk-..."

    const-string v37, "https://platform.openai.com/api-keys"

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const-string v41, "Popular"

    const/16 v42, 0x0

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-string v49, "openai-api"

    const-string v50, "gpt-5.4"

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-direct/range {v30 .. v55}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v30, v0

    const v24, 0x63f8f0

    const/16 v25, 0x0

    const-string v1, "openai-codex"

    const-string v2, "ChatGPT Codex (subscription) [Experimental]"

    const-string v3, "GPT-5.5 via ChatGPT plan. Experimental \u2014 likely unsupported in your region due to OpenAI\'s policy."

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "Popular"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "openai-codex"

    const-string v20, "gpt-5.5"

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    new-instance v32, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v31, v32

    const v56, 0x73ea90

    const/16 v57, 0x0

    const-string v33, "google"

    const-string v34, "Google Gemini"

    const-string v35, "Gemini 3.1 Pro, Flash"

    const-string v36, "GEMINI_API_KEY"

    const/16 v37, 0x0

    const-string v38, "AI..."

    const-string v39, "https://aistudio.google.com/apikey"

    const/16 v40, 0x0

    const/16 v41, 0x1

    const-string v43, "Popular"

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-string v51, "gemini"

    const-string v52, "gemini-3.1-pro-preview"

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-direct/range {v32 .. v57}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v32, v0

    const v24, 0x73ebb0

    const-string v1, "openrouter"

    const-string v2, "OpenRouter"

    const-string v3, "Multi-provider gateway"

    const-string v4, "OPENROUTER_API_KEY"

    const-string v7, "https://openrouter.ai/keys"

    const/4 v9, 0x0

    const-string v11, "AI Platforms"

    const/4 v13, 0x1

    const-string v19, "openrouter"

    const-string v20, "anthropic/claude-sonnet-4.6"

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    new-instance v34, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v33, v34

    const v58, 0x23f9f0

    const/16 v59, 0x0

    const-string v35, "nous"

    const-string v36, "Nous Portal (subscription)"

    const-string v37, "Official Nous API \u2014 Hermes 4 & 270+ models via your Nous subscription"

    const-string v38, ""

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-string v45, "AI Platforms"

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-string v53, "nous"

    const-string v54, "nousresearch/hermes-4-405b"

    const/16 v55, 0x1

    const/16 v56, 0x0

    const/16 v57, 0x1

    invoke-direct/range {v34 .. v59}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v34, v0

    const-string v1, "xai"

    const-string v2, "xAI (Grok)"

    const-string v3, "Grok 4 reasoning models"

    const-string v4, "XAI_API_KEY"

    const-string v7, "https://console.x.ai/"

    const-string v11, "AI Platforms"

    const-string v19, "xai"

    const-string v20, "grok-4.20-0309-reasoning"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 216
    new-instance v36, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v35, v36

    const v60, 0x63f9f0

    const/16 v61, 0x0

    const-string v37, "xai-oauth"

    const-string v38, "xAI Grok OAuth (SuperGrok) [Experimental]"

    const-string v39, "Use your SuperGrok subscription \u2014 no API key needed."

    const-string v40, ""

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-string v47, "AI Platforms"

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-string v55, "xai-oauth"

    const-string v56, "grok-4.20-0309-reasoning"

    const/16 v58, 0x0

    const/16 v59, 0x0

    invoke-direct/range {v36 .. v61}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 227
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v36, v0

    const-string v1, "deepseek"

    const-string v2, "DeepSeek"

    const-string v3, "DeepSeek V3, R1"

    const-string v4, "DEEPSEEK_API_KEY"

    const-string v7, "https://platform.deepseek.com/api_keys"

    const-string v11, "AI Platforms"

    const-string v19, "deepseek"

    const-string v20, "deepseek-chat"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 238
    new-instance v38, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v37, v38

    const v62, 0x73eb10

    const/16 v63, 0x0

    const-string v39, "copilot"

    const-string v40, "GitHub Copilot"

    const-string v41, "Copilot Chat models"

    const-string v42, "COPILOT_GITHUB_TOKEN"

    const-string v44, "ghp_... or ghu_..."

    const-string v45, "https://github.com/settings/tokens"

    const-string v46, "GitHub Token"

    const/16 v47, 0x0

    const-string v49, "AI Platforms"

    const/16 v50, 0x0

    const/16 v51, 0x1

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-string v57, "copilot"

    const-string v58, "gpt-5.4"

    const/16 v60, 0x0

    const/16 v61, 0x0

    invoke-direct/range {v38 .. v63}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 251
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v38, v0

    const v24, 0x73eb10

    const-string v1, "huggingface"

    const-string v2, "Hugging Face"

    const-string v3, "Inference API models"

    const-string v4, "HF_TOKEN"

    const-string v6, "hf_..."

    const-string v7, "https://huggingface.co/settings/tokens"

    const-string v8, "HF Token"

    const-string v11, "AI Platforms"

    const-string v19, "huggingface"

    const-string v20, "Qwen/Qwen3.5-397B-A17B"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    new-instance v40, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v39, v40

    const v64, 0x73ebb0

    const/16 v65, 0x0

    const-string v41, "arcee"

    const-string v42, "Arcee AI"

    const-string v43, "Trinity reasoning models"

    const-string v44, "ARCEEAI_API_KEY"

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-string v47, "https://app.arcee.ai/"

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-string v51, "AI Platforms"

    const/16 v52, 0x0

    const/16 v53, 0x1

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const-string v59, "arcee"

    const-string v60, "trinity-large-thinking"

    const/16 v62, 0x0

    const/16 v63, 0x0

    invoke-direct/range {v40 .. v65}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 275
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v40, v0

    const v24, 0x73ebb0

    const-string v1, "xiaomi"

    const-string v2, "Xiaomi MiMo"

    const-string v3, "MiMo models (free tier available)"

    const-string v4, "XIAOMI_API_KEY"

    const/4 v6, 0x0

    const-string v7, "https://xiaomimimo.com/"

    const/4 v8, 0x0

    const-string v11, "AI Platforms"

    const-string v19, "xiaomi"

    const-string v20, "mimo-v2-pro"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 289
    new-instance v42, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v41, v42

    const v66, 0x73ebf0

    const/16 v67, 0x0

    const-string v43, "kilocode"

    const-string v44, "Kilo Code"

    const-string v45, "Kilo Code platform"

    const-string v46, "KILOCODE_API_KEY"

    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-string v53, "AI Platforms"

    const/16 v54, 0x0

    const/16 v55, 0x1

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const-string v61, "kilocode"

    const-string v62, "anthropic/claude-opus-4.6"

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-direct/range {v42 .. v67}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 299
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v42, v0

    const v24, 0x7ffbb0

    const-string v1, "mistral"

    const-string v2, "Mistral AI"

    const-string v3, "Mistral, Codestral"

    const-string v4, "MISTRAL_API_KEY"

    const-string v7, "https://console.mistral.ai/api-keys"

    const-string v11, "AI Platforms"

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 307
    new-instance v44, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v43, v44

    const v68, 0x7ffbb0

    const/16 v69, 0x0

    const-string v45, "together"

    const-string v46, "Together AI"

    const-string v47, "Open-source models"

    const-string v48, "TOGETHER_API_KEY"

    const-string v51, "https://api.together.xyz/settings/api-keys"

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-string v55, "AI Platforms"

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    invoke-direct/range {v44 .. v69}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 317
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v44, v0

    const v24, 0x73ea90

    const-string v1, "kimi-coding"

    const-string v2, "Kimi for Coding"

    const-string v3, "Coding optimized (api.kimi.com)"

    const-string v4, "KIMI_API_KEY"

    const-string v6, "sk-kimi-..."

    const-string v7, "https://www.kimi.com/code/console"

    const/4 v9, 0x1

    const-string v11, "China Region"

    const/4 v13, 0x1

    const-string v19, "kimi-coding"

    const-string v20, "kimi-for-coding"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 330
    new-instance v46, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v45, v46

    const v70, 0x73eb90

    const/16 v71, 0x0

    const-string v47, "kimi-coding-cn"

    const-string v48, "Moonshot AI (China)"

    const-string v49, "Kimi models via Moonshot Open Platform (api.moonshot.cn)"

    const-string v50, "KIMI_CN_API_KEY"

    const/16 v51, 0x0

    const-string v52, "sk-..."

    const-string v53, "https://platform.moonshot.cn/console/api-keys"

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-string v57, "China Region"

    const/16 v58, 0x0

    const/16 v59, 0x1

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-string v65, "kimi-coding-cn"

    const-string v66, "kimi-k2.5"

    const/16 v68, 0x0

    const/16 v69, 0x0

    invoke-direct/range {v46 .. v71}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 342
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v46, v0

    const v24, 0x73ebf0

    const-string v1, "zai"

    const-string v2, "Z.AI (GLM)"

    const-string v3, "GLM 5.1 models"

    const-string v4, "GLM_API_KEY"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v11, "China Region"

    const-string v19, "zai"

    const-string v20, "glm-5.1"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 352
    new-instance v48, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v47, v48

    const v72, 0x73ebf0

    const/16 v73, 0x0

    const-string v49, "minimax"

    const-string v50, "MiniMax"

    const-string v51, "MiniMax models"

    const-string v52, "MINIMAX_API_KEY"

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const-string v59, "China Region"

    const/16 v60, 0x0

    const/16 v61, 0x1

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const-string v67, "minimax"

    const-string v68, "MiniMax-M2.7"

    const/16 v70, 0x0

    const/16 v71, 0x0

    invoke-direct/range {v48 .. v73}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 362
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v48, v0

    const-string v1, "minimax-cn"

    const-string v2, "MiniMax (China)"

    const-string v3, "MiniMax China endpoint"

    const-string v4, "MINIMAX_CN_API_KEY"

    const-string v11, "China Region"

    const-string v19, "minimax-cn"

    const-string v20, "MiniMax-M2.7"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 372
    new-instance v50, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v49, v50

    const v74, 0x73cba0

    const/16 v75, 0x0

    const-string v51, "alibaba"

    const-string v52, "Alibaba DashScope"

    const-string v53, "Qwen 3.5 models"

    const-string v54, "DASHSCOPE_API_KEY"

    const-string v55, "DASHSCOPE_BASE_URL"

    const-string v57, "https://dashscope.console.aliyun.com/"

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-string v61, "China Region"

    const/16 v62, 0x0

    const/16 v63, 0x1

    const-string v64, "https://dashscope-intl.aliyuncs.com/compatible-mode/v1"

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-string v69, "alibaba"

    const-string v70, "qwen3.5-plus"

    const/16 v72, 0x0

    const/16 v73, 0x0

    invoke-direct/range {v50 .. v75}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 387
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v50, v0

    const-string v1, "opencode-zen"

    const-string v2, "OpenCode Zen"

    const-string v3, "OpenCode Zen platform"

    const-string v4, "OPENCODE_ZEN_API_KEY"

    const-string v11, "China Region"

    const-string v19, "opencode-zen"

    const-string v20, "gpt-5.4-pro"

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 397
    new-instance v52, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v51, v52

    const v76, 0x73ebf0

    const/16 v77, 0x0

    const-string v53, "opencode-go"

    const-string v54, "OpenCode Go"

    const-string v55, "OpenCode Go platform"

    const-string v56, "OPENCODE_GO_API_KEY"

    const/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-string v63, "China Region"

    const/16 v64, 0x0

    const/16 v65, 0x1

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const-string v71, "opencode-go"

    const-string v72, "glm-5"

    const/16 v74, 0x0

    const/16 v75, 0x0

    invoke-direct/range {v52 .. v77}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 407
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v52, v0

    const v24, 0x7ffbf0

    const-string v1, "volcengine"

    const-string v2, "Volcano Engine"

    const-string v3, "ByteDance AI platform"

    const-string v4, "VOLCANO_ENGINE_API_KEY"

    const-string v11, "China Region"

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 414
    new-instance v54, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v53, v54

    const v78, 0x7ffbf0

    const/16 v79, 0x0

    const-string v55, "qianfan"

    const-string v56, "Qianfan"

    const-string v57, "Baidu AI platform"

    const-string v58, "QIANFAN_API_KEY"

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const-string v65, "China Region"

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    invoke-direct/range {v54 .. v79}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 423
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v54, v0

    const v24, 0x13e9f0

    const-string v1, "moa"

    const-string v2, "Mixture of Agents (MoA)"

    const-string v3, "Council of your configured providers \u2014 needs their keys set up first"

    const-string v4, ""

    const-string v11, "Advanced"

    const/4 v13, 0x1

    const-string v19, "moa"

    const-string v20, "default"

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 441
    new-instance v56, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v55, v56

    const v80, 0x731170

    const/16 v81, 0x0

    const-string v57, "litertlm"

    const-string v58, "LiteRT-LM (On-Device)"

    const-string v59, "Local Gemma 4 / Llama on this device"

    const-string v60, ""

    const/16 v63, 0x0

    const-string v64, "No key needed"

    const/16 v65, 0x0

    const-string v67, "Self-Hosted"

    const/16 v68, 0x1

    const/16 v69, 0x0

    const-string v70, "http://127.0.0.1:8081/v1"

    const-string v71, "gemma-4-E2B-it"

    const-string v72, "chat_completions"

    const/16 v73, 0x0

    const/16 v74, 0x0

    const-string v75, ""

    const-string v76, ""

    const/16 v78, 0x0

    const/16 v79, 0x0

    invoke-direct/range {v56 .. v81}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 456
    new-instance v0, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v56, v0

    const v24, 0x7f7170

    const-string v1, "custom"

    const-string v2, "Custom Provider"

    const-string v3, "Any OpenAI/Anthropic-compatible endpoint"

    const-string v4, "CUSTOM_API_KEY"

    const-string v8, "API Key (optional)"

    const-string v11, "Self-Hosted"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v16, "chat_completions"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 477
    new-instance v58, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v57, v58

    const v82, 0x331170

    const/16 v83, 0x0

    const-string v59, "local_llm"

    const-string v60, "On-Device (llama.cpp)"

    const-string v61, "MiniCPM 1B \u2014 fully offline, no API key, one-tap download"

    const-string v62, ""

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-string v66, "No key needed"

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-string v69, "Self-Hosted"

    const/16 v70, 0x1

    const/16 v71, 0x0

    const-string v72, "http://127.0.0.1:8090/v1"

    const-string v73, "local-llm"

    const-string v74, "chat_completions"

    const/16 v75, 0x0

    const/16 v76, 0x0

    const-string v77, ""

    const-string v78, ""

    const/16 v80, 0x0

    const/16 v81, 0x1

    invoke-direct/range {v58 .. v83}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array/range {v28 .. v57}, [Lcom/hermes/android/data/AiProvider;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/data/AiProvider;->ALL:Ljava/util/List;

    .line 495
    check-cast v0, Ljava/lang/Iterable;

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 512
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hermes/android/data/AiProvider;

    .line 495
    iget-boolean v3, v3, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    if-eqz v3, :cond_0

    .line 512
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 495
    sput-object v1, Lcom/hermes/android/data/AiProvider;->POPULAR:Ljava/util/List;

    .line 502
    sget-object v0, Lcom/hermes/android/data/AiProvider;->ALL:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 515
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hermes/android/data/AiProvider;

    .line 502
    iget-boolean v4, v3, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    if-nez v4, :cond_2

    iget-boolean v3, v3, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    if-nez v3, :cond_2

    .line 515
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 514
    check-cast v1, Ljava/lang/Iterable;

    .line 517
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 518
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 519
    move-object v3, v2

    check-cast v3, Lcom/hermes/android/data/AiProvider;

    .line 502
    iget-object v3, v3, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    .line 521
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 520
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 524
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_4
    check-cast v4, Ljava/util/List;

    .line 528
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 502
    :cond_5
    sput-object v0, Lcom/hermes/android/data/AiProvider;->ONBOARDING_BY_CATEGORY:Ljava/util/Map;

    .line 505
    sget-object v0, Lcom/hermes/android/data/AiProvider;->ALL:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 532
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hermes/android/data/AiProvider;

    .line 505
    iget-boolean v3, v3, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    if-eqz v3, :cond_6

    .line 532
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 533
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 505
    sput-object v1, Lcom/hermes/android/data/AiProvider;->LABS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p11

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-object/from16 v13, p19

    move-object/from16 v14, p20

    const-string v15, "id"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "name"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "description"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "envVar"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "baseUrlEnvVar"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "keyHint"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "keyUrl"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "keyLabel"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "category"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "defaultBaseUrl"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "defaultModelId"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "apiMode"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "hermesProvider"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "hermesDefaultModel"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, v0, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    .line 23
    iput-object v2, v0, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    .line 25
    iput-object v3, v0, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    .line 27
    iput-object v4, v0, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    .line 35
    iput-object v5, v0, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    .line 37
    iput-object v6, v0, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    .line 39
    iput-object v7, v0, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    .line 41
    iput-object v8, v0, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    move/from16 v1, p9

    .line 43
    iput-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    move/from16 v1, p10

    .line 45
    iput-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    .line 47
    iput-object v9, v0, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    move/from16 v1, p12

    .line 49
    iput-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    move/from16 v1, p13

    .line 62
    iput-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    .line 64
    iput-object v10, v0, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    .line 66
    iput-object v11, v0, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    .line 68
    iput-object v12, v0, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    move/from16 v1, p17

    .line 69
    iput v1, v0, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    move/from16 v1, p18

    .line 70
    iput v1, v0, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    .line 76
    iput-object v13, v0, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    .line 82
    iput-object v14, v0, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    move/from16 v1, p21

    .line 88
    iput-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    move/from16 v1, p22

    .line 95
    iput-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    move/from16 v1, p23

    .line 102
    iput-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x10

    .line 19
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 41
    const-string v1, "API Key"

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    move v12, v3

    goto :goto_4

    :cond_4
    move/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v13, v1

    goto :goto_5

    :cond_5
    move/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    .line 47
    const-string v1, "Other"

    move-object v14, v1

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move v15, v3

    goto :goto_7

    :cond_7
    move/from16 v15, p12

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    move/from16 v16, v3

    goto :goto_8

    :cond_8
    move/from16 v16, p13

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move-object/from16 v17, v2

    goto :goto_9

    :cond_9
    move-object/from16 v17, p14

    :goto_9
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_a

    move-object/from16 v18, v2

    goto :goto_a

    :cond_a
    move-object/from16 v18, p15

    :goto_a
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 68
    const-string v1, "openai"

    move-object/from16 v19, v1

    goto :goto_b

    :cond_b
    move-object/from16 v19, p16

    :goto_b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move/from16 v20, v3

    goto :goto_c

    :cond_c
    move/from16 v20, p17

    :goto_c
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move/from16 v21, v3

    goto :goto_d

    :cond_d
    move/from16 v21, p18

    :goto_d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v22, v2

    goto :goto_e

    :cond_e
    move-object/from16 v22, p19

    :goto_e
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v23, v2

    goto :goto_f

    :cond_f
    move-object/from16 v23, p20

    :goto_f
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v24, v3

    goto :goto_10

    :cond_10
    move/from16 v24, p21

    :goto_10
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move/from16 v25, v3

    goto :goto_11

    :cond_11
    move/from16 v25, p22

    :goto_11
    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    move/from16 v26, v3

    goto :goto_12

    :cond_12
    move/from16 v26, p23

    :goto_12
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 19
    invoke-direct/range {v3 .. v26}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static final synthetic access$getALL$cp()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/hermes/android/data/AiProvider;->ALL:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getLABS$cp()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/hermes/android/data/AiProvider;->LABS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getONBOARDING_BY_CATEGORY$cp()Ljava/util/Map;
    .locals 1

    .line 19
    sget-object v0, Lcom/hermes/android/data/AiProvider;->ONBOARDING_BY_CATEGORY:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPOPULAR$cp()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/hermes/android/data/AiProvider;->POPULAR:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/hermes/android/data/AiProvider;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_11

    iget v15, v0, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    goto :goto_11

    :cond_11
    move/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-boolean v15, v0, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    goto :goto_14

    :cond_14
    move/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_15

    iget-boolean v15, v0, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    goto :goto_15

    :cond_15
    move/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v1, v1, v16

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    goto :goto_16

    :cond_16
    move/from16 v1, p23

    :goto_16
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p22, v15

    move/from16 p23, v1

    invoke-virtual/range {p0 .. p23}, Lcom/hermes/android/data/AiProvider;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZ)Lcom/hermes/android/data/AiProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    return v0
.end method

.method public final component18()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    return v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    return v0
.end method

.method public final component22()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    return v0
.end method

.method public final component23()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZ)Lcom/hermes/android/data/AiProvider;
    .locals 26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    const-string v0, "id"

    move-object/from16 v24, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "envVar"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlEnvVar"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyHint"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyUrl"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyLabel"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultBaseUrl"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultModelId"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiMode"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hermesProvider"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hermesDefaultModel"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v25, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct/range {v0 .. v23}, Lcom/hermes/android/data/AiProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v25
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/data/AiProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/data/AiProvider;

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    iget-boolean v3, p1, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    iget-boolean v3, p1, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    iget-boolean v3, p1, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    iget-boolean v3, p1, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    iget v3, p1, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    iget v3, p1, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    iget-boolean v3, p1, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    iget-boolean v3, p1, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    iget-boolean p1, p1, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final getAllowsCustomModel()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    return v0
.end method

.method public final getApiMode()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrlEnvVar()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getContextWindow()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    return v0
.end method

.method public final getDefaultBaseUrl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultModelId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnvVar()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    return-object v0
.end method

.method public final getHermesDefaultModel()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getHermesProvider()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyHint()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyLabel()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxTokens()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequiresKey()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCustom()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    return v0
.end method

.method public final isLabs()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    return v0
.end method

.method public final isOAuth()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    return v0
.end method

.method public final isPopular()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    return v0
.end method

.method public final isVirtual()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hermes/android/data/AiProvider;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/hermes/android/data/AiProvider;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/hermes/android/data/AiProvider;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/hermes/android/data/AiProvider;->envVar:Ljava/lang/String;

    iget-object v5, v0, Lcom/hermes/android/data/AiProvider;->baseUrlEnvVar:Ljava/lang/String;

    iget-object v6, v0, Lcom/hermes/android/data/AiProvider;->keyHint:Ljava/lang/String;

    iget-object v7, v0, Lcom/hermes/android/data/AiProvider;->keyUrl:Ljava/lang/String;

    iget-object v8, v0, Lcom/hermes/android/data/AiProvider;->keyLabel:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/hermes/android/data/AiProvider;->isPopular:Z

    iget-boolean v10, v0, Lcom/hermes/android/data/AiProvider;->requiresKey:Z

    iget-object v11, v0, Lcom/hermes/android/data/AiProvider;->category:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/hermes/android/data/AiProvider;->isCustom:Z

    iget-boolean v13, v0, Lcom/hermes/android/data/AiProvider;->allowsCustomModel:Z

    iget-object v14, v0, Lcom/hermes/android/data/AiProvider;->defaultBaseUrl:Ljava/lang/String;

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->defaultModelId:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->apiMode:Ljava/lang/String;

    move-object/from16 v17, v15

    iget v15, v0, Lcom/hermes/android/data/AiProvider;->contextWindow:I

    move/from16 v18, v15

    iget v15, v0, Lcom/hermes/android/data/AiProvider;->maxTokens:I

    move/from16 v19, v15

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->hermesProvider:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/hermes/android/data/AiProvider;->hermesDefaultModel:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-boolean v15, v0, Lcom/hermes/android/data/AiProvider;->isOAuth:Z

    move/from16 v22, v15

    iget-boolean v15, v0, Lcom/hermes/android/data/AiProvider;->isVirtual:Z

    move/from16 v23, v15

    iget-boolean v15, v0, Lcom/hermes/android/data/AiProvider;->isLabs:Z

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v24, v15

    const-string v15, "AiProvider(id="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", envVar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseUrlEnvVar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPopular="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiresKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsCustomModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultBaseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultModelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contextWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hermesProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hermesDefaultModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVirtual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
