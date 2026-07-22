package com.hermes.android.pairing;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import fi.iki.elonen.NanoHTTPD;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PairingServer.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014BI\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012 \b\u0002\u0010\u0004\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\b0\u00060\u0005\u0012\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00070\n¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u000fH\u0002R&\u0010\u0004\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\b0\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00070\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/hermes/android/pairing/PairingServer;", "Lfi/iki/elonen/NanoHTTPD;", "port", BuildConfig.FLAVOR, "modelSuggestions", "Lkotlin/Function0;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, "onConfigReceived", "Lkotlin/Function1;", "Lcom/hermes/android/pairing/PairingConfig;", "<init>", "(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "serve", "Lfi/iki/elonen/NanoHTTPD$Response;", "session", "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;", "handleSubmit", "serveSetupPage", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class PairingServer extends NanoHTTPD {
    public static final int $stable = 0;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int DEFAULT_PORT = 8765;
    private static final String TAG = "HermesPairing";
    private final Function0<Map<String, List<String>>> modelSuggestions;
    private final Function1<PairingConfig, String> onConfigReceived;

    public /* synthetic */ PairingServer(int i, Function0 function0, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? DEFAULT_PORT : i, (i2 & 2) != 0 ? new Function0() { // from class: com.hermes.android.pairing.PairingServer$$ExternalSyntheticLambda0
            public final Object invoke() {
                return MapsKt.emptyMap();
            }
        } : function0, function1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PairingServer(int i, Function0<? extends Map<String, ? extends List<String>>> function0, Function1<? super PairingConfig, String> function1) {
        super(i);
        Intrinsics.checkNotNullParameter(function0, "modelSuggestions");
        Intrinsics.checkNotNullParameter(function1, "onConfigReceived");
        this.modelSuggestions = function0;
        this.onConfigReceived = function1;
    }

    /* JADX INFO: compiled from: PairingServer.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/hermes/android/pairing/PairingServer$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "TAG", BuildConfig.FLAVOR, "DEFAULT_PORT", BuildConfig.FLAVOR, "getDeviceIp", "context", "Landroid/content/Context;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getDeviceIp(Context context) {
            WifiInfo connectionInfo;
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                Object systemService = context.getApplicationContext().getSystemService("wifi");
                WifiManager wifiManager = systemService instanceof WifiManager ? (WifiManager) systemService : null;
                int ipAddress = (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) ? 0 : connectionInfo.getIpAddress();
                if (ipAddress != 0) {
                    return (ipAddress & 255) + "." + ((ipAddress >> 8) & 255) + "." + ((ipAddress >> 16) & 255) + "." + ((ipAddress >> 24) & 255);
                }
            } catch (Exception e) {
                Log.w(PairingServer.TAG, "WifiManager failed", e);
            }
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                if (networkInterfaces != null) {
                    ArrayList list = Collections.list(networkInterfaces);
                    Intrinsics.checkNotNullExpressionValue(list, "list(...)");
                    ArrayList<NetworkInterface> arrayList = list;
                    if (arrayList != null) {
                        for (NetworkInterface networkInterface : arrayList) {
                            if (!networkInterface.isLoopback() && networkInterface.isUp()) {
                                Enumeration<InetAddress> inetAddresses = networkInterface.getInetAddresses();
                                Intrinsics.checkNotNullExpressionValue(inetAddresses, "getInetAddresses(...)");
                                ArrayList<InetAddress> list2 = Collections.list(inetAddresses);
                                Intrinsics.checkNotNullExpressionValue(list2, "list(...)");
                                for (InetAddress inetAddress : list2) {
                                    if ((inetAddress instanceof Inet4Address) && !((Inet4Address) inetAddress).isLoopbackAddress()) {
                                        return ((Inet4Address) inetAddress).getHostAddress();
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                Log.w(PairingServer.TAG, "NetworkInterface fallback failed", e2);
            }
            return null;
        }
    }

    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (session.getMethod() == NanoHTTPD.Method.GET && Intrinsics.areEqual(session.getUri(), "/")) {
            return serveSetupPage();
        }
        if (session.getMethod() == NanoHTTPD.Method.GET && Intrinsics.areEqual(session.getUri(), "/style.css")) {
            NanoHTTPD.Response responseNewFixedLengthResponse = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/css", PairingServerKt.SETUP_CSS);
            Intrinsics.checkNotNullExpressionValue(responseNewFixedLengthResponse, "newFixedLengthResponse(...)");
            return responseNewFixedLengthResponse;
        }
        if (session.getMethod() == NanoHTTPD.Method.POST && Intrinsics.areEqual(session.getUri(), "/submit")) {
            return handleSubmit(session);
        }
        NanoHTTPD.Response responseNewFixedLengthResponse2 = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/html", "Not found");
        Intrinsics.checkNotNullExpressionValue(responseNewFixedLengthResponse2, "newFixedLengthResponse(...)");
        return responseNewFixedLengthResponse2;
    }

    private final NanoHTTPD.Response handleSubmit(NanoHTTPD.IHTTPSession session) throws JSONException {
        PairingConfig pairingConfig;
        try {
            HashMap map = new HashMap();
            session.parseBody(map);
            String str = (String) map.get("postData");
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("provider", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
            String strOptString2 = jSONObject.optString("apiKey", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
            String strOptString3 = jSONObject.optString("baseUrl", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
            String strOptString4 = jSONObject.optString("modelId", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(strOptString4, "optString(...)");
            String strOptString5 = jSONObject.optString("apiMode", "openai");
            Intrinsics.checkNotNullExpressionValue(strOptString5, "optString(...)");
            pairingConfig = new PairingConfig(strOptString, strOptString2, strOptString3, strOptString4, strOptString5);
            Log.i(TAG, "Config received: provider=" + pairingConfig.getProviderId());
        } catch (Exception e) {
            e = e;
        }
        try {
            String str2 = (String) this.onConfigReceived.invoke(pairingConfig);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("success", str2 == null);
            jSONObject2.put("message", str2 == null ? "Configuration saved successfully!" : str2);
            return NanoHTTPD.newFixedLengthResponse((NanoHTTPD.Response.IStatus) (str2 == null ? NanoHTTPD.Response.Status.OK : NanoHTTPD.Response.Status.BAD_REQUEST), "application/json", jSONObject2.toString());
        } catch (Exception e2) {
            e = e2;
            Log.e(TAG, "Failed to handle submit", e);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("success", false);
            jSONObject3.put("message", "Error: " + e.getMessage());
            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "application/json", jSONObject3.toString());
        }
    }

    private final NanoHTTPD.Response serveSetupPage() {
        Object obj;
        NanoHTTPD.Response.IStatus iStatus = NanoHTTPD.Response.Status.OK;
        try {
            Result.Companion companion = Result.Companion;
            PairingServer pairingServer = this;
            obj = Result.constructor-impl((Map) this.modelSuggestions.invoke());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        Map mapEmptyMap = MapsKt.emptyMap();
        if (Result.isFailure-impl(obj)) {
            obj = mapEmptyMap;
        }
        NanoHTTPD.Response responseNewFixedLengthResponse = NanoHTTPD.newFixedLengthResponse(iStatus, "text/html", PairingServerKt.buildSetupHtml((Map) obj));
        Intrinsics.checkNotNullExpressionValue(responseNewFixedLengthResponse, "newFixedLengthResponse(...)");
        return responseNewFixedLengthResponse;
    }
}
