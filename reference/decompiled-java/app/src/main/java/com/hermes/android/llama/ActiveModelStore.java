package com.hermes.android.llama;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ActiveModelStore.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u001d\u0010\u0016\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00172\u0006\u0010\f\u001a\u00020\rH\u0002¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/hermes/android/llama/ActiveModelStore;", BuildConfig.FLAVOR, "<init>", "()V", "PREFS_NAME", BuildConfig.FLAVOR, "KEY_DISPLAY_NAME", "KEY_SOURCE_DESC", "KEY_SIZE_BYTES", "KEY_SAVED_AT", "save", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "displayName", "sourceDescription", "sizeBytes", BuildConfig.FLAVOR, "savedAtMillis", "read", "Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;", "clear", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "(Landroid/content/Context;)Landroid/content/SharedPreferences;", "ActiveModelMeta", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ActiveModelStore {
    public static final int $stable = 0;
    public static final ActiveModelStore INSTANCE = new ActiveModelStore();
    private static final String KEY_DISPLAY_NAME = "display_name";
    private static final String KEY_SAVED_AT = "saved_at_millis";
    private static final String KEY_SIZE_BYTES = "size_bytes";
    private static final String KEY_SOURCE_DESC = "source_desc";
    private static final String PREFS_NAME = "hermes_llama_active_model";

    private ActiveModelStore() {
    }

    /* JADX INFO: compiled from: ActiveModelStore.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;", BuildConfig.FLAVOR, "displayName", BuildConfig.FLAVOR, "sourceDescription", "sizeBytes", BuildConfig.FLAVOR, "savedAtMillis", "<init>", "(Ljava/lang/String;Ljava/lang/String;JJ)V", "getDisplayName", "()Ljava/lang/String;", "getSourceDescription", "getSizeBytes", "()J", "getSavedAtMillis", "component1", "component2", "component3", "component4", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class ActiveModelMeta {
        public static final int $stable = 0;
        private final String displayName;
        private final long savedAtMillis;
        private final long sizeBytes;
        private final String sourceDescription;

        public static /* synthetic */ ActiveModelMeta copy$default(ActiveModelMeta activeModelMeta, String str, String str2, long j, long j2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = activeModelMeta.displayName;
            }
            if ((i & 2) != 0) {
                str2 = activeModelMeta.sourceDescription;
            }
            String str3 = str2;
            if ((i & 4) != 0) {
                j = activeModelMeta.sizeBytes;
            }
            long j3 = j;
            if ((i & 8) != 0) {
                j2 = activeModelMeta.savedAtMillis;
            }
            return activeModelMeta.copy(str, str3, j3, j2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDisplayName() {
            return this.displayName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getSourceDescription() {
            return this.sourceDescription;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final long getSizeBytes() {
            return this.sizeBytes;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final long getSavedAtMillis() {
            return this.savedAtMillis;
        }

        public final ActiveModelMeta copy(String displayName, String sourceDescription, long sizeBytes, long savedAtMillis) {
            Intrinsics.checkNotNullParameter(displayName, "displayName");
            Intrinsics.checkNotNullParameter(sourceDescription, "sourceDescription");
            return new ActiveModelMeta(displayName, sourceDescription, sizeBytes, savedAtMillis);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ActiveModelMeta)) {
                return false;
            }
            ActiveModelMeta activeModelMeta = (ActiveModelMeta) other;
            return Intrinsics.areEqual(this.displayName, activeModelMeta.displayName) && Intrinsics.areEqual(this.sourceDescription, activeModelMeta.sourceDescription) && this.sizeBytes == activeModelMeta.sizeBytes && this.savedAtMillis == activeModelMeta.savedAtMillis;
        }

        public int hashCode() {
            return (((((this.displayName.hashCode() * 31) + this.sourceDescription.hashCode()) * 31) + Long.hashCode(this.sizeBytes)) * 31) + Long.hashCode(this.savedAtMillis);
        }

        public String toString() {
            return "ActiveModelMeta(displayName=" + this.displayName + ", sourceDescription=" + this.sourceDescription + ", sizeBytes=" + this.sizeBytes + ", savedAtMillis=" + this.savedAtMillis + ")";
        }

        public ActiveModelMeta(String str, String str2, long j, long j2) {
            Intrinsics.checkNotNullParameter(str, "displayName");
            Intrinsics.checkNotNullParameter(str2, "sourceDescription");
            this.displayName = str;
            this.sourceDescription = str2;
            this.sizeBytes = j;
            this.savedAtMillis = j2;
        }

        public final String getDisplayName() {
            return this.displayName;
        }

        public final String getSourceDescription() {
            return this.sourceDescription;
        }

        public final long getSizeBytes() {
            return this.sizeBytes;
        }

        public final long getSavedAtMillis() {
            return this.savedAtMillis;
        }
    }

    public final void save(Context context, String displayName, String sourceDescription, long sizeBytes, long savedAtMillis) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(sourceDescription, "sourceDescription");
        prefs(context).edit().putString(KEY_DISPLAY_NAME, displayName).putString(KEY_SOURCE_DESC, sourceDescription).putLong(KEY_SIZE_BYTES, sizeBytes).putLong(KEY_SAVED_AT, savedAtMillis).apply();
    }

    public final ActiveModelMeta read(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferencesPrefs = prefs(context);
        String string = sharedPreferencesPrefs.getString(KEY_DISPLAY_NAME, null);
        if (string == null) {
            return null;
        }
        String string2 = sharedPreferencesPrefs.getString(KEY_SOURCE_DESC, BuildConfig.FLAVOR);
        return new ActiveModelMeta(string, string2 == null ? BuildConfig.FLAVOR : string2, sharedPreferencesPrefs.getLong(KEY_SIZE_BYTES, 0L), sharedPreferencesPrefs.getLong(KEY_SAVED_AT, 0L));
    }

    public final void clear(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        prefs(context).edit().clear().apply();
    }

    private final SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0);
    }
}
