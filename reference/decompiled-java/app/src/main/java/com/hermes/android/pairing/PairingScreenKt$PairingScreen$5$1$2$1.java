package com.hermes.android.pairing;

import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: PairingScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
/* synthetic */ class PairingScreenKt$PairingScreen$5$1$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    PairingScreenKt$PairingScreen$5$1$2$1(Object obj) {
        super(0, obj, PairingViewModel.class, "startServer", "startServer()V", 0);
    }

    public /* bridge */ /* synthetic */ Object invoke() {
        m34invoke();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
    public final void m34invoke() {
        ((PairingViewModel) this.receiver).startServer();
    }
}
