.class public final Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->writeToParcel(Landroid/os/HwParcel;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public disableLinkLayerStatsCollection()Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v0, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;-><init>()V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;-><init>()V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static {v2}, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static {v2}, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    const/4 v14, 0x0

    :goto_1
    const/16 v4, 0x20

    if-ge v14, v4, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    return-object v15

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;-><init>()V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v0, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;-><init>()V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;->onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x3

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v6, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-byte v7, p1, v3

    invoke-virtual {v2, v0, v1, v7}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v7, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x16

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p2, v2}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->writeToParcel(Landroid/os/HwParcel;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;S[B[BI)",
            "Landroid/hardware/wifi/V1_0/WifiStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v8, Landroid/os/HwParcel;

    invoke-direct {v8}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v9, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v8, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    invoke-virtual {v8, p3}, Landroid/os/HwParcel;->writeInt16(S)V

    new-instance v4, Landroid/os/HwBlob;

    const/4 v9, 0x6

    invoke-direct {v4, v9}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v9, 0x6

    if-ge v5, v9, :cond_0

    aget-byte v9, p4, v5

    invoke-virtual {v4, v2, v3, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v4, Landroid/os/HwBlob;

    const/4 v9, 0x6

    invoke-direct {v4, v9}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x6

    if-ge v5, v9, :cond_1

    aget-byte v9, p5, v5

    invoke-virtual {v4, v2, v3, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v9, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v10, 0x14

    const/4 v11, 0x0

    invoke-interface {v9, v10, v8, v7, v11}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v7}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v8}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v6, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v6}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v6, v7}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/os/HwParcel;->release()V

    return-object v6

    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Landroid/os/HwParcel;->release()V

    throw v9
.end method

.method public stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi@1.0::IWifiStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "[class or subclass of android.hardware.wifi@1.0::IWifiStaIface]@Proxy"

    return-object v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
