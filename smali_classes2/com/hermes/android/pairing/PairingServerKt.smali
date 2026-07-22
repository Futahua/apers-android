.class public final Lcom/hermes/android/pairing/PairingServerKt;
.super Ljava/lang/Object;
.source "PairingServer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingServer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingServer.kt\ncom/hermes/android/pairing/PairingServerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,340:1\n774#2:341\n865#2,2:342\n216#3,2:344\n*S KotlinDebug\n*F\n+ 1 PairingServer.kt\ncom/hermes/android/pairing/PairingServerKt\n*L\n134#1:341\n134#1:342,2\n158#1:344,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0008\u0005\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u001a\"\u0010\u0002\u001a\u00020\u00012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00050\u0004H\u0000\u001a$\u0010\u0006\u001a\u00020\u00012\u001a\u0008\u0002\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00050\u0004H\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "buildProviderOptions",
        "",
        "buildModelSuggestionsJson",
        "suggestions",
        "",
        "",
        "buildSetupHtml",
        "modelSuggestions",
        "SETUP_CSS",
        "SETUP_HTML_TEMPLATE",
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


# static fields
.field private static final SETUP_CSS:Ljava/lang/String; = ":root { --bg: #0f0f23; --card: #1a1a2e; --border: #262640; --text: #e2e8f0;\n  --muted: #9ca3af; --primary: #8b5cf6; --primary-hover: #a78bfa; --green: #10b981; }\n* { box-sizing: border-box; margin: 0; padding: 0; }\nbody { font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', sans-serif;\n  background: var(--bg); color: var(--text); min-height: 100vh;\n  display: flex; align-items: center; justify-content: center; padding: 20px; }\n.container { max-width: 480px; width: 100%; }\nh1 { font-size: 28px; margin-bottom: 8px; color: var(--primary); }\n.subtitle { color: var(--muted); margin-bottom: 24px; }\n.card { background: var(--card); border: 1px solid var(--border); border-radius: 12px;\n  padding: 24px; margin-bottom: 16px; }\nlabel { display: block; font-size: 14px; color: var(--muted); margin-bottom: 6px; }\nselect, input[type=\"text\"], input[type=\"password\"] {\n  width: 100%; padding: 12px; background: var(--bg); border: 1px solid var(--border);\n  border-radius: 8px; color: var(--text); font-size: 16px; outline: none; }\nselect:focus, input:focus { border-color: var(--primary); }\n.section { margin-bottom: 16px; }\nbutton[type=\"submit\"] { width: 100%; padding: 14px; background: var(--primary); color: white;\n  border: none; border-radius: 8px; font-size: 16px; font-weight: 600; cursor: pointer; margin-top: 8px; }\nbutton[type=\"submit\"]:hover { background: var(--primary-hover); }\nbutton[type=\"submit\"]:disabled { opacity: 0.5; cursor: not-allowed; }\n.success { background: #052e16; border: 1px solid var(--green); border-radius: 12px;\n  padding: 24px; text-align: center; display: none; }\n.success h2 { color: var(--green); margin-bottom: 8px; }\n.help-link { color: var(--primary); text-decoration: none; font-size: 13px; display: inline-block; margin-top: 6px; }\n.toggle-vis { position: absolute; right: 12px; top: 50%; transform: translateY(-50%);\n  background: none; border: none; color: var(--muted); cursor: pointer; font-size: 14px; }\n.input-wrap { position: relative; }"

