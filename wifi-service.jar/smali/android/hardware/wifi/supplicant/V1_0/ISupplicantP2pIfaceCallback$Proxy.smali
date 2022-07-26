.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
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

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    iget-object v4, v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public onDeviceFound([B[B[BLjava/lang/String;SBI[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v4, Landroid/os/HwBlob;

    const/4 v8, 0x6

    invoke-direct {v4, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v8, 0x6

    if-ge v5, v8, :cond_0

    aget-byte v8, p1, v5

    invoke-virtual {v4, v2, v3, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v4, Landroid/os/HwBlob;

    const/4 v8, 0x6

    invoke-direct {v4, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v8, 0x6

    if-ge v5, v8, :cond_1

    aget-byte v8, p2, v5

    invoke-virtual {v4, v2, v3, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v4, Landroid/os/HwBlob;

    const/16 v8, 0x8

    invoke-direct {v4, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    const/16 v8, 0x8

    if-ge v5, v8, :cond_2

    aget-byte v8, p3, v5

    invoke-virtual {v4, v2, v3, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v7, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->writeInt16(S)V

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->writeInt8(B)V

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v4, Landroid/os/HwBlob;

    const/4 v8, 0x6

    invoke-direct {v4, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_3
    const/4 v8, 0x6

    if-ge v5, v8, :cond_3

    aget-byte v8, p8, v5

    invoke-virtual {v4, v2, v3, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public onDeviceLost([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
.end method

.method public onFindStopped()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

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

.method public onGoNegotiationCompleted(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

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

.method public onGoNegotiationRequest([BS)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt16(S)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

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

.method public onGroupFormationSuccess()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

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

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

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

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/os/HwParcel;

    invoke-direct {v7}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v7, v8}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual {v7, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    invoke-virtual {v7, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v4, Landroid/os/HwBlob;

    const/16 v8, 0x20

    invoke-direct {v4, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v8, 0x20

    if-ge v5, v8, :cond_0

    aget-byte v8, p5, v5

    invoke-virtual {v4, v2, v3, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v4, Landroid/os/HwBlob;

    const/4 v8, 0x6

    invoke-direct {v4, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v8, 0x6

    if-ge v5, v8, :cond_1

    aget-byte v8, p7, v5

    invoke-virtual {v4, v2, v3, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v8, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v9, 0xa

    const/4 v10, 0x1

    invoke-interface {v8, v9, v7, v6, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v7}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/HwParcel;->release()V

    throw v8
.end method

.method public onInvitationReceived([B[B[BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v8, 0x1

    const/4 v7, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_1

    aget-byte v6, p2, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_2

    aget-byte v6, p3, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v5, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v5, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
.end method

.method public onInvitationResult([BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v7, 0xd

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
.end method

.method public onNetworkAdded(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

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

.method public onNetworkRemoved(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

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

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual {v5, p3}, Landroid/os/HwParcel;->writeInt8(B)V

    invoke-virtual {v5, p4}, Landroid/os/HwParcel;->writeInt16(S)V

    invoke-virtual {v5, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v7, 0xe

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
.end method

.method public onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BS",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v8}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v5, p2}, Landroid/os/HwParcel;->writeInt16(S)V

    invoke-virtual {v5, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v7, 0xf

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
.end method

.method public onStaAuthorized([B[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v8, 0x1

    const/4 v7, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_1

    aget-byte v6, p2, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v7, 0x10

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
.end method

.method public onStaDeauthorized([B[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v8, 0x1

    const/4 v7, 0x6

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    invoke-virtual {v5, v6}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_0

    aget-byte v6, p1, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v7}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_1

    aget-byte v6, p2, v3

    invoke-virtual {v2, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object v6, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v7, 0x11

    const/4 v8, 0x1

    invoke-interface {v6, v7, v5, v4, v8}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v6
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
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    const-string/jumbo v1, "[class or subclass of android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback]@Proxy"

    return-object v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
