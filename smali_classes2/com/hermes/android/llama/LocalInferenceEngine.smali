.class public interface abstract Lcom/hermes/android/llama/LocalInferenceEngine;
.super Ljava/lang/Object;
.source "LocalInferenceEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/llama/LocalInferenceEngine$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001JV\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u001c\u0008\u0002\u0010\u0012\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000c\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H&J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cH\u00a6@\u00a2\u0006\u0002\u0010\u0018J\u000e\u0010\u0019\u001a\u00020\u0014H\u00a6@\u00a2\u0006\u0002\u0010\u001aR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/hermes/android/llama/LocalInferenceEngine;",
        "",
        "isModelLoaded",
        "",
        "()Z",
        "backendInfo",
        "",
        "getBackendInfo",
        "()Ljava/lang/String;",
        "generateStreaming",
        "Lkotlinx/coroutines/flow/Flow;",
        "messages",
        "",
        "Lcom/hermes/android/llama/ChatMessage;",
        "tools",
        "Lcom/hermes/android/llama/ToolSpec;",
        "maxTokens",
        "",
        "onEffectiveTools",
        "Lkotlin/Function1;",
        "",
        "parseAssistantOutput",
        "Lcom/hermes/android/llama/ParsedAssistantOutput;",
        "rawText",
        "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unloadModel",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract generateStreaming(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermes/android/llama/ChatMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hermes/android/llama/ToolSpec;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/hermes/android/llama/ToolSpec;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackendInfo()Ljava/lang/String;
.end method

.method public abstract isModelLoaded()Z
.end method

.method public abstract parseAssistantOutput(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hermes/android/llama/ToolSpec;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/llama/ParsedAssistantOutput;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract unloadModel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
