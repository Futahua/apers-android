package com.hermes.android.pairing;

import android.content.Context;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.HermesPaths;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PairingViewModel.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"createPairingViewModel", "Lcom/hermes/android/pairing/PairingViewModel;", "context", "Landroid/content/Context;", "app_release"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class PairingViewModelKt {
    public static final PairingViewModel createPairingViewModel(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new PairingViewModel(context, new HermesConfigRepository(HermesPaths.INSTANCE.hermesHome(context)));
    }
}
