.class public abstract Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISecSupplicantStaIface.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;
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
        0x76t
        0x36t
        0x71t
        -0x7ft
        -0x18t
        0x4t
        -0x7ct
        -0x71t
        0x16t
        -0x55t
        -0x68t
        -0x38t
        -0x6at
        -0x2dt
        -0x15t
        -0x19t
        0x1t
        0x6ct
        -0x11t
        0x30t
        0x4et
        0x42t
        -0x5dt
        -0xet
        0x7t
        -0x77t
        0x6ft
        -0x53t
        0x21t
        0x6ct
        0x5dt
        -0x68t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x52t
        -0x1ft
        -0x22t
        -0x6dt
        -0x56t
        -0xbt
        -0x2t
        -0x2dt
        0x70t
        0x11t
        -0x3et
        0x19t
        -0x54t
        0x24t
        0x70t
        0x69t
        -0xat
        -0x51t
        0x32t
        0xbt
        0x8t
        0x10t
        -0x26t
        -0x57t
        -0x7bt
        0x10t
        0x58t
        0x4at
        0x10t
        -0x19t
        -0x4ct
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

    const-string/jumbo v2, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

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
    .locals 48
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
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$1;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$1;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$2;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$2;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$3;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$3;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$4;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$4;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$5;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$5;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x8

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v43, v0

    const-wide/16 v46, 0x8

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_1
    const/16 v45, 0x8

    move/from16 v0, v45

    if-ge v12, v0, :cond_0

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v43, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->reassociate()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->reconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->disconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setPowerSave(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v32, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_2
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_1

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v32, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->initiateTdlsDiscover([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v32, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_3
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_2

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v32, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->initiateTdlsSetup([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v32, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_4
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_3

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v32, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->initiateTdlsTeardown([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v32, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_5
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_4

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v32, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v32, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_6
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_5

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v32, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->initiateHs20IconQuery([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$6;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->getMacAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->startRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->stopRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->addRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->removeRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setBtCoexistenceMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setBtCoexistenceScanModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setSuspendModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v25, v0

    const-wide/16 v46, 0x2

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_7
    const/16 v45, 0x2

    move/from16 v0, v45

    if-ge v12, v0, :cond_6

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v25, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setCountryCode([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_8
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_7

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v20, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->startWpsRegistrar([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_9
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_8

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v20, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->startWpsPbc([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->startWpsPinKeypad(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const-wide/16 v46, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_a
    const/16 v45, 0x6

    move/from16 v0, v45

    if-ge v12, v0, :cond_9

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v45

    aput-byte v45, v20, v12

    const-wide/16 v46, 0x1

    add-long v6, v6, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_9
    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$7;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$7;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->startWpsPinDisplay([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->cancelWps()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setExternalSim(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v41

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$8;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$8;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v29

    move/from16 v3, v41

    move-object/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->addExtRadioWork(Ljava/lang/String;IILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->removeExtRadioWork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v45, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->enableAutoReconnect(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v45, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setExtendedCommand(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v45, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    new-instance v45, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$9;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub$9;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->getExtendedInfomation(Ljava/lang/String;Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$getExtendedInfomationCallback;)V

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v45, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->simAbsent()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v45, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->pmksaClearInScanAlwaysMode()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v45, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->pmksaClearExceptCurrentNetwork()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v45, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v18

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v45, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v15

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v45, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v45, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v14

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v45, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v16

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v10, Landroid/os/HwBlob;

    const/16 v45, 0x10

    move/from16 v0, v45

    invoke-direct {v10, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    const-wide/16 v46, 0x8

    move-wide/from16 v0, v46

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v46, 0xc

    const/16 v45, 0x0

    move-wide/from16 v0, v46

    move/from16 v2, v45

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v23, Landroid/os/HwBlob;

    mul-int/lit8 v45, v19, 0x20

    move-object/from16 v0, v23

    move/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v11, 0x0

    :goto_b
    move/from16 v0, v19

    if-ge v11, v0, :cond_b

    mul-int/lit8 v45, v11, 0x20

    move/from16 v0, v45

    int-to-long v8, v0

    const/4 v13, 0x0

    :goto_c
    const/16 v45, 0x20

    move/from16 v0, v45

    if-ge v13, v0, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, [B

    aget-byte v45, v45, v13

    move-object/from16 v0, v23

    move/from16 v1, v45

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v46, 0x1

    add-long v8, v8, v46

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_b
    const-wide/16 v46, 0x0

    move-wide/from16 v0, v46

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v45, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v45, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v17

    const/16 v45, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v45, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->notifySyspropsChanged()V

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
        0xf43484e -> :sswitch_30
        0xf444247 -> :sswitch_31
        0xf445343 -> :sswitch_32
        0xf485348 -> :sswitch_33
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_35
        0xf535953 -> :sswitch_36
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaIface"

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

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
