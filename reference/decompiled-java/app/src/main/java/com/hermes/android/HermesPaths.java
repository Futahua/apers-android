package com.hermes.android;

import android.content.Context;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HermesPaths.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/hermes/android/HermesPaths;", "", "<init>", "()V", "DIR_NAME", "", "SHELL_HERMES_HOME", "hermesHome", "Ljava/io/File;", "homeDir", "homeDirPath", "context", "Landroid/content/Context;", "stateDb", "meshDir", "handoffDir", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HermesPaths {
    public static final int $stable = 0;
    public static final String DIR_NAME = ".hermes";
    public static final HermesPaths INSTANCE = new HermesPaths();
    public static final String SHELL_HERMES_HOME = "$HOME/.hermes";

    private HermesPaths() {
    }

    public final File hermesHome(File homeDir) {
        Intrinsics.checkNotNullParameter(homeDir, "homeDir");
        return new File(homeDir, DIR_NAME);
    }

    public final File hermesHome(String homeDirPath) {
        Intrinsics.checkNotNullParameter(homeDirPath, "homeDirPath");
        return new File(homeDirPath, DIR_NAME);
    }

    public final File hermesHome(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(context.getFilesDir(), "home/.hermes");
    }

    public final File stateDb(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(hermesHome(context), "state.db");
    }

    public final File meshDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(hermesHome(context), "mesh");
    }

    public final File handoffDir(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new File(hermesHome(context), "handoff");
    }
}
