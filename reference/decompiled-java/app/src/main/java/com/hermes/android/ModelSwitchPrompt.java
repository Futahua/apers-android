package com.hermes.android;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: ModelSwitchPrompt.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001 B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0006\u0010\u001e\u001a\u00020\u0013J\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\rR$\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006!"}, d2 = {"Lcom/hermes/android/ModelSwitchPrompt;", "", "<init>", "()V", "activeSessionHandleProvider", "Lkotlin/Function0;", "", "getActiveSessionHandleProvider", "()Lkotlin/jvm/functions/Function0;", "setActiveSessionHandleProvider", "(Lkotlin/jvm/functions/Function0;)V", "_pending", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/ModelSwitchPrompt$Offer;", "pending", "Lkotlinx/coroutines/flow/StateFlow;", "getPending", "()Lkotlinx/coroutines/flow/StateFlow;", "offer", "", "displayName", "provider", "model", "isSplitWs", "", "c", "", "isPythonSplitStable", "s", "hasFlagHazard", "dismiss", "command", "Offer", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ModelSwitchPrompt {
    public static final int $stable;
    public static final ModelSwitchPrompt INSTANCE = new ModelSwitchPrompt();
    private static final MutableStateFlow<Offer> _pending;
    private static volatile Function0<String> activeSessionHandleProvider;
    private static final StateFlow<Offer> pending;

    private ModelSwitchPrompt() {
    }

    public final Function0<String> getActiveSessionHandleProvider() {
        return activeSessionHandleProvider;
    }

    public final void setActiveSessionHandleProvider(Function0<String> function0) {
        activeSessionHandleProvider = function0;
    }

    /* JADX INFO: compiled from: ModelSwitchPrompt.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J3\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/ModelSwitchPrompt$Offer;", "", "displayName", "", "provider", "model", "originSessionHandle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDisplayName", "()Ljava/lang/String;", "getProvider", "getModel", "getOriginSessionHandle", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Offer {
        public static final int $stable = 0;
        private final String displayName;
        private final String model;
        private final String originSessionHandle;
        private final String provider;

        public static /* synthetic */ Offer copy$default(Offer offer, String str, String str2, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = offer.displayName;
            }
            if ((i & 2) != 0) {
                str2 = offer.provider;
            }
            if ((i & 4) != 0) {
                str3 = offer.model;
            }
            if ((i & 8) != 0) {
                str4 = offer.originSessionHandle;
            }
            return offer.copy(str, str2, str3, str4);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDisplayName() {
            return this.displayName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getProvider() {
            return this.provider;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getModel() {
            return this.model;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getOriginSessionHandle() {
            return this.originSessionHandle;
        }

        public final Offer copy(String displayName, String provider, String model, String originSessionHandle) {
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(provider, "provider");
            Intrinsics.checkNotNullParameter(model, "model");
            return new Offer(displayName, provider, model, originSessionHandle);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Offer)) {
                return false;
            }
            Offer offer = (Offer) other;
            return Intrinsics.areEqual(this.displayName, offer.displayName) && Intrinsics.areEqual(this.provider, offer.provider) && Intrinsics.areEqual(this.model, offer.model) && Intrinsics.areEqual(this.originSessionHandle, offer.originSessionHandle);
        }

        public int hashCode() {
            int iHashCode = ((((this.displayName.hashCode() * 31) + this.provider.hashCode()) * 31) + this.model.hashCode()) * 31;
            String str = this.originSessionHandle;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Offer(displayName=" + this.displayName + ", provider=" + this.provider + ", model=" + this.model + ", originSessionHandle=" + this.originSessionHandle + ")";
        }

        public Offer(String str, String str2, String str3, String str4) {
            Intrinsics.checkNotNullParameter(str, "displayName");
            Intrinsics.checkNotNullParameter(str2, "provider");
            Intrinsics.checkNotNullParameter(str3, "model");
            this.displayName = str;
            this.provider = str2;
            this.model = str3;
            this.originSessionHandle = str4;
        }

        public /* synthetic */ Offer(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, (i & 8) != 0 ? null : str4);
        }

        public final String getDisplayName() {
            return this.displayName;
        }

        public final String getProvider() {
            return this.provider;
        }

        public final String getModel() {
            return this.model;
        }

        public final String getOriginSessionHandle() {
            return this.originSessionHandle;
        }
    }

    static {
        MutableStateFlow<Offer> MutableStateFlow = StateFlowKt.MutableStateFlow((Object) null);
        _pending = MutableStateFlow;
        pending = FlowKt.asStateFlow(MutableStateFlow);
        $stable = 8;
    }

    public final StateFlow<Offer> getPending() {
        return pending;
    }

    public final void offer(String displayName, String provider, String model) {
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(model, "model");
        String str = provider;
        if (str.length() == 0) {
            return;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (INSTANCE.isSplitWs(cCharAt) || Character.isISOControl(cCharAt)) {
                return;
            }
        }
        if (hasFlagHazard(provider)) {
            return;
        }
        String str2 = model;
        if (str2.length() <= 0 || isPythonSplitStable(model)) {
            List<String> listSplit$default = StringsKt.split$default(str2, new char[]{' '}, false, 0, 6, (Object) null);
            if (!(listSplit$default instanceof Collection) || !listSplit$default.isEmpty()) {
                for (String str3 : listSplit$default) {
                    if (str3.length() > 0 && INSTANCE.hasFlagHazard(str3)) {
                        return;
                    }
                }
            }
            MutableStateFlow<Offer> mutableStateFlow = _pending;
            String string = StringsKt.trim(displayName).toString();
            if (StringsKt.isBlank(string)) {
                string = provider;
            }
            String str4 = string;
            Function0<String> function0 = activeSessionHandleProvider;
            mutableStateFlow.setValue(new Offer(str4, provider, model, function0 != null ? (String) function0.invoke() : null));
        }
    }

    private final boolean isSplitWs(char c) {
        return CharsKt.isWhitespace(c) || Character.isSpaceChar(c);
    }

    private final boolean isPythonSplitStable(String s) {
        int length = s.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = s.charAt(i);
            if (Character.isISOControl(cCharAt)) {
                return false;
            }
            if (isSplitWs(cCharAt) && (cCharAt != ' ' || i == 0 || i == s.length() - 1 || isSplitWs(s.charAt(i - 1)))) {
                return false;
            }
        }
        return true;
    }

    private final boolean hasFlagHazard(String s) {
        return StringsKt.startsWith$default(s, "--", false, 2, (Object) null) || StringsKt.contains$default(s, "--global", false, 2, (Object) null);
    }

    public final void dismiss() {
        _pending.setValue((Object) null);
    }

    public final String command(Offer offer) {
        String str;
        Intrinsics.checkNotNullParameter(offer, "offer");
        if (offer.getModel().length() == 0) {
            str = "/model --provider " + offer.getProvider();
        } else {
            str = "/model " + offer.getModel() + " --provider " + offer.getProvider();
        }
        return "\u0015" + str;
    }
}
