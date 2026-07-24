.class public final Lcom/hermes/android/webui/DeviceOperationRunnable;
.super Ljava/lang/Object;
.source "DeviceOperationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;

.field private final bridge:Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;
.field private final operation:I
.field private final first:Ljava/lang/String;
.field private final second:Ljava/lang/String;
.field private final third:Ljava/lang/String;

.method public constructor <init>(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->bridge:Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;
    iput p2, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->operation:I
    iput-object p3, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->first:Ljava/lang/String;
    iput-object p4, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->second:Ljava/lang/String;
    iput-object p5, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->third:Ljava/lang/String;
    return-void
.end method

.method public run()V
    .locals 5
    iget-object v0, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->bridge:Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;
    iget v1, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->operation:I
    iget-object v2, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->first:Ljava/lang/String;
    iget-object v3, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->second:Ljava/lang/String;
    iget-object v4, p0, Lcom/hermes/android/webui/DeviceOperationRunnable;->third:Ljava/lang/String;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->runDeviceOperation(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
