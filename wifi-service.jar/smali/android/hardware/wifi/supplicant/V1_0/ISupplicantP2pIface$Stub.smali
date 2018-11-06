.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
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

    const/4 v1, 0x3

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

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

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
    .locals 62
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
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v34

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v4, 0x8

    new-array v0, v4, [B

    move-object/from16 v57, v0

    const-wide/16 v60, 0x8

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_1
    const/16 v4, 0x8

    move/from16 v0, v18

    if-ge v0, v4, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v57, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v31

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_2
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    new-instance v11, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_3
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v9, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_4
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v32, v0

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_5
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v32, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_6
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v46

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_7
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v45

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_8
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    :cond_7
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_9
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    :cond_8
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$9;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v49

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v58

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v58

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [B

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_a
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v5, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v49

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$10;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v26, v0

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_b
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v26, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v26, v0

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_c
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v26, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    :cond_b
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$11;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v35, v0

    const-wide/16 v60, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v16

    const-wide/16 v12, 0x0

    const/16 v18, 0x0

    :goto_d
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_c

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v35, v18

    const-wide/16 v60, 0x1

    add-long v12, v12, v60

    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$12;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$13;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v21

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v22

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v16, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    const-wide/16 v60, 0x8

    move-object/from16 v0, v16

    move-wide/from16 v1, v60

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v60, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v29, Landroid/os/HwBlob;

    mul-int/lit8 v4, v25, 0x20

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    mul-int/lit8 v4, v17, 0x20

    int-to-long v14, v4

    const/16 v19, 0x0

    :goto_f
    const/16 v4, 0x20

    move/from16 v0, v19

    if-ge v0, v4, :cond_d

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v19

    move-object/from16 v0, v29

    invoke-virtual {v0, v14, v15, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v60, 0x1

    add-long v14, v14, v60

    add-int/lit8 v19, v19, 0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    :cond_e
    const-wide/16 v60, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v60

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_3b
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v23

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_3c
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->notifySyspropsChanged()V

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
        0xf43484e -> :sswitch_36
        0xf444247 -> :sswitch_37
        0xf445343 -> :sswitch_38
        0xf485348 -> :sswitch_39
        0xf494e54 -> :sswitch_3a
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_3b
        0xf535953 -> :sswitch_3c
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

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

    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
