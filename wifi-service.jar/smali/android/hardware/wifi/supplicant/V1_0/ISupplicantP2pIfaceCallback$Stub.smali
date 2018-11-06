.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
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
        -0x75t
        0x63t
        -0xbt
        -0x11t
        -0x5et
        -0x1dt
        -0x42t
        0x3at
        0x7ct
        -0x48t
        -0x5ct
        0x28t
        0x76t
        0xdt
        -0x7et
        0x28t
        0x5at
        0x4at
        -0x49t
        -0x65t
        -0x35t
        -0x22t
        -0x5at
        -0x11t
        -0x70t
        -0x56t
        0x54t
        0x75t
        0x55t
        -0x1bt
        -0x7et
        -0x2ct
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

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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
    .locals 54
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
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onNetworkAdded(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onNetworkRemoved(I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_1
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_0

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x6

    new-array v6, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_2
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_1

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v6, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_2

    :cond_1
    const/16 v4, 0x8

    new-array v7, v4, [B

    const-wide/16 v22, 0x8

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_3
    const/16 v4, 0x8

    move/from16 v0, v40

    if-ge v0, v4, :cond_2

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v7, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    const/4 v4, 0x6

    new-array v12, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_4
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_3

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v12, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v12}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onDeviceFound([B[B[BLjava/lang/String;SBI[B)V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v6, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_5
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_4

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v6, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onDeviceLost([B)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onFindStopped()V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_6
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_5

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v50

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v5, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGoNegotiationRequest([BS)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGoNegotiationCompleted(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupFormationSuccess()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupFormationFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v18, v0

    const-wide/16 v22, 0x20

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_7
    const/16 v4, 0x20

    move/from16 v0, v40

    if-ge v0, v4, :cond_6

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v18, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_7

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v20, v0

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_8
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_7

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v20, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v21

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v21}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onGroupRemoved(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_9
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_8

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_9

    :cond_8
    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v20, v0

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_a
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_9

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v20, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v25, v0

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_b
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_a

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v25, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_b

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v20

    invoke-virtual/range {v22 .. v27}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onInvitationReceived([B[B[BII)V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v25, v0

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_c
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_b

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v25, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_c

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v51

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onInvitationResult([BI)V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v6, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_d
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_c

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v6, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_d

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move/from16 v32, v9

    invoke-virtual/range {v28 .. v33}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_e
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_d

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_e

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v53

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v52

    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v52

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_f
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_e

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x6

    new-array v6, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_10
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_f

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v6, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_10

    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onStaAuthorized([B[B)V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_11
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_10

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x6

    new-array v6, v4, [B

    const-wide/16 v22, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v38

    const-wide/16 v34, 0x0

    const/16 v40, 0x0

    :goto_12
    const/4 v4, 0x6

    move/from16 v0, v40

    if-ge v0, v4, :cond_11

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v6, v40

    const-wide/16 v22, 0x1

    add-long v34, v34, v22

    add-int/lit8 v40, v40, 0x1

    goto :goto_12

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->onStaDeauthorized([B[B)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v43

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v42

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v44

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v38, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v46

    const-wide/16 v22, 0x8

    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v22, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v47, Landroid/os/HwBlob;

    mul-int/lit8 v4, v46, 0x20

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/16 v39, 0x0

    :goto_13
    move/from16 v0, v39

    move/from16 v1, v46

    if-ge v0, v1, :cond_13

    mul-int/lit8 v4, v39, 0x20

    int-to-long v0, v4

    move-wide/from16 v36, v0

    const/16 v41, 0x0

    :goto_14
    const/16 v4, 0x20

    move/from16 v0, v41

    if-ge v0, v4, :cond_12

    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v41

    move-object/from16 v0, v47

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v22, 0x1

    add-long v36, v36, v22

    add-int/lit8 v41, v41, 0x1

    goto :goto_14

    :cond_12
    add-int/lit8 v39, v39, 0x1

    goto :goto_13

    :cond_13
    const-wide/16 v22, 0x0

    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v45

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->notifySyspropsChanged()V

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0xf43484e -> :sswitch_12
        0xf444247 -> :sswitch_13
        0xf445343 -> :sswitch_14
        0xf485348 -> :sswitch_15
        0xf494e54 -> :sswitch_16
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_18
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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

    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
