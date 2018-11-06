.class public abstract Landroid/hardware/radio/V1_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadio;
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
        -0x65t
        0x5at
        -0x5ct
        -0x67t
        -0x14t
        0x3bt
        0x42t
        0x26t
        -0xft
        0x5ft
        0x48t
        -0xbt
        -0x13t
        0x8t
        -0x77t
        0x6et
        0x2ft
        -0x40t
        0x67t
        0x6ft
        -0x69t
        -0x74t
        -0x62t
        0x19t
        -0x64t
        0x1dt
        -0x5et
        0x1dt
        -0x56t
        -0x10t
        0x2t
        -0x5at
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

    const-string/jumbo v2, "android.hardware.radio@1.0::IRadio"

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

    const-string/jumbo v0, "android.hardware.radio@1.0::IRadio"

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
    .locals 111
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
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v93

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v85

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v90

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v85

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v85

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v86

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v91

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v86

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v86

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v74

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v74

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v75

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v58, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangup(II)V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->conference(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v82

    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v100

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v68, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v68 .. v68}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v68, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct/range {v68 .. v68}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v63, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v110

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClir(I)V

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v106

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setClir(II)V

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v43, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v43 .. v43}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v43, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct/range {v43 .. v43}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1, v15}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v107

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v107

    move/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v97

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v97

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, p0

    move v12, v5

    invoke-virtual/range {v11 .. v16}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, p0

    move/from16 v18, v5

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v23, v16

    invoke-virtual/range {v17 .. v23}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v73

    invoke-virtual {v0, v5, v13, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v83

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v100

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getMute(I)V

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClip(I)V

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v103, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct/range {v103 .. v103}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    move-object/from16 v0, v103

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_0

    :sswitch_3b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_0

    :sswitch_3c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_0

    :sswitch_3d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_0

    :sswitch_40
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_0

    :sswitch_41
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v76

    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_0

    :sswitch_42
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_0

    :sswitch_43
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_0

    :sswitch_44
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v47

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v108

    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_0

    :sswitch_47
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_0

    :sswitch_48
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_0

    :sswitch_49
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_0

    :sswitch_4a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_0

    :sswitch_4b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_0

    :sswitch_4c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v81

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v77

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v81

    move/from16 v3, v77

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_4e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v101, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct/range {v101 .. v101}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_0

    :sswitch_4f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v102, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct/range {v102 .. v102}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    move-object/from16 v0, v102

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_0

    :sswitch_50
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_0

    :sswitch_51
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_0

    :sswitch_53
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_0

    :sswitch_54
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v54

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_55
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_0

    :sswitch_56
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_0

    :sswitch_57
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v46, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct/range {v46 .. v46}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_0

    :sswitch_58
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_0

    :sswitch_59
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_0

    :sswitch_5a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_0

    :sswitch_5b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_0

    :sswitch_5c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v104

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v42

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_0

    :sswitch_5e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_0

    :sswitch_5f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_0

    :sswitch_60
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v107

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move/from16 v1, v107

    move-object/from16 v2, v35

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_62
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_63
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_0

    :sswitch_64
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_0

    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v95

    move-object/from16 v0, p0

    move/from16 v1, v95

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_0

    :sswitch_66
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v7, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v7}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v8, v10}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_0

    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_0

    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v69, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct/range {v69 .. v69}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    move-object/from16 v0, v69

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_0

    :sswitch_69
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v70, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v70 .. v70}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    move-object/from16 v0, v70

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    :sswitch_6a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v84

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v84

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_0

    :sswitch_6c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v70, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct/range {v70 .. v70}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    move-object/from16 v0, v70

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_0

    :sswitch_6d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_0

    :sswitch_6e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v66, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct/range {v66 .. v66}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_0

    :sswitch_6f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v88

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_70
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v99

    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_0

    :sswitch_71
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v109, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct/range {v109 .. v109}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    move-object/from16 v0, v109

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_0

    :sswitch_72
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_0

    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_0

    :sswitch_74
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_75
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v89

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    invoke-virtual {v0, v5, v1, v10}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_0

    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_0

    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_0

    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-instance v96, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v96 .. v96}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    move-object/from16 v0, v96

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v98

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v92

    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v92

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_0

    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_0

    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_0

    :sswitch_7c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_0

    :sswitch_7d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v38

    new-instance v44, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v44 .. v44}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v44

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_0

    :sswitch_7e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_0

    :sswitch_7f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v57

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v105

    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v105

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_0

    :sswitch_80
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v65

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_0

    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_0

    :sswitch_82
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_0

    :sswitch_83
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v30

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_84
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_85
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v29

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_86
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v31

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v26, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v33

    const-wide/16 v18, 0x8

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v18, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v50, Landroid/os/HwBlob;

    mul-int/lit8 v4, v33, 0x20

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/16 v27, 0x0

    :goto_1
    move/from16 v0, v27

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    mul-int/lit8 v4, v27, 0x20

    int-to-long v0, v4

    move-wide/from16 v24, v0

    const/16 v28, 0x0

    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v28

    if-ge v0, v4, :cond_0

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v28

    move-object/from16 v0, v50

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v18, 0x1

    add-long v24, v24, v18

    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v18, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_87
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_88
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v32

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_89
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->notifySyspropsChanged()V

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
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0xf43484e -> :sswitch_83
        0xf444247 -> :sswitch_84
        0xf445343 -> :sswitch_85
        0xf485348 -> :sswitch_86
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_88
        0xf535953 -> :sswitch_89
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.radio@1.0::IRadio"

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

    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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