.field private static final SETUP_HTML_TEMPLATE:Ljava/lang/String; = "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<title>Hermes-agent Android Setup</title>\n<link rel=\"stylesheet\" href=\"/style.css\">\n</head>\n<body>\n<div class=\"container\">\n  <h1>\u26a1 Hermes-agent Android Setup</h1>\n  <p class=\"subtitle\">Configure your AI provider from this browser</p>\n\n  <form id=\"setupForm\" onsubmit=\"return submitForm(event)\">\n    <div class=\"card\">\n      <div class=\"section\">\n        <label>Provider</label>\n        <select id=\"ai-provider\" onchange=\"onProviderChange()\">\n          {{PROVIDER_OPTIONS}}\n        </select>\n        <a id=\"ai-help-link\" class=\"help-link\" href=\"#\" target=\"_blank\">Get API Key \u2192</a>\n      </div>\n\n      <div id=\"base-url-field\" class=\"section\" style=\"display:none\">\n        <label>Base URL</label>\n        <input type=\"text\" id=\"ai-base-url\" placeholder=\"https://api.example.com/v1\">\n      </div>\n      <div id=\"model-id-field\" class=\"section\" style=\"display:none\">\n        <label>Model ID</label>\n        <input type=\"text\" id=\"ai-model-id\" placeholder=\"model-name\" list=\"model-suggestions\" autocomplete=\"off\">\n        <datalist id=\"model-suggestions\"></datalist>\n      </div>\n\n      <div class=\"section\">\n        <label>API Key</label>\n        <div class=\"input-wrap\">\n          <input type=\"password\" id=\"ai-key\" placeholder=\"Paste your API key\" autocomplete=\"off\">\n          <button type=\"button\" class=\"toggle-vis\" onclick=\"toggleVis(\'ai-key\')\">Show</button>\n        </div>\n      </div>\n    </div>\n\n    <button type=\"submit\" id=\"submitBtn\">Save Configuration</button>\n  </form>\n\n  <div class=\"success\" id=\"successMsg\">\n    <h2>\u2713 Saved!</h2>\n    <p>Configuration applied to your device.<br>You can close this page.</p>\n  </div>\n</div>\n\n<script>\n// provider.id \u2192 \u53ef\u7528\u6a21\u578b\u6e05\u55ae\uff08\u624b\u6a5f\u7aef ModelCatalogCache \u5feb\u53d6\u5feb\u7167\uff1b\u7121\u5feb\u53d6\u7684 provider \u4e0d\u5728 map\uff09\nconst MODEL_SUGGESTIONS = {{MODEL_SUGGESTIONS}};\n\nfunction updateModelSuggestions(providerId) {\n  const dl = document.getElementById(\'model-suggestions\');\n  dl.innerHTML = \'\';\n  (MODEL_SUGGESTIONS[providerId] || []).forEach(function(id) {\n    const o = document.createElement(\'option\');\n    o.value = id;\n    dl.appendChild(o);\n  });\n}\n\nfunction onProviderChange() {\n  const sel = document.getElementById(\'ai-provider\');\n  const opt = sel.options[sel.selectedIndex];\n  const link = document.getElementById(\'ai-help-link\');\n  const url = opt.dataset.url || \'\';\n  link.href = url;\n  link.style.display = url ? \'inline-block\' : \'none\';\n  const isCustom = opt.dataset.custom === \'1\';\n  const baseUrlOptional = opt.dataset.baseUrlOptional === \'1\';\n  const allowsCustomModel = opt.dataset.allowsCustomModel === \'1\';\n  // Base URL \u6b04\u4f4d\uff1acustom\uff08\u5fc5\u586b\uff09\u6216\u652f\u63f4\u8986\u84cb\u7684 provider\uff08\u9078\u586b\uff0c\u5982 Alibaba\uff09\u90fd\u986f\u793a\n  document.getElementById(\'base-url-field\').style.display = (isCustom || baseUrlOptional) ? \'block\' : \'none\';\n  // Model ID \u6b04\u4f4d\uff1acustom\uff08\u5fc5\u586b\uff09\u6216 allowsCustomModel\uff08\u9078\u586b\uff0c\u5982 OpenRouter\uff09\n  document.getElementById(\'model-id-field\').style.display = (isCustom || allowsCustomModel) ? \'block\' : \'none\';\n  if (isCustom || baseUrlOptional) {\n    document.getElementById(\'ai-base-url\').value = opt.dataset.baseUrl || \'\';\n  }\n  if (isCustom || allowsCustomModel) {\n    document.getElementById(\'ai-model-id\').value = opt.dataset.modelId || \'\';\n  }\n  updateModelSuggestions(sel.value);\n}\n\nfunction toggleVis(id) {\n  const inp = document.getElementById(id);\n  const btn = inp.nextElementSibling;\n  if (inp.type === \'password\') { inp.type = \'text\'; btn.textContent = \'Hide\'; }\n  else { inp.type = \'password\'; btn.textContent = \'Show\'; }\n}\n\nasync function submitForm(e) {\n  e.preventDefault();\n  const btn = document.getElementById(\'submitBtn\');\n  btn.disabled = true;\n  btn.textContent = \'Saving...\';\n\n  const sel = document.getElementById(\'ai-provider\');\n  const opt = sel.options[sel.selectedIndex];\n  const isCustom = opt.dataset.custom === \'1\';\n  const baseUrlOptional = opt.dataset.baseUrlOptional === \'1\';\n  const allowsCustomModel = opt.dataset.allowsCustomModel === \'1\';\n  const body = JSON.stringify({\n    provider: sel.value,\n    apiKey: document.getElementById(\'ai-key\').value,\n    baseUrl: (isCustom || baseUrlOptional) ? document.getElementById(\'ai-base-url\').value : \'\',\n    modelId: (isCustom || allowsCustomModel) ? document.getElementById(\'ai-model-id\').value : \'\',\n    apiMode: opt.dataset.apiMode || \'openai\',\n  });\n\n  try {\n    const res = await fetch(\'/submit\', { method: \'POST\', body, headers: { \'Content-Type\': \'application/json\' } });\n    const data = await res.json();\n    if (data.success) {\n      document.getElementById(\'setupForm\').style.display = \'none\';\n      document.getElementById(\'successMsg\').style.display = \'block\';\n    } else {\n      alert(\'Error: \' + data.message);\n      btn.disabled = false;\n      btn.textContent = \'Save Configuration\';\n    }\n  } catch (err) {\n    alert(\'Connection failed: \' + err.message);\n    btn.disabled = false;\n    btn.textContent = \'Save Configuration\';\n  }\n}\n\nonProviderChange();\n</script>\n</body>\n</html>"


