.class public abstract Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "ISecSupplicantP2pIface.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;
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

    const/4 v1, 0x4

    new-array v1, v1, [[B

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x33t
        -0x51t
        -0x3bt
        0x30t
        0x49t
        -0x39t
        0x56t
        -0x54t
        0x4ft
        -0x2ct
        0xet
        0x1et
        -0x14t
        -0x44t
        0x40t
        0x17t
        0x60t
        0x4at
        0x6ct
        0x45t
        0x6at
        -0x3at
        0x7at
        0x76t
        0x61t
        0x2bt
        0x66t
        -0x6t
        -0xct
        -0x6bt
        -0x5t
        0x2bt
    .end array-data

    :array_1
    .array-data 1
        0x49t
        0x7t
        0x41t
        0x3t
        0x38t
        -0x3bt
        -0x18t
        -0x25t
        -0x12t
        -0x3ct
        -0x4bt
        -0x13t
        -0x3et
        0x60t
        -0x72t
        -0x5dt
        0x23t
        -0xbt
        0x56t
        0x19t
        0x45t
        -0x8t
        -0x7ft
        0xat
        -0x8t
        0x18t
        0x10t
        -0x3ct
        0x7bt
        0x1t
        -0x6ft
        -0x7ct
    .end array-data

    :array_2
    .array-data 1
        0x35t
        -0x46t
        0x7bt
        -0x33t
        -0xft
        -0x71t
        0x24t
        -0x58t
        0x66t
        -0x59t
        -0x1bt
        0x42t
        -0x6bt
        0x48t
        -0x10t
        0x67t
        0x68t
        -0x45t
        0x20t
        -0x5et
        0x57t
        -0x9t
        0x5bt
        0x10t
        -0x5dt
        -0x69t
        -0x3ct
        -0x28t
        0x25t
        -0x11t
        -0x7ct
        0x38t
    .end array-data

    :array_3
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

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

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
    .locals 76
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
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$1;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$2;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$3;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v42

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$4;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$5;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v6, 0x8

    new-array v0, v6, [B

    move-object/from16 v71, v0

    const-wide/16 v74, 0x8

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_1
    const/16 v6, 0x8

    move/from16 v0, v20

    if-ge v0, v6, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v71, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$6;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v62

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_2
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    new-instance v13, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$7;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v13}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_3
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v11, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_4
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    const/4 v6, 0x6

    new-array v0, v6, [B

    move-object/from16 v40, v0

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_5
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v40, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_4
    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_6
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v7}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_7
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v1, v7}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v64

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_8
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_7

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    :cond_7
    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$8;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_9
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_8

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    :cond_8
    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$9;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v63

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v66

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v63

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v73

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    move/from16 v1, v73

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v73

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    move/from16 v1, v73

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_a
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v63

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$10;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v7, v1, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v44

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    const/4 v6, 0x6

    new-array v0, v6, [B

    move-object/from16 v28, v0

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_b
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_a

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v28, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    const/4 v6, 0x6

    new-array v0, v6, [B

    move-object/from16 v28, v0

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_c
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_b

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v28, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    :cond_b
    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$11;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v0, v6, [B

    move-object/from16 v47, v0

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_d
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_c

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v47, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$12;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$13;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v6, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v6

    invoke-static {v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->findSocial()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->findChannel(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->findGoOperFreq(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->findSearch(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3b
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v11, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->addGroupSpecificFreq(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3c
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_e
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_d

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->p2pRemoveClient([BZ)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3d
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->p2pListen(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3e
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->p2pSetCmd(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3f
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    const/4 v6, 0x6

    new-array v7, v6, [B

    const-wide/16 v74, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v18

    const-wide/16 v14, 0x0

    const/16 v20, 0x0

    :goto_f
    const/4 v6, 0x6

    move/from16 v0, v20

    if-ge v0, v6, :cond_e

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    aput-byte v6, v7, v20

    const-wide/16 v74, 0x1

    add-long v14, v14, v74

    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    :cond_e
    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$14;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v7, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->p2pGetAttribute(Ljava/lang/String;[BLvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetAttributeCallback;)V

    goto/16 :goto_0

    :sswitch_40
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v57

    new-instance v6, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub$15;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->p2pGetPeerInfo(Ljava/lang/String;Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetPeerInfoCallback;)V

    goto/16 :goto_0

    :sswitch_41
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v58

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v48

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v58

    move/from16 v3, v48

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->startP2pListenOffloading(IIII)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_42
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->stopP2pListenOffloading()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_43
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v55

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v38

    move/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setP2pNoa(Ljava/lang/String;ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_44
    const-string/jumbo v6, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v46

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v38

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setP2pIncBw(Ljava/lang/String;ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v26

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v23

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_47
    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v22

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_48
    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v24

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v18, Landroid/os/HwBlob;

    const/16 v6, 0x10

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v27

    const-wide/16 v74, 0x8

    move-object/from16 v0, v18

    move-wide/from16 v1, v74

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v74, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v74

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v33, Landroid/os/HwBlob;

    mul-int/lit8 v6, v27, 0x20

    move-object/from16 v0, v33

    invoke-direct {v0, v6}, Landroid/os/HwBlob;-><init>(I)V

    const/16 v19, 0x0

    :goto_10
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    mul-int/lit8 v6, v19, 0x20

    int-to-long v0, v6

    move-wide/from16 v16, v0

    const/16 v21, 0x0

    :goto_11
    const/16 v6, 0x20

    move/from16 v0, v21

    if-ge v0, v6, :cond_f

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aget-byte v6, v6, v21

    move-object/from16 v0, v33

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v74, 0x1

    add-long v16, v16, v74

    add-int/lit8 v21, v21, 0x1

    goto :goto_11

    :cond_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    :cond_10
    const-wide/16 v74, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v74

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_49
    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_4a
    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v25

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4b
    const-string/jumbo v6, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->notifySyspropsChanged()V

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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0xf43484e -> :sswitch_45
        0xf444247 -> :sswitch_46
        0xf445343 -> :sswitch_47
        0xf485348 -> :sswitch_48
        0xf494e54 -> :sswitch_49
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_4a
        0xf535953 -> :sswitch_4b
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantP2pIface"

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

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
