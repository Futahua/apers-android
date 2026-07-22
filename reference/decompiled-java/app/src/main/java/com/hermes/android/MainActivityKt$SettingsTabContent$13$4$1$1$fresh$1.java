package com.hermes.android;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* synthetic */ class MainActivityKt$SettingsTabContent$13$4$1$1$fresh$1 extends AdaptedFunctionReference implements Function2<String, Long, Pair<? extends Integer, ? extends String>> {
    MainActivityKt$SettingsTabContent$13$4$1$1$fresh$1(Object obj) {
        super(2, obj, BootstrapManager.class, "runInTermux", "runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;", 0);
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((String) obj, ((Number) obj2).longValue());
    }

    public final Pair<Integer, String> invoke(String str, long j) {
        Intrinsics.checkNotNullParameter(str, "p0");
        return BootstrapManager.runInTermux$default((BootstrapManager) this.receiver, str, j, false, 4, null);
    }
}
