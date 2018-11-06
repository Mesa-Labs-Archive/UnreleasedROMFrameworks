.class public final Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;
.super Ljava/lang/Object;
.source "ISecSupplicantP2pIface.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;
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

    iput-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public addGroupSpecificFreq(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v9, Landroid/os/HwParcel;

    invoke-direct {v9}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v10, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v4, Landroid/os/HwBlob;

    const/4 v10, 0x6

    invoke-direct {v4, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x6

    if-ge v5, v10, :cond_0

    aget-byte v10, p1, v5

    invoke-virtual {v4, v2, v3, v10}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v9, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v8, Landroid/os/HwParcel;

    invoke-direct {v8}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v10, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v11, 0x16

    const/4 v12, 0x0

    invoke-interface {v10, v11, v9, v8, v12}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v8}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v9}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v7, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v7}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v7, v8}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v8}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-interface {v0, v7, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v10

    invoke-virtual {v8}, Landroid/os/HwParcel;->release()V

    throw v10
.end method

.method public createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x31

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x32

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public findChannel(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public findGoOperFreq(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public findSearch(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public findSocial()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
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
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x6

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    const/4 v8, 0x6

    new-array v4, v8, [B

    const-wide/16 v8, 0x6

    invoke-virtual {v6, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v8

    aput-byte v8, v4, v3

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-byte v8, p1, v3

    invoke-virtual {v2, v0, v1, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0x22

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
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

    iget-object v4, v0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-byte v8, p1, v3

    invoke-virtual {v2, v0, v1, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0x21

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
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
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v10, 0x1

    const/4 v8, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v6, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    aget-byte v7, p2, v3

    invoke-virtual {v2, v0, v1, v7}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_1

    aget-byte v7, p3, v3

    invoke-virtual {v2, v0, v1, v7}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
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
    iget-object v2, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public p2pGetAttribute(Ljava/lang/String;[BLvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetAttributeCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-byte v8, p2, v3

    invoke-virtual {v2, v0, v1, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v6}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetAttributeCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public p2pGetPeerInfo(Ljava/lang/String;Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetPeerInfoCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetPeerInfoCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
.end method

.method public p2pListen(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public p2pRemoveClient([BZ)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

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

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x3c

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public p2pSetCmd(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
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
    iget-object v2, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

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

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x18

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :cond_0
    invoke-interface {p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v6, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-byte v7, p2, v3

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
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

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
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x1b

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v8, Landroid/os/HwParcel;

    invoke-direct {v8}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v9, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    const/4 v9, 0x6

    invoke-direct {v2, v9}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v9, 0x6

    if-ge v3, v9, :cond_0

    aget-byte v9, p1, v3

    invoke-virtual {v2, v0, v1, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v8, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v9, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v10, 0x28

    const/4 v11, 0x0

    invoke-interface {v9, v10, v8, v7, v11}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v7}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v8}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v6, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v6}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v6, v7}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-interface {p3, v6, v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Landroid/os/HwParcel;->release()V

    throw v9
.end method

.method public saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

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
    iget-object v2, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual {v2, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual {v2, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

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
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v10, 0x8

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

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
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public startP2pListenOffloading(IIII)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v2, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v6, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-byte v7, p2, v3

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
    iget-object v7, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x2b

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    return-object v4

    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    throw v7
.end method

.method public startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    aget-byte v8, p2, v3

    invoke-virtual {v2, v0, v1, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0x2d

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public stopP2pListenOffloading()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
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

    invoke-virtual {p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    const-string/jumbo v1, "[class or subclass of vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface]@Proxy"

    return-object v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
