package com.hermes.android.llama;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ModelDownloadState.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\b\tB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\n\u000b\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/hermes/android/llama/ModelDownloadState;", BuildConfig.FLAVOR, "<init>", "()V", "Idle", "Downloading", "Verifying", "Ready", "Failed", "FailureReason", "Lcom/hermes/android/llama/ModelDownloadState$Downloading;", "Lcom/hermes/android/llama/ModelDownloadState$Failed;", "Lcom/hermes/android/llama/ModelDownloadState$Idle;", "Lcom/hermes/android/llama/ModelDownloadState$Ready;", "Lcom/hermes/android/llama/ModelDownloadState$Verifying;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public abstract class ModelDownloadState {
    public static final int $stable = 0;

    public /* synthetic */ ModelDownloadState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ModelDownloadState() {
    }

    /* JADX INFO: compiled from: ModelDownloadState.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/hermes/android/llama/ModelDownloadState$Idle;", "Lcom/hermes/android/llama/ModelDownloadState;", "<init>", "()V", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Idle extends ModelDownloadState {
        public static final int $stable = 0;
        public static final Idle INSTANCE = new Idle();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Idle)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -213381937;
        }

        public String toString() {
            return "Idle";
        }

        private Idle() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ModelDownloadState.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/llama/ModelDownloadState$Downloading;", "Lcom/hermes/android/llama/ModelDownloadState;", "bytesDownloaded", BuildConfig.FLAVOR, "totalBytes", "<init>", "(JJ)V", "getBytesDownloaded", "()J", "getTotalBytes", "progress", BuildConfig.FLAVOR, "getProgress", "()F", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Downloading extends ModelDownloadState {
        public static final int $stable = 0;
        private final long bytesDownloaded;
        private final long totalBytes;

        public static /* synthetic */ Downloading copy$default(Downloading downloading, long j, long j2, int i, Object obj) {
            if ((i & 1) != 0) {
                j = downloading.bytesDownloaded;
            }
            if ((i & 2) != 0) {
                j2 = downloading.totalBytes;
            }
            return downloading.copy(j, j2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final long getBytesDownloaded() {
            return this.bytesDownloaded;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getTotalBytes() {
            return this.totalBytes;
        }

        public final Downloading copy(long bytesDownloaded, long totalBytes) {
            return new Downloading(bytesDownloaded, totalBytes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Downloading)) {
                return false;
            }
            Downloading downloading = (Downloading) other;
            return this.bytesDownloaded == downloading.bytesDownloaded && this.totalBytes == downloading.totalBytes;
        }

        public int hashCode() {
            return (Long.hashCode(this.bytesDownloaded) * 31) + Long.hashCode(this.totalBytes);
        }

        public String toString() {
            return "Downloading(bytesDownloaded=" + this.bytesDownloaded + ", totalBytes=" + this.totalBytes + ")";
        }

        public Downloading(long j, long j2) {
            super(null);
            this.bytesDownloaded = j;
            this.totalBytes = j2;
        }

        public final long getBytesDownloaded() {
            return this.bytesDownloaded;
        }

        public final long getTotalBytes() {
            return this.totalBytes;
        }

        public final float getProgress() {
            long j = this.totalBytes;
            if (j > 0) {
                return RangesKt.coerceIn(this.bytesDownloaded / j, 0.0f, 1.0f);
            }
            return 0.0f;
        }
    }

    /* JADX INFO: compiled from: ModelDownloadState.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/hermes/android/llama/ModelDownloadState$Verifying;", "Lcom/hermes/android/llama/ModelDownloadState;", "<init>", "()V", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Verifying extends ModelDownloadState {
        public static final int $stable = 0;
        public static final Verifying INSTANCE = new Verifying();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Verifying)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -293328722;
        }

        public String toString() {
            return "Verifying";
        }

        private Verifying() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ModelDownloadState.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/hermes/android/llama/ModelDownloadState$Ready;", "Lcom/hermes/android/llama/ModelDownloadState;", "<init>", "()V", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Ready extends ModelDownloadState {
        public static final int $stable = 0;
        public static final Ready INSTANCE = new Ready();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Ready)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1983425544;
        }

        public String toString() {
            return "Ready";
        }

        private Ready() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: ModelDownloadState.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/hermes/android/llama/ModelDownloadState$Failed;", "Lcom/hermes/android/llama/ModelDownloadState;", "reason", "Lcom/hermes/android/llama/ModelDownloadState$FailureReason;", "detail", BuildConfig.FLAVOR, "<init>", "(Lcom/hermes/android/llama/ModelDownloadState$FailureReason;Ljava/lang/String;)V", "getReason", "()Lcom/hermes/android/llama/ModelDownloadState$FailureReason;", "getDetail", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Failed extends ModelDownloadState {
        public static final int $stable = 0;
        private final String detail;
        private final FailureReason reason;

        public static /* synthetic */ Failed copy$default(Failed failed, FailureReason failureReason, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                failureReason = failed.reason;
            }
            if ((i & 2) != 0) {
                str = failed.detail;
            }
            return failed.copy(failureReason, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final FailureReason getReason() {
            return this.reason;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getDetail() {
            return this.detail;
        }

        public final Failed copy(FailureReason reason, String detail) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new Failed(reason, detail);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Failed)) {
                return false;
            }
            Failed failed = (Failed) other;
            return this.reason == failed.reason && Intrinsics.areEqual(this.detail, failed.detail);
        }

        public int hashCode() {
            int iHashCode = this.reason.hashCode() * 31;
            String str = this.detail;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Failed(reason=" + this.reason + ", detail=" + this.detail + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(FailureReason failureReason, String str) {
            super(null);
            Intrinsics.checkNotNullParameter(failureReason, "reason");
            this.reason = failureReason;
            this.detail = str;
        }

        public /* synthetic */ Failed(FailureReason failureReason, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(failureReason, (i & 2) != 0 ? null : str);
        }

        public final String getDetail() {
            return this.detail;
        }

        public final FailureReason getReason() {
            return this.reason;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ModelDownloadState.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/hermes/android/llama/ModelDownloadState$FailureReason;", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I)V", "NETWORK", "INSUFFICIENT_STORAGE", "CHECKSUM_MISMATCH", "INVALID_FORMAT", "RATE_LIMITED", "UNKNOWN", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class FailureReason {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FailureReason[] $VALUES;
        public static final FailureReason NETWORK = new FailureReason("NETWORK", 0);
        public static final FailureReason INSUFFICIENT_STORAGE = new FailureReason("INSUFFICIENT_STORAGE", 1);
        public static final FailureReason CHECKSUM_MISMATCH = new FailureReason("CHECKSUM_MISMATCH", 2);
        public static final FailureReason INVALID_FORMAT = new FailureReason("INVALID_FORMAT", 3);
        public static final FailureReason RATE_LIMITED = new FailureReason("RATE_LIMITED", 4);
        public static final FailureReason UNKNOWN = new FailureReason("UNKNOWN", 5);

        private static final /* synthetic */ FailureReason[] $values() {
            return new FailureReason[]{NETWORK, INSUFFICIENT_STORAGE, CHECKSUM_MISMATCH, INVALID_FORMAT, RATE_LIMITED, UNKNOWN};
        }

        public static EnumEntries<FailureReason> getEntries() {
            return $ENTRIES;
        }

        private FailureReason(String str, int i) {
        }

        static {
            FailureReason[] failureReasonArr$values = $values();
            $VALUES = failureReasonArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(failureReasonArr$values);
        }

        public static FailureReason valueOf(String str) {
            return (FailureReason) Enum.valueOf(FailureReason.class, str);
        }

        public static FailureReason[] values() {
            return (FailureReason[]) $VALUES.clone();
        }
    }
}