# direct methods
.method public static synthetic $r8$lambda$Q3745Mp8XRwrOaQkFVBo5Xf1x7Y(Lcom/hermes/android/data/AiProvider;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/pairing/PairingServerKt;->buildProviderOptions$lambda$1(Lcom/hermes/android/data/AiProvider;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getSETUP_CSS$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hermes/android/pairing/PairingServerKt;->SETUP_CSS:Ljava/lang/String;

    return-object v0
.end method

.method public static final buildModelSuggestionsJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "suggestions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 344
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v3, Lorg/json/JSONArray;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p0, "toString(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "<"

    const-string v6, "\\u003c"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final buildProviderOptions()Ljava/lang/String;
    .locals 11

    .line 134
    sget-object v0, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    invoke-virtual {v0}, Lcom/hermes/android/data/AiProvider$Companion;->getALL()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 342
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

    .line 134
    invoke-virtual {v3}, Lcom/hermes/android/data/AiProvider;->isOAuth()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/hermes/android/data/AiProvider;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 341
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 134
    const-string v0, "\n          "

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lcom/hermes/android/pairing/PairingServerKt$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/hermes/android/pairing/PairingServerKt$$ExternalSyntheticLambda0;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final buildProviderOptions$lambda$1(Lcom/hermes/android/data/AiProvider;)Ljava/lang/CharSequence;
    .locals 8

    const-string v0, "p"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->isCustom()Z

    move-result v0

    const-string v1, ""

    const-string v2, "\""

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getDefaultModelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getApiMode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " data-custom=\"1\" data-base-url=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\" data-model-id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" data-api-mode=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->isCustom()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getBaseUrlEnvVar()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " data-base-url-optional=\"1\" data-base-url=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->isCustom()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getAllowsCustomModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " data-allows-custom-model=\"1\" data-model-id=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    .line 148
    :goto_2
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getKeyUrl()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getKeyUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " data-url=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<option value=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "</option>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final buildSetupHtml(Ljava/util/Map;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "modelSuggestions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v1, Lcom/hermes/android/pairing/PairingServerKt;->SETUP_HTML_TEMPLATE:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/hermes/android/pairing/PairingServerKt;->buildProviderOptions()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "{{PROVIDER_OPTIONS}}"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 165
    invoke-static {p0}, Lcom/hermes/android/pairing/PairingServerKt;->buildModelSuggestionsJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "{{MODEL_SUGGESTIONS}}"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildSetupHtml$default(Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/hermes/android/pairing/PairingServerKt;->buildSetupHtml(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
