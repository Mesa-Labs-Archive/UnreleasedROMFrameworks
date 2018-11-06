.class public abstract Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;
.super Landroid/os/HwBinder;
.source "IWifiRttController.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiRttController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiRttController;
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
        0x76t
        0x6et
        -0x69t
        0x65t
        -0xbt
        -0x37t
        -0x39t
        0x59t
        -0x4et
        -0x59t
        0x63t
        -0x3et
        0x28t
        -0x7dt
        0x53t
        -0x5t
        0x5dt
        -0x11t
        -0xdt
        0x38t
        -0x64t
        0x2ct
        -0x3et
        -0x71t
        -0x7ft
        -0x29t
        -0x64t
        -0x6dt
        -0x69t
        0x4t
        -0x32t
        -0x75t
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

    const-string/jumbo v2, "android.hardware.wifi@1.0::IWifiRttController"

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

    const-string/jumbo v0, "android.hardware.wifi@1.0::IWifiRttController"

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
    .locals 36
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
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v7, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$1;-><init>(Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getBoundIface(Landroid/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v23

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    invoke-static/range {p2 .. p2}, Landroid/hardware/wifi/V1_0/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v35

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->rangeRequest(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v23

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v6

    const-wide/16 v8, 0x8

    invoke-virtual {v6, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v25

    mul-int/lit8 v7, v25, 0x6

    int-to-long v8, v7

    invoke-virtual {v6}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v25

    if-ge v15, v0, :cond_1

    const/4 v7, 0x6

    new-array v0, v7, [B

    move-object/from16 v24, v0

    mul-int/lit8 v7, v15, 0x6

    int-to-long v0, v7

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    :goto_2
    const/4 v7, 0x6

    move/from16 v0, v18

    if-ge v0, v7, :cond_0

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v7

    aput-byte v7, v24, v18

    const-wide/16 v8, 0x1

    add-long v16, v16, v8

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_0
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->rangeCancel(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v23

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v7, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$2;-><init>(Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    new-instance v32, Landroid/hardware/wifi/V1_0/RttLciInformation;

    invoke-direct/range {v32 .. v32}, Landroid/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/RttLciInformation;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->setLci(ILandroid/hardware/wifi/V1_0/RttLciInformation;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v23

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    new-instance v33, Landroid/hardware/wifi/V1_0/RttLcrInformation;

    invoke-direct/range {v33 .. v33}, Landroid/hardware/wifi/V1_0/RttLcrInformation;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/RttLcrInformation;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->setLcr(ILandroid/hardware/wifi/V1_0/RttLcrInformation;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v23

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v7, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;-><init>(Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getResponderInfo(Landroid/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    new-instance v28, Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct/range {v28 .. v28}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v34

    new-instance v31, Landroid/hardware/wifi/V1_0/RttResponder;

    invoke-direct/range {v31 .. v31}, Landroid/hardware/wifi/V1_0/RttResponder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v28

    move/from16 v3, v34

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->enableResponder(ILandroid/hardware/wifi/V1_0/WifiChannelInfo;ILandroid/hardware/wifi/V1_0/RttResponder;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v23

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v7, "android.hardware.wifi@1.0::IWifiRttController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->disableResponder(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v23

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v20

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v19

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v21

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v6, Landroid/os/HwBlob;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v25

    const-wide/16 v8, 0x8

    move/from16 v0, v25

    invoke-virtual {v6, v8, v9, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v8, 0xc

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v29, Landroid/os/HwBlob;

    mul-int/lit8 v7, v25, 0x20

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v25

    if-ge v15, v0, :cond_3

    mul-int/lit8 v7, v15, 0x20

    int-to-long v0, v7

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    :goto_4
    const/16 v7, 0x20

    move/from16 v0, v18

    if-ge v0, v7, :cond_2

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    aget-byte v7, v7, v18

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v7}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v8, 0x1

    add-long v16, v16, v8

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v8, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v6, v8, v9, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v22

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v7, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xf43484e -> :sswitch_b
        0xf444247 -> :sswitch_c
        0xf445343 -> :sswitch_d
        0xf485348 -> :sswitch_e
        0xf494e54 -> :sswitch_f
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_10
        0xf535953 -> :sswitch_11
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi@1.0::IWifiRttController"

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

    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

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
