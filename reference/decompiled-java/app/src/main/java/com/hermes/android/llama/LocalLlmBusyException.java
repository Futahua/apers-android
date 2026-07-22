package com.hermes.android.llama;

import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;

/* JADX INFO: compiled from: LocalInferenceTypes.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/hermes/android/llama/LocalLlmBusyException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class LocalLlmBusyException extends Exception {
    public static final int $stable = 0;

    public LocalLlmBusyException() {
        super("A local LLM operation is already in progress");
    }
}
