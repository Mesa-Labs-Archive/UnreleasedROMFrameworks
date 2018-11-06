.class public abstract Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
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
        0x32t
        0x5ct
        -0x6ct
        -0xdt
        -0x1ft
        -0x5bt
        0x65t
        -0x4bt
        0x6bt
        -0x44t
        0x74t
        -0x6t
        -0x23t
        -0x43t
        0xbt
        -0x59t
        -0x35t
        -0x7et
        0x4ft
        0x26t
        0x3dt
        -0x34t
        -0x7t
        -0x21t
        -0x1t
        0x2dt
        -0x51t
        0x62t
        -0x48t
        0x6et
        -0x29t
        0x74t
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

    const-string/jumbo v2, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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

    const-string/jumbo v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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
    .locals 30
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
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v14, Landroid/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {v14}, Landroid/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v14}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyCapabilitiesResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;Landroid/hardware/wifi/V1_0/NanCapabilities;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyEnableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyConfigResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyDisableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStartPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStopPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStartSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyStopSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyTransmitFollowupResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyCreateDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyDeleteDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyInitiateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;I)V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyRespondToDataPathIndicationResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifyTerminateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v17, Landroid/hardware/wifi/V1_0/NanClusterEventInd;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventClusterEvent(Landroid/hardware/wifi/V1_0/NanClusterEventInd;)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDisabled(Landroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v25

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventPublishTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v25

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventSubscribeTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v21, Landroid/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct/range {v21 .. v21}, Landroid/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventMatch(Landroid/hardware/wifi/V1_0/NanMatchInd;)V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventMatchExpired(BI)V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v20, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct/range {v20 .. v20}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventFollowupReceived(Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v22

    new-instance v26, Landroid/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventTransmitFollowup(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v19, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct/range {v19 .. v19}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDataPathRequest(Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v18, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDataPathConfirm(Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v27, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->eventDataPathTerminated(I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v27, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v27, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v27, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v27, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v6, Landroid/os/HwBlob;

    const/16 v27, 0x10

    move/from16 v0, v27

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-wide/16 v28, 0x8

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v28, 0xc

    const/16 v27, 0x0

    move-wide/from16 v0, v28

    move/from16 v2, v27

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v15, Landroid/os/HwBlob;

    mul-int/lit8 v27, v13, 0x20

    move/from16 v0, v27

    invoke-direct {v15, v0}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_1

    mul-int/lit8 v27, v7, 0x20

    move/from16 v0, v27

    int-to-long v4, v0

    const/4 v8, 0x0

    :goto_2
    const/16 v27, 0x20

    move/from16 v0, v27

    if-ge v8, v0, :cond_0

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    aget-byte v27, v27, v8

    move/from16 v0, v27

    invoke-virtual {v15, v4, v5, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v28, 0x1

    add-long v4, v4, v28

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1, v15}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v27, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v27, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v27, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_0

    nop

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0xf43484e -> :sswitch_1a
        0xf444247 -> :sswitch_1b
        0xf445343 -> :sswitch_1c
        0xf485348 -> :sswitch_1d
        0xf494e54 -> :sswitch_1e
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_1f
        0xf535953 -> :sswitch_20
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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

    invoke-virtual {p0, p1}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
