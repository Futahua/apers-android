package com.hermes.android.llama;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;

/* JADX INFO: compiled from: LocalLlmThresholds.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\t\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0005J \u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0005J \u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/llama/LocalLlmThresholds;", BuildConfig.FLAVOR, "<init>", "()V", "DEFAULT_SAFETY_FACTOR", BuildConfig.FLAVOR, "shouldWarnInsufficientRam", BuildConfig.FLAVOR, "totalRamBytes", BuildConfig.FLAVOR, "modelSizeBytes", "safetyFactor", "shouldWarnLowAvailableMemory", "availMemBytes", "hasEnoughStorageForDownload", "availableBytes", "bufferBytes", "DEFAULT_STORAGE_BUFFER_BYTES", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class LocalLlmThresholds {
    public static final int $stable = 0;
    public static final int DEFAULT_SAFETY_FACTOR = 2;
    public static final long DEFAULT_STORAGE_BUFFER_BYTES = 104857600;
    public static final LocalLlmThresholds INSTANCE = new LocalLlmThresholds();

    private LocalLlmThresholds() {
    }

    public static /* synthetic */ boolean shouldWarnInsufficientRam$default(LocalLlmThresholds localLlmThresholds, long j, long j2, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 2;
        }
        return localLlmThresholds.shouldWarnInsufficientRam(j, j2, i);
    }

    public final boolean shouldWarnInsufficientRam(long totalRamBytes, long modelSizeBytes, int safetyFactor) {
        if (modelSizeBytes <= 0) {
            throw new IllegalArgumentException("modelSizeBytes must be positive".toString());
        }
        if (safetyFactor > 0) {
            return totalRamBytes < modelSizeBytes * ((long) safetyFactor);
        }
        throw new IllegalArgumentException("safetyFactor must be positive".toString());
    }

    public static /* synthetic */ boolean shouldWarnLowAvailableMemory$default(LocalLlmThresholds localLlmThresholds, long j, long j2, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 2;
        }
        return localLlmThresholds.shouldWarnLowAvailableMemory(j, j2, i);
    }

    public final boolean shouldWarnLowAvailableMemory(long availMemBytes, long modelSizeBytes, int safetyFactor) {
        if (modelSizeBytes <= 0) {
            throw new IllegalArgumentException("modelSizeBytes must be positive".toString());
        }
        if (safetyFactor > 0) {
            return availMemBytes < modelSizeBytes * ((long) safetyFactor);
        }
        throw new IllegalArgumentException("safetyFactor must be positive".toString());
    }

    public static /* synthetic */ boolean hasEnoughStorageForDownload$default(LocalLlmThresholds localLlmThresholds, long j, long j2, long j3, int i, Object obj) {
        if ((i & 4) != 0) {
            j3 = DEFAULT_STORAGE_BUFFER_BYTES;
        }
        return localLlmThresholds.hasEnoughStorageForDownload(j, j2, j3);
    }

    public final boolean hasEnoughStorageForDownload(long availableBytes, long modelSizeBytes, long bufferBytes) {
        if (modelSizeBytes <= 0) {
            throw new IllegalArgumentException("modelSizeBytes must be positive".toString());
        }
        if (bufferBytes >= 0) {
            return availableBytes >= modelSizeBytes + bufferBytes;
        }
        throw new IllegalArgumentException("bufferBytes must be non-negative".toString());
    }
}
