.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
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
        0x56t
        0x12t
        -0x71t
        0x74t
        0x56t
        0x5t
        0x71t
        -0x4at
        0x77t
        0x7dt
        0x59t
        0x45t
        0x3ft
        0x35t
        -0x3at
        -0x4dt
        0x56t
        -0x6dt
        -0x12t
        0x37t
        0x7et
        0x2at
        0x23t
        -0x38t
        0x7t
        0x70t
        -0x77t
        0x6t
        -0x6et
        -0x71t
        0x9t
        -0x22t
    .end array-data

    :array_1
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

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

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

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

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
    .locals 25
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
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getInterfaceName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v19

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getSsidCallback;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getBssidCallback;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->isCurrent(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isCurrentCallback;)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->isPersistent(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isPersistentCallback;)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->isGo(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isGoCallback;)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v21

    mul-int/lit8 v3, v21, 0x6

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v23

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v11, v0, :cond_1

    const/4 v3, 0x6

    new-array v0, v3, [B

    move-object/from16 v20, v0

    mul-int/lit8 v3, v11, 0x6

    int-to-long v12, v3

    const/4 v14, 0x0

    :goto_2
    const/4 v3, 0x6

    if-ge v14, v3, :cond_0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    aput-byte v3, v20, v14

    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_0
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->setClientList(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v19

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getClientList(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;)V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v16

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v17

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    const-wide/16 v4, 0x8

    move/from16 v0, v21

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v23, Landroid/os/HwBlob;

    mul-int/lit8 v3, v21, 0x20

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v11, v0, :cond_3

    mul-int/lit8 v3, v11, 0x20

    int-to-long v12, v3

    const/4 v14, 0x0

    :goto_4
    const/16 v3, 0x20

    if-ge v14, v3, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aget-byte v3, v3, v14

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v18

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->notifySyspropsChanged()V

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
        0xf43484e -> :sswitch_c
        0xf444247 -> :sswitch_d
        0xf445343 -> :sswitch_e
        0xf485348 -> :sswitch_f
        0xf494e54 -> :sswitch_10
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_11
        0xf535953 -> :sswitch_12
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pNetwork"

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

    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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
