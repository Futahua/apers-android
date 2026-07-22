package com.hermes.android;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BootstrapManager.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0001\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/hermes/android/PackageSubsystemPoisonedException;", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", "message", "", "<init>", "(Ljava/lang/String;)V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PackageSubsystemPoisonedException extends IllegalStateException {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PackageSubsystemPoisonedException(String str) {
        super(str);
        Intrinsics.checkNotNullParameter(str, "message");
    }
}
