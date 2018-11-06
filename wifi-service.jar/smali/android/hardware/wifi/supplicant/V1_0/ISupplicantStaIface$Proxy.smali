.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
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

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public addExtRadioWork(Ljava/lang/String;IILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v3, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v4, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v5, 0x27

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-interface {p4, v1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v4
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
    iget-object v4, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public addRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x1b

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

    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelWps()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public disconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public enableAutoReconnect(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    iget-object v4, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public getMacAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x6

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0x18

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
    invoke-interface {p1, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
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
    iget-object v4, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v4, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v4, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeInt16Vector(Ljava/util/ArrayList;)V

    invoke-virtual {v6, p3}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x16

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

.method public initiateHs20IconQuery([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x17

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

.method public initiateTdlsDiscover([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x13

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

.method public initiateTdlsSetup([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x14

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

.method public initiateTdlsTeardown([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x15

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v4, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public reassociate()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xf

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

.method public reconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v3
.end method

.method public removeExtRadioWork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x28

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public removeRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x1c

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

.method public setBtCoexistenceMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x1d

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

.method public setBtCoexistenceScanModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public setCountryCode([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x2

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x20

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

.method public setExternalSim(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public setPowerSave(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public setSuspendModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public startRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public startWpsPbc([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x22

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

.method public startWpsPinDisplay([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    iget-object v8, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0x24

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v5, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v5}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    invoke-virtual {v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v6}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public startWpsRegistrar([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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

    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v7, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v8, 0x21

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

.method public stopRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    const-string/jumbo v1, "[class or subclass of android.hardware.wifi.supplicant@1.0::ISupplicantStaIface]@Proxy"

    return-object v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
