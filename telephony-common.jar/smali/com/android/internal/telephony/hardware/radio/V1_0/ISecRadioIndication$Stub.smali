.class public abstract Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "ISecRadioIndication.java"

# interfaces
.implements Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication;
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
        -0x68t
        0x22t
        0x3ft
        -0x37t
        -0x4dt
        -0x70t
        -0x7t
        -0xbt
        -0x11t
        0x38t
        0x1dt
        0x1bt
        -0x7ft
        0x46t
        0x18t
        0xdt
        -0x2bt
        -0x3t
        0x63t
        0x38t
        -0x21t
        -0x19t
        -0xdt
        -0x2ft
        -0x46t
        -0x13t
        0x30t
        -0x14t
        -0x5bt
        -0x32t
        -0x1at
        -0x35t
    .end array-data

    :array_1
    .array-data 1
        0x5ct
        -0x72t
        -0x5t
        -0x47t
        -0x3ct
        0x51t
        -0x5bt
        -0x69t
        0x37t
        -0x13t
        0x2ct
        0x6ct
        0x20t
        0x23t
        0xat
        -0x52t
        0x47t
        0x45t
        -0x7dt
        -0x64t
        -0x60t
        0x1dt
        -0x80t
        -0x78t
        -0x2at
        -0x24t
        -0x37t
        0x2t
        0xet
        0x52t
        -0x2et
        -0x3bt
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

    const-string/jumbo v2, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.radio@1.0::IRadioIndication"

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

    const-string/jumbo v0, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

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
    .locals 66
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
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->radioStateChanged(II)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->callStateChanged(I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->networkStateChanged(I)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v37

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v37

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    goto :goto_0

    :sswitch_6
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->newSmsOnSim(II)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v32

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v42

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v35

    move-wide/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v52, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct/range {v52 .. v52}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v58, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->stkSessionEnd(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v60

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->stkCallSetup(IJ)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->simSmsStorageFull(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v48, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct/range {v48 .. v48}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v30

    new-instance v44, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct/range {v44 .. v44}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v30

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->simStatusChanged(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v33, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct/range {v33 .. v33}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->restrictedStateChanged(II)V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v19, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct/range {v19 .. v19}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v46, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct/range {v46 .. v46}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v55

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->indicateRingbackTone(IZ)V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->resendIncallMute(I)V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cdmaPrlChanged(II)V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->rilConnected(I)V

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->voiceRadioTechChanged(II)V

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v47

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->imsNetworkStateChanged(I)V

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->srvccStateNotify(II)V

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v40, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v40 .. v40}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v54, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct/range {v54 .. v54}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v31, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct/range {v31 .. v31}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v36, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct/range {v36 .. v36}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v63, "android.hardware.radio@1.0::IRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v42

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v35

    move-wide/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->secNitzTimeReceived(ILjava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v53, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;

    invoke-direct/range {v53 .. v53}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->secCurrentSignalStrength(ILcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;)V

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->secImsNetworkStateChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemAcbInfoChanged(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemCsFallback(II)V

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemImsPreferenceChangedInd(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemVoiceRadioBearerHoStatusInd(II)V

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemHysteresisDcnInd(I)V

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemHomeNetworkInd(I)V

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemTimerStatusChangedInd(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemModemCapInd(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemAmInd(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemTurnRadioOnInd(I)V

    goto/16 :goto_0

    :sswitch_3b
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemSimPbReadyInd(I)V

    goto/16 :goto_0

    :sswitch_3c
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemPbInitCompleteInd(I)V

    goto/16 :goto_0

    :sswitch_3d
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemDeviceReadyNoti(I)V

    goto/16 :goto_0

    :sswitch_3e
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v50

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemStkSmsSendResultInd(II)V

    goto/16 :goto_0

    :sswitch_3f
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemStkCallControlResultInd(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_40
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemSimSwapStateChangedInd(II)V

    goto/16 :goto_0

    :sswitch_41
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemSimSimCountMismatchedInd(II)V

    goto/16 :goto_0

    :sswitch_42
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemSimIccidNoti(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_43
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    new-instance v51, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSSReleaseComplete;

    invoke-direct/range {v51 .. v51}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSSReleaseComplete;-><init>()V

    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSSReleaseComplete;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemReleaseCompleteMessageInd(ILcom/android/internal/telephony/hardware/radio/V1_0/OemSSReleaseComplete;)V

    goto/16 :goto_0

    :sswitch_44
    const-string/jumbo v63, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->oemSapNoti(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v63, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v12

    const/16 v63, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v63, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v63, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_47
    const-string/jumbo v63, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v11

    const/16 v63, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_48
    const-string/jumbo v63, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v13

    const/16 v63, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v8, Landroid/os/HwBlob;

    const/16 v63, 0x10

    move/from16 v0, v63

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    const-wide/16 v64, 0x8

    move-wide/from16 v0, v64

    invoke-virtual {v8, v0, v1, v15}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v64, 0xc

    const/16 v63, 0x0

    move-wide/from16 v0, v64

    move/from16 v2, v63

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v21, Landroid/os/HwBlob;

    mul-int/lit8 v63, v15, 0x20

    move-object/from16 v0, v21

    move/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_1

    mul-int/lit8 v63, v9, 0x20

    move/from16 v0, v63

    int-to-long v6, v0

    const/4 v10, 0x0

    :goto_2
    const/16 v63, 0x20

    move/from16 v0, v63

    if-ge v10, v0, :cond_0

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, [B

    aget-byte v63, v63, v10

    move-object/from16 v0, v21

    move/from16 v1, v63

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v64, 0x1

    add-long v6, v6, v64

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v64, 0x0

    move-wide/from16 v0, v64

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_49
    const-string/jumbo v63, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_4a
    const-string/jumbo v63, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v14

    const/16 v63, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_4b
    const-string/jumbo v63, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->notifySyspropsChanged()V

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

    const-string/jumbo v0, "vendor.samsung.hardware.radio@1.0::ISecRadioIndication"

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

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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
