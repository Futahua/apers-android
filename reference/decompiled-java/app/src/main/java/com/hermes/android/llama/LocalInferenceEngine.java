package com.hermes.android.llama;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: LocalInferenceEngine.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001JV\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u001c\b\u0002\u0010\u0012\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H&J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fH¦@¢\u0006\u0002\u0010\u0018J\u000e\u0010\u0019\u001a\u00020\u0014H¦@¢\u0006\u0002\u0010\u001aR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/hermes/android/llama/LocalInferenceEngine;", BuildConfig.FLAVOR, "isModelLoaded", BuildConfig.FLAVOR, "()Z", "backendInfo", BuildConfig.FLAVOR, "getBackendInfo", "()Ljava/lang/String;", "generateStreaming", "Lkotlinx/coroutines/flow/Flow;", "messages", BuildConfig.FLAVOR, "Lcom/hermes/android/llama/ChatMessage;", "tools", "Lcom/hermes/android/llama/ToolSpec;", "maxTokens", BuildConfig.FLAVOR, "onEffectiveTools", "Lkotlin/Function1;", BuildConfig.FLAVOR, "parseAssistantOutput", "Lcom/hermes/android/llama/ParsedAssistantOutput;", "rawText", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unloadModel", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public interface LocalInferenceEngine {
    Flow<String> generateStreaming(List<ChatMessage> messages, List<ToolSpec> tools, int maxTokens, Function1<? super List<ToolSpec>, Unit> onEffectiveTools);

    String getBackendInfo();

    boolean isModelLoaded();

    Object parseAssistantOutput(String str, List<ToolSpec> list, Continuation<? super ParsedAssistantOutput> continuation);

    Object unloadModel(Continuation<? super Unit> continuation);

    /* JADX INFO: compiled from: LocalInferenceEngine.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Flow generateStreaming$default(LocalInferenceEngine localInferenceEngine, List list, List list2, int i, Function1 function1, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: generateStreaming");
            }
            if ((i2 & 2) != 0) {
                list2 = null;
            }
            if ((i2 & 4) != 0) {
                i = 512;
            }
            if ((i2 & 8) != 0) {
                function1 = null;
            }
            return localInferenceEngine.generateStreaming(list, list2, i, function1);
        }
    }
}
