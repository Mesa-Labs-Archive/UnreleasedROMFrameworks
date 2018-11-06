.class public abstract Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;
.super Landroid/os/HwBinder;
.source "ISemHostapdApIface.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
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
        -0xct
        -0x4bt
        -0x2ft
        0x4ct
        -0x19t
        0x74t
        -0x6bt
        0x3et
        0x14t
        0x48t
        0x3t
        0x0t
        -0x14t
        0x71t
        0x4at
        0x70t
        0x58t
        -0x67t
        -0x5at
        -0x38t
        -0x29t
        0x39t
        0x38t
        0x3ft
        -0x62t
        -0x39t
        -0x3at
        0xct
        0x68t
        0x5ct
        -0x6ct
        0x5et
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x5at
        -0x4ft
        -0x3ct
        0x71t
        0x16t
        0x77t
        -0x7t
        -0x54t
        -0x3dt
        -0x6ft
        0x31t
        0x7dt
        -0x7ct
        0x10t
        0xbt
        0x33t
        -0x6at
        -0x38t
        -0x13t
        -0x5ct
        -0x4t
        -0x4dt
        -0x46t
        -0x1ct
        0x3dt
        -0x45t
        -0x76t
        0x26t
        0x32t
        -0x25t
        -0x35t
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

    const-string/jumbo v2, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdIface"

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

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

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
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v22, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$1;-><init>(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getName(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$getNameCallback;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v22, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$2;-><init>(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getType(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$getTypeCallback;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->registerCallback(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getAccessPointNumConnectedSta()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->setAccessPointDisassocSta(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->readWhiteList()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->setMaxClient(I)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getAccessPointStaList()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getStationInfo(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->startWpsPbc()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->cancelWps()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->startWpsPinAp(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->startWpsPinApRandom()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->startWpsPinClient(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->validatewpspin(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getAccessPointChannel()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->setTxPower(I)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v22, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    new-instance v22, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub$3;-><init>(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->sendHostapdCommand(Ljava/lang/String;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$sendHostapdCommandCallback;)V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v22, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v22, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v22, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v22, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v6, Landroid/os/HwBlob;

    const/16 v22, 0x10

    move/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-wide/16 v22, 0x8

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1, v14}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v22, 0xc

    const/16 v24, 0x0

    move-wide/from16 v0, v22

    move/from16 v2, v24

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v16, Landroid/os/HwBlob;

    mul-int/lit8 v22, v14, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_1

    mul-int/lit8 v22, v7, 0x20

    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v8, 0x0

    :goto_2
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ge v8, v0, :cond_0

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    aget-byte v22, v22, v8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v22, 0x1

    add-long v4, v4, v22

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v22, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v22, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v22, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->notifySyspropsChanged()V

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
        0xf43484e -> :sswitch_13
        0xf444247 -> :sswitch_14
        0xf445343 -> :sswitch_15
        0xf485348 -> :sswitch_16
        0xf494e54 -> :sswitch_17
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_19
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapdApIface"

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

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
