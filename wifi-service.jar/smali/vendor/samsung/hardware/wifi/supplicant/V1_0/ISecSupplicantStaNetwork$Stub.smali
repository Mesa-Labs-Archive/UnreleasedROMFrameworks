.class public abstract Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISecSupplicantStaNetwork.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;
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
        0x1t
        -0x75t
        0x48t
        -0x41t
        -0x64t
        0x6dt
        -0x47t
        -0x3ft
        -0x22t
        -0x39t
        -0x46t
        -0x15t
        -0x67t
        -0x3ct
        0x58t
        0x3ft
        0x69t
        -0x29t
        0x4et
        0x6et
        0x5bt
        -0x27t
        0x66t
        -0x51t
        -0x62t
        -0x47t
        -0x11t
        -0x8t
        -0x3ct
        0x5dt
        -0x6at
        0x2at
    .end array-data

    :array_1
    .array-data 1
        -0x4ft
        0x2et
        -0x10t
        -0x43t
        -0x28t
        -0x5ct
        -0x2et
        0x47t
        -0x58t
        -0x5at
        -0x17t
        0x60t
        -0x4et
        0x27t
        -0x13t
        0x32t
        0x38t
        0x3ft
        0x2bt
        0x2t
        0x41t
        -0xbt
        0x5dt
        0x67t
        -0x4t
        -0x16t
        0x6et
        -0x1t
        0x6at
        0x67t
        0x37t
        -0x6t
    .end array-data

    :array_2
    .array-data 1
        -0x33t
        -0x60t
        0x10t
        0x8t
        -0x40t
        0x69t
        0x22t
        -0x6t
        0x37t
        -0x3ft
        0x21t
        0x3et
        -0x65t
        -0x48t
        0x31t
        -0x5ft
        0x9t
        -0x4dt
        0x17t
        0x45t
        0x32t
        -0x80t
        0x56t
        0x16t
        -0x5t
        0x71t
        0x61t
        -0x13t
        -0x3ct
        0x3t
        -0x7at
        0x6ft
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

    const-string/jumbo v2, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

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

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

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
    .locals 51
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
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$1;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$1;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$2;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$2;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getInterfaceName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$3;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$3;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setSsid(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v48, 0x6

    move/from16 v0, v48

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const-wide/16 v48, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v48, 0x6

    move/from16 v0, v48

    if-ge v10, v0, :cond_0

    invoke-virtual {v8, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v48

    aput-byte v48, v20, v10

    const-wide/16 v48, 0x1

    add-long v4, v4, v48

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setBssid([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setScanSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setPskPassphrase(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v48, 0x20

    move/from16 v0, v48

    new-array v0, v0, [B

    move-object/from16 v42, v0

    const-wide/16 v48, 0x20

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v48, 0x20

    move/from16 v0, v48

    if-ge v10, v0, :cond_1

    invoke-virtual {v8, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v48

    aput-byte v48, v42, v10

    const-wide/16 v48, 0x1

    add-long v4, v4, v48

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setPsk([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v47

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setWepKey(ILjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setWepTxKeyIdx(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setRequirePmf(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapMethod(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapPhase2Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapPassword(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapCACert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapCAPath(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapClientCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapPrivateKeyId(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapAltSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapEngine(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapEngineID(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapDomainSuffixMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setProactiveKeyCaching(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setIdStr(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setUpdateIdentifier(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$4;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$4;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$5;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$5;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$6;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$6;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getScanSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$7;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$7;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getKeyMgmt(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$8;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$8;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getProto(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$9;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$9;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getAuthAlg(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$10;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$10;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getGroupCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$11;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$11;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getPairwiseCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$12;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$12;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getPskPassphrase(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$13;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$13;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getPsk(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$14;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$14;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getWepKey(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$15;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$15;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getWepTxKeyIdx(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$16;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$16;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getRequirePmf(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$17;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$17;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapMethod(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$18;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$18;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapPhase2Method(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$19;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$19;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$20;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$20;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapAnonymousIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$21;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$21;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapPassword(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$22;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$22;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapCACert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$23;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$23;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapCAPath(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$24;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$24;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapClientCert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$25;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$25;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapPrivateKeyId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$26;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$26;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$27;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapAltSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    goto/16 :goto_0

    :sswitch_3b
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$28;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$28;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapEngine(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    goto/16 :goto_0

    :sswitch_3c
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$29;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$29;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapEngineID(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    goto/16 :goto_0

    :sswitch_3d
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$30;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$30;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapDomainSuffixMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    goto/16 :goto_0

    :sswitch_3e
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$31;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$31;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getIdStr(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    goto/16 :goto_0

    :sswitch_3f
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$32;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$32;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getWpsNfcConfigurationToken(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V

    goto/16 :goto_0

    :sswitch_40
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->enable(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_41
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->disable()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_42
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->select()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_43
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_44
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->sendNetworkEapSimGsmAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v36, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct/range {v36 .. v36}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v48, 0xe

    move/from16 v0, v48

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v48, 0xe

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    :goto_3
    const/16 v48, 0xe

    move/from16 v0, v48

    if-ge v10, v0, :cond_2

    invoke-virtual {v8, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v48

    aput-byte v48, v19, v10

    const-wide/16 v48, 0x1

    add-long v4, v4, v48

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAutsResponse([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_47
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_48
    const-string/jumbo v48, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_49
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setVendorSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4a
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapMethodSec(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4b
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapPhase1Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4c
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setEapPacFile(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4d
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setWapiPskType(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4e
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setWapiCertIndex(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4f
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setWapiAsCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_50
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setWapiUserCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_51
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$33;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$33;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getVendorSsid(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getVendorSsidCallback;)V

    goto/16 :goto_0

    :sswitch_52
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$34;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$34;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getAutoReconnect(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAutoReconnectCallback;)V

    goto/16 :goto_0

    :sswitch_53
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$35;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$35;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getSamsungSpecificFlags(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSamsungSpecificFlagsCallback;)V

    goto/16 :goto_0

    :sswitch_54
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v43

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setSimNumber(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_55
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$36;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$36;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getSimNumber(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSimNumberCallback;)V

    goto/16 :goto_0

    :sswitch_56
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$37;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$37;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapMethodSec(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapMethodSecCallback;)V

    goto/16 :goto_0

    :sswitch_57
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$38;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$38;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapPhase1Method(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPhase1MethodCallback;)V

    goto/16 :goto_0

    :sswitch_58
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$39;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$39;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getEapPacFile(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPacFileCallback;)V

    goto/16 :goto_0

    :sswitch_59
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$40;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$40;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getWapiPskType(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiPskTypeCallback;)V

    goto/16 :goto_0

    :sswitch_5a
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$41;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$41;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getWapiCertIndex(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiCertIndexCallback;)V

    goto/16 :goto_0

    :sswitch_5b
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$42;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$42;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getWapiAsCert(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiAsCertCallback;)V

    goto/16 :goto_0

    :sswitch_5c
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$43;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$43;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getWapiUserCert(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiUserCertCallback;)V

    goto/16 :goto_0

    :sswitch_5d
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setCaptivePortal(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_5e
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setAuthenticated(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_5f
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setLoginUrl(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_60
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setUsableInternet(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_61
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setSkipInternetCheck(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v16

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_62
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$44;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$44;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getCaptivePortal(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getCaptivePortalCallback;)V

    goto/16 :goto_0

    :sswitch_63
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$45;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$45;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getAuthenticated(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAuthenticatedCallback;)V

    goto/16 :goto_0

    :sswitch_64
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$46;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$46;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getLoginUrl(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getLoginUrlCallback;)V

    goto/16 :goto_0

    :sswitch_65
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$47;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$47;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getUsableInternet(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getUsableInternetCallback;)V

    goto/16 :goto_0

    :sswitch_66
    const-string/jumbo v48, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v48, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$48;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub$48;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getSkipInternetCheck(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSkipInternetCheckCallback;)V

    goto/16 :goto_0

    :sswitch_67
    const-string/jumbo v48, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v13

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_68
    const-string/jumbo v48, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_69
    const-string/jumbo v48, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v12

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_6a
    const-string/jumbo v48, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v14

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v8, Landroid/os/HwBlob;

    const/16 v48, 0x10

    move/from16 v0, v48

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const-wide/16 v48, 0x8

    move-wide/from16 v0, v48

    move/from16 v2, v17

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v48, 0xc

    const/16 v50, 0x0

    move-wide/from16 v0, v48

    move/from16 v2, v50

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v22, Landroid/os/HwBlob;

    mul-int/lit8 v48, v17, 0x20

    move-object/from16 v0, v22

    move/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v9, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    mul-int/lit8 v48, v9, 0x20

    move/from16 v0, v48

    int-to-long v6, v0

    const/4 v11, 0x0

    :goto_5
    const/16 v48, 0x20

    move/from16 v0, v48

    if-ge v11, v0, :cond_3

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, [B

    aget-byte v48, v48, v11

    move-object/from16 v0, v22

    move/from16 v1, v48

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v48, 0x1

    add-long v6, v6, v48

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v48, 0x0

    move-wide/from16 v0, v48

    move-object/from16 v2, v22

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_6b
    const-string/jumbo v48, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_6c
    const-string/jumbo v48, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v15

    const/16 v48, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_6d
    const-string/jumbo v48, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->notifySyspropsChanged()V

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
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0xf43484e -> :sswitch_67
        0xf444247 -> :sswitch_68
        0xf445343 -> :sswitch_69
        0xf485348 -> :sswitch_6a
        0xf494e54 -> :sswitch_6b
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_6c
        0xf535953 -> :sswitch_6d
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.supplicant@1.0::ISecSupplicantStaNetwork"

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

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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
