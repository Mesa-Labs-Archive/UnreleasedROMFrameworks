.class Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;
.super Landroid/hardware/wifi/V1_0/IWifiChipEventCallback$Stub;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiChipEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    return-void
.end method


# virtual methods
.method public onChipReconfigureFailure(Landroid/hardware/wifi/V1_0/WifiStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChipReconfigureFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChipReconfigured(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChipReconfigured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDebugErrorAlert(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDebugErrorAlert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->-get2(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->-get2(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v2

    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onWifiAlert(I[B)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onDebugRingBufferDataAvailable(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->-get2(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->-get2(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v2

    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->-wrap3(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onIfaceAdded(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIfaceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onIfaceRemoved(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIfaceRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    return-void
.end method
