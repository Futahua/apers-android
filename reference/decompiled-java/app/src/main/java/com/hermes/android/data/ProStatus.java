package com.hermes.android.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: ProStatus.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/hermes/android/data/ProStatus;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "prefs", "Landroid/content/SharedPreferences;", "_tier", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/data/ProStatus$Tier;", "tier", "Lkotlinx/coroutines/flow/StateFlow;", "getTier", "()Lkotlinx/coroutines/flow/StateFlow;", "isPro", BuildConfig.FLAVOR, "()Z", "setPro", BuildConfig.FLAVOR, "pro", "Tier", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ProStatus {
    private static final String KEY_IS_PRO = "is_pro";
    private static final String TAG = "ProStatus";
    private final MutableStateFlow<Tier> _tier;
    private final SharedPreferences prefs;
    private final StateFlow<Tier> tier;
    public static final int $stable = 8;

    public ProStatus(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("pro_status", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
        MutableStateFlow<Tier> MutableStateFlow = StateFlowKt.MutableStateFlow(sharedPreferences.getBoolean(KEY_IS_PRO, false) ? Tier.PRO : Tier.FREE);
        this._tier = MutableStateFlow;
        this.tier = FlowKt.asStateFlow(MutableStateFlow);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ProStatus.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/hermes/android/data/ProStatus$Tier;", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I)V", "FREE", "PRO", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Tier {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Tier[] $VALUES;
        public static final Tier FREE = new Tier("FREE", 0);
        public static final Tier PRO = new Tier("PRO", 1);

        private static final /* synthetic */ Tier[] $values() {
            return new Tier[]{FREE, PRO};
        }

        public static EnumEntries<Tier> getEntries() {
            return $ENTRIES;
        }

        static {
            Tier[] tierArr$values = $values();
            $VALUES = tierArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(tierArr$values);
        }

        private Tier(String str, int i) {
        }

        public static Tier valueOf(String str) {
            return (Tier) Enum.valueOf(Tier.class, str);
        }

        public static Tier[] values() {
            return (Tier[]) $VALUES.clone();
        }
    }

    public final StateFlow<Tier> getTier() {
        return this.tier;
    }

    public final boolean isPro() {
        return this._tier.getValue() == Tier.PRO;
    }

    public final void setPro(boolean pro) {
        this.prefs.edit().putBoolean(KEY_IS_PRO, pro).apply();
        this._tier.setValue(pro ? Tier.PRO : Tier.FREE);
        Log.d(TAG, "Pro status set to " + pro);
    }
}
