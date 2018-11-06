.class Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;
.super Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaIfaceEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    return-void
.end method


# virtual methods
.method public onBackgroundFullScanResult(IILandroid/hardware/wifi/V1_0/StaScanResult;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackgroundFullScanResult "

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
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v0, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    invoke-static {p3}, Lcom/android/server/wifi/WifiVendorHal;->-wrap1(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onBackgroundScanFailure(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackgroundScanFailure "

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
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v0, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onBackgroundScanResults(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/StaScanData;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackgroundScanResults "

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
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v0, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    invoke-static {p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->-wrap2(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onRssiThresholdBreached(I[BI)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRssiThresholdBreached "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "currRssi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->-get5(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d7f

    if-eq p1, v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->-get5(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v2

    int-to-byte v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;->onRssiThresholdBreached(B)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
