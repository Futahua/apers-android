package com.hermes.android.llama;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalLlmCrashGuard.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n2\u0006\u0010\f\u001a\u00020\rH\u0002¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0016\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/hermes/android/llama/LocalLlmCrashGuard;", BuildConfig.FLAVOR, "<init>", "()V", "STAGE_LOAD", BuildConfig.FLAVOR, "STAGE_GENERATE", "PREFS_NAME", "KEY_DIRTY_STAGE", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "context", "Landroid/content/Context;", "(Landroid/content/Context;)Landroid/content/SharedPreferences;", "enterStage", BuildConfig.FLAVOR, "stage", "clearStage", BuildConfig.FLAVOR, "lastDirtyStage", "wasCleanExit", "isLoadFuseTripped", "reset", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class LocalLlmCrashGuard {
    public static final int $stable = 0;
    public static final LocalLlmCrashGuard INSTANCE = new LocalLlmCrashGuard();
    private static final String KEY_DIRTY_STAGE = "local_llm_dirty_stage";
    private static final String PREFS_NAME = "hermes_llama_engine";
    public static final String STAGE_GENERATE = "generate";
    public static final String STAGE_LOAD = "load";

    private LocalLlmCrashGuard() {
    }

    private final SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS_NAME, 0);
    }

    public final boolean enterStage(Context context, String stage) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(stage, "stage");
        return prefs(context).edit().putString(KEY_DIRTY_STAGE, stage).commit();
    }

    public final void clearStage(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        prefs(context).edit().remove(KEY_DIRTY_STAGE).commit();
    }

    public final String lastDirtyStage(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return prefs(context).getString(KEY_DIRTY_STAGE, null);
    }

    public final boolean wasCleanExit(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return lastDirtyStage(context) == null;
    }

    public final boolean isLoadFuseTripped(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Intrinsics.areEqual(lastDirtyStage(context), STAGE_LOAD);
    }

    public final void reset(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        clearStage(context);
    }
}
