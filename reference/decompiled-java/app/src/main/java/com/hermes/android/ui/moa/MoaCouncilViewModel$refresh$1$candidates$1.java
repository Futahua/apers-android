package com.hermes.android.ui.moa;

import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoaCouncilViewModel.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
/* synthetic */ class MoaCouncilViewModel$refresh$1$candidates$1 extends FunctionReferenceImpl implements Function1<String, Boolean> {
    MoaCouncilViewModel$refresh$1$candidates$1(Object obj) {
        super(1, obj, HermesConfigRepository.class, "hasApiKey", "hasApiKey(Ljava/lang/String;)Z", 0);
    }

    public final Boolean invoke(String str) {
        Intrinsics.checkNotNullParameter(str, "p0");
        return Boolean.valueOf(((HermesConfigRepository) this.receiver).hasApiKey(str));
    }
}
