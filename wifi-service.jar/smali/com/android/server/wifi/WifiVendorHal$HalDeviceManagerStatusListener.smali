.class public Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalDeviceManagerStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->-get1(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/HalDeviceManager;->isReady()Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->-get1(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v3, v3, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Device Manager onStatusChanged. isReady(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isStarted(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V

    if-nez v1, :cond_0

    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->-wrap4(Lcom/android/server/wifi/WifiVendorHal;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->-get0(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v4

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;->onDeath()V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
