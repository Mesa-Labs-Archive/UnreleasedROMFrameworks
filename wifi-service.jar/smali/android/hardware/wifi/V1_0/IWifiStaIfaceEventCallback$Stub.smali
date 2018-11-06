.class public abstract Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIfaceEventCallback.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/16 v4, 0x20

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7ft
        -0x41t
        -0x3bt
        0x51t
        -0x3dt
        -0x1et
        0x3ct
        -0x75t
        0x43t
        -0x68t
        -0x3dt
        -0x1ft
        0x6et
        0x45t
        0x2bt
        0x51t
        0x64t
        0x57t
        -0x1at
        -0x6et
        0x14t
        0x24t
        -0x5bt
        0x34t
        0x74t
        -0x35t
        -0xdt
        0x73t
        -0x36t
        0x30t
        0x6ft
        -0x57t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string/jumbo v24, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->onBackgroundScanFailure(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v24, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    new-instance v22, Landroid/hardware/wifi/V1_0/StaScanResult;

    invoke-direct/range {v22 .. v22}, Landroid/hardware/wifi/V1_0/StaScanResult;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/StaScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->onBackgroundFullScanResult(IILandroid/hardware/wifi/V1_0/StaScanResult;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v24, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    invoke-static/range {p2 .. p2}, Landroid/hardware/wifi/V1_0/StaScanData;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->onBackgroundScanResults(ILjava/util/ArrayList;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v24, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const-wide/16 v24, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v24, 0x6

    move/from16 v0, v24

    if-ge v10, v0, :cond_0

    invoke-virtual {v8, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v24

    aput-byte v24, v20, v10

    const-wide/16 v24, 0x1

    add-long v4, v4, v24

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->onRssiThresholdBreached(I[BI)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v13

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v12

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v14

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v8, Landroid/os/HwBlob;

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    const-wide/16 v24, 0x8

    move-wide/from16 v0, v24

    move/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v24, 0xc

    const/16 v26, 0x0

    move-wide/from16 v0, v24

    move/from16 v2, v26

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v18, Landroid/os/HwBlob;

    mul-int/lit8 v24, v16, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v9, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    mul-int/lit8 v24, v9, 0x20

    move/from16 v0, v24

    int-to-long v6, v0

    const/4 v11, 0x0

    :goto_3
    const/16 v24, 0x20

    move/from16 v0, v24

    if-ge v11, v0, :cond_1

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    aget-byte v24, v24, v11

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v24, 0x1

    add-long v6, v6, v24

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v15

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v24, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xf43484e -> :sswitch_5
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_8
        0xf494e54 -> :sswitch_9
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_a
        0xf535953 -> :sswitch_b
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi@1.0::IWifiStaIfaceEventCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
