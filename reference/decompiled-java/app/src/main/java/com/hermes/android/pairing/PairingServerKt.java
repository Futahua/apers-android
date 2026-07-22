package com.hermes.android.pairing;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.AiProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PairingServer.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0005\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0000\u001a\"\u0010\u0002\u001a\u00020\u00012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u0004H\u0000\u001a$\u0010\u0006\u001a\u00020\u00012\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00050\u0004H\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"buildProviderOptions", BuildConfig.FLAVOR, "buildModelSuggestionsJson", "suggestions", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "buildSetupHtml", "modelSuggestions", "SETUP_CSS", "SETUP_HTML_TEMPLATE", "app_release"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class PairingServerKt {
    private static final String SETUP_CSS = ":root { --bg: #0f0f23; --card: #1a1a2e; --border: #262640; --text: #e2e8f0;\n  --muted: #9ca3af; --primary: #8b5cf6; --primary-hover: #a78bfa; --green: #10b981; }\n* { box-sizing: border-box; margin: 0; padding: 0; }\nbody { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;\n  background: var(--bg); color: var(--text); min-height: 100vh;\n  display: flex; align-items: center; justify-content: center; padding: 20px; }\n.container { max-width: 480px; width: 100%; }\nh1 { font-size: 28px; margin-bottom: 8px; color: var(--primary); }\n.subtitle { color: var(--muted); margin-bottom: 24px; }\n.card { background: var(--card); border: 1px solid var(--border); border-radius: 12px;\n  padding: 24px; margin-bottom: 16px; }\nlabel { display: block; font-size: 14px; color: var(--muted); margin-bottom: 6px; }\nselect, input[type=\"text\"], input[type=\"password\"] {\n  width: 100%; padding: 12px; background: var(--bg); border: 1px solid var(--border);\n  border-radius: 8px; color: var(--text); font-size: 16px; outline: none; }\nselect:focus, input:focus { border-color: var(--primary); }\n.section { margin-bottom: 16px; }\nbutton[type=\"submit\"] { width: 100%; padding: 14px; background: var(--primary); color: white;\n  border: none; border-radius: 8px; font-size: 16px; font-weight: 600; cursor: pointer; margin-top: 8px; }\nbutton[type=\"submit\"]:hover { background: var(--primary-hover); }\nbutton[type=\"submit\"]:disabled { opacity: 0.5; cursor: not-allowed; }\n.success { background: #052e16; border: 1px solid var(--green); border-radius: 12px;\n  padding: 24px; text-align: center; display: none; }\n.success h2 { color: var(--green); margin-bottom: 8px; }\n.help-link { color: var(--primary); text-decoration: none; font-size: 13px; display: inline-block; margin-top: 6px; }\n.toggle-vis { position: absolute; right: 12px; top: 50%; transform: translateY(-50%);\n  background: none; border: none; color: var(--muted); cursor: pointer; font-size: 14px; }\n.input-wrap { position: relative; }";
    private static final String SETUP_HTML_TEMPLATE = "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<title>Hermes-agent Android Setup</title>\n<link rel=\"stylesheet\" href=\"/style.css\">\n</head>\n<body>\n<div class=\"container\">\n  <h1>⚡ Hermes-agent Android Setup</h1>\n  <p class=\"subtitle\">Configure your AI provider from this browser</p>\n\n  <form id=\"setupForm\" onsubmit=\"return submitForm(event)\">\n    <div class=\"card\">\n      <div class=\"section\">\n        <label>Provider</label>\n        <select id=\"ai-provider\" onchange=\"onProviderChange()\">\n          {{PROVIDER_OPTIONS}}\n        </select>\n        <a id=\"ai-help-link\" class=\"help-link\" href=\"#\" target=\"_blank\">Get API Key →</a>\n      </div>\n\n      <div id=\"base-url-field\" class=\"section\" style=\"display:none\">\n        <label>Base URL</label>\n        <input type=\"text\" id=\"ai-base-url\" placeholder=\"https://api.example.com/v1\">\n      </div>\n      <div id=\"model-id-field\" class=\"section\" style=\"display:none\">\n        <label>Model ID</label>\n        <input type=\"text\" id=\"ai-model-id\" placeholder=\"model-name\" list=\"model-suggestions\" autocomplete=\"off\">\n        <datalist id=\"model-suggestions\"></datalist>\n      </div>\n\n      <div class=\"section\">\n        <label>API Key</label>\n        <div class=\"input-wrap\">\n          <input type=\"password\" id=\"ai-key\" placeholder=\"Paste your API key\" autocomplete=\"off\">\n          <button type=\"button\" class=\"toggle-vis\" onclick=\"toggleVis('ai-key')\">Show</button>\n        </div>\n      </div>\n    </div>\n\n    <button type=\"submit\" id=\"submitBtn\">Save Configuration</button>\n  </form>\n\n  <div class=\"success\" id=\"successMsg\">\n    <h2>✓ Saved!</h2>\n    <p>Configuration applied to your device.<br>You can close this page.</p>\n  </div>\n</div>\n\n<script>\n// provider.id → 可用模型清單（手機端 ModelCatalogCache 快取快照；無快取的 provider 不在 map）\nconst MODEL_SUGGESTIONS = {{MODEL_SUGGESTIONS}};\n\nfunction updateModelSuggestions(providerId) {\n  const dl = document.getElementById('model-suggestions');\n  dl.innerHTML = '';\n  (MODEL_SUGGESTIONS[providerId] || []).forEach(function(id) {\n    const o = document.createElement('option');\n    o.value = id;\n    dl.appendChild(o);\n  });\n}\n\nfunction onProviderChange() {\n  const sel = document.getElementById('ai-provider');\n  const opt = sel.options[sel.selectedIndex];\n  const link = document.getElementById('ai-help-link');\n  const url = opt.dataset.url || '';\n  link.href = url;\n  link.style.display = url ? 'inline-block' : 'none';\n  const isCustom = opt.dataset.custom === '1';\n  const baseUrlOptional = opt.dataset.baseUrlOptional === '1';\n  const allowsCustomModel = opt.dataset.allowsCustomModel === '1';\n  // Base URL 欄位：custom（必填）或支援覆蓋的 provider（選填，如 Alibaba）都顯示\n  document.getElementById('base-url-field').style.display = (isCustom || baseUrlOptional) ? 'block' : 'none';\n  // Model ID 欄位：custom（必填）或 allowsCustomModel（選填，如 OpenRouter）\n  document.getElementById('model-id-field').style.display = (isCustom || allowsCustomModel) ? 'block' : 'none';\n  if (isCustom || baseUrlOptional) {\n    document.getElementById('ai-base-url').value = opt.dataset.baseUrl || '';\n  }\n  if (isCustom || allowsCustomModel) {\n    document.getElementById('ai-model-id').value = opt.dataset.modelId || '';\n  }\n  updateModelSuggestions(sel.value);\n}\n\nfunction toggleVis(id) {\n  const inp = document.getElementById(id);\n  const btn = inp.nextElementSibling;\n  if (inp.type === 'password') { inp.type = 'text'; btn.textContent = 'Hide'; }\n  else { inp.type = 'password'; btn.textContent = 'Show'; }\n}\n\nasync function submitForm(e) {\n  e.preventDefault();\n  const btn = document.getElementById('submitBtn');\n  btn.disabled = true;\n  btn.textContent = 'Saving...';\n\n  const sel = document.getElementById('ai-provider');\n  const opt = sel.options[sel.selectedIndex];\n  const isCustom = opt.dataset.custom === '1';\n  const baseUrlOptional = opt.dataset.baseUrlOptional === '1';\n  const allowsCustomModel = opt.dataset.allowsCustomModel === '1';\n  const body = JSON.stringify({\n    provider: sel.value,\n    apiKey: document.getElementById('ai-key').value,\n    baseUrl: (isCustom || baseUrlOptional) ? document.getElementById('ai-base-url').value : '',\n    modelId: (isCustom || allowsCustomModel) ? document.getElementById('ai-model-id').value : '',\n    apiMode: opt.dataset.apiMode || 'openai',\n  });\n\n  try {\n    const res = await fetch('/submit', { method: 'POST', body, headers: { 'Content-Type': 'application/json' } });\n    const data = await res.json();\n    if (data.success) {\n      document.getElementById('setupForm').style.display = 'none';\n      document.getElementById('successMsg').style.display = 'block';\n    } else {\n      alert('Error: ' + data.message);\n      btn.disabled = false;\n      btn.textContent = 'Save Configuration';\n    }\n  } catch (err) {\n    alert('Connection failed: ' + err.message);\n    btn.disabled = false;\n    btn.textContent = 'Save Configuration';\n  }\n}\n\nonProviderChange();\n</script>\n</body>\n</html>";

    public static final String buildProviderOptions() {
        List<AiProvider> all = AiProvider.INSTANCE.getALL();
        ArrayList arrayList = new ArrayList();
        for (Object obj : all) {
            AiProvider aiProvider = (AiProvider) obj;
            if (!aiProvider.isOAuth() && !aiProvider.isVirtual()) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.joinToString$default(arrayList, "\n          ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.hermes.android.pairing.PairingServerKt$$ExternalSyntheticLambda0
            public final Object invoke(Object obj2) {
                return PairingServerKt.buildProviderOptions$lambda$1((AiProvider) obj2);
            }
        }, 30, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence buildProviderOptions$lambda$1(AiProvider aiProvider) {
        String str;
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(aiProvider, "p");
        boolean zIsCustom = aiProvider.isCustom();
        String str4 = BuildConfig.FLAVOR;
        if (zIsCustom) {
            str = " data-custom=\"1\" data-base-url=\"" + aiProvider.getDefaultBaseUrl() + "\" data-model-id=\"" + aiProvider.getDefaultModelId() + "\" data-api-mode=\"" + aiProvider.getApiMode() + "\"";
        } else {
            str = BuildConfig.FLAVOR;
        }
        if (aiProvider.isCustom() || StringsKt.isBlank(aiProvider.getBaseUrlEnvVar())) {
            str2 = BuildConfig.FLAVOR;
        } else {
            str2 = " data-base-url-optional=\"1\" data-base-url=\"" + aiProvider.getDefaultBaseUrl() + "\"";
        }
        if (aiProvider.isCustom() || !aiProvider.getAllowsCustomModel()) {
            str3 = BuildConfig.FLAVOR;
        } else {
            str3 = " data-allows-custom-model=\"1\" data-model-id=\"" + aiProvider.getHermesDefaultModel() + "\"";
        }
        if (!StringsKt.isBlank(aiProvider.getKeyUrl())) {
            str4 = " data-url=\"" + aiProvider.getKeyUrl() + "\"";
        }
        return "<option value=\"" + aiProvider.getId() + "\"" + str4 + str + str2 + str3 + ">" + aiProvider.getName() + "</option>";
    }

    public static final String buildModelSuggestionsJson(Map<String, ? extends List<String>> map) throws JSONException {
        Intrinsics.checkNotNullParameter(map, "suggestions");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ? extends List<String>> entry : map.entrySet()) {
            jSONObject.put(entry.getKey(), new JSONArray((Collection) entry.getValue()));
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return StringsKt.replace$default(string, "<", "\\u003c", false, 4, (Object) null);
    }

    public static /* synthetic */ String buildSetupHtml$default(Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return buildSetupHtml(map);
    }

    public static final String buildSetupHtml(Map<String, ? extends List<String>> map) {
        Intrinsics.checkNotNullParameter(map, "modelSuggestions");
        return StringsKt.replace$default(StringsKt.replace$default(SETUP_HTML_TEMPLATE, "{{PROVIDER_OPTIONS}}", buildProviderOptions(), false, 4, (Object) null), "{{MODEL_SUGGESTIONS}}", buildModelSuggestionsJson(map), false, 4, (Object) null);
    }
}
