.class public abstract Landroid/hardware/radio/V1_0/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadioResponse;
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
        0x69t
        -0xat
        -0x4ct
        -0x48t
        -0x14t
        0x40t
        -0x36t
        0x2t
        -0x34t
        -0x39t
        -0x45t
        -0x7et
        0x27t
        -0x60t
        -0x69t
        0x13t
        0x5ct
        0x20t
        -0x40t
        0xbt
        -0x27t
        0x4ct
        -0x7et
        0x2et
        0x42t
        0x1ct
        -0x27t
        -0x51t
        0x12t
        0x67t
        0x25t
        0x2ct
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

    const-string/jumbo v2, "android.hardware.radio@1.0::IRadioResponse"

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

    const-string/jumbo v0, "android.hardware.radio@1.0::IRadioResponse"

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
    .locals 86
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
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v32, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct/range {v32 .. v32}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v46, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct/range {v46 .. v46}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v74, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct/range {v74 .. v74}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    move-object/from16 v0, v74

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v82, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct/range {v82 .. v82}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    move-object/from16 v0, v82

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v42, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct/range {v42 .. v42}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v73

    move-object/from16 v3, v59

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v43, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct/range {v43 .. v43}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v47, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v47 .. v47}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v56

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v53

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v45

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v72

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v65

    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v69

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v54

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v81

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_3b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_3c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_3e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_3f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_40
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_41
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_42
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_43
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_44
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_45
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_47
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_48
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v55

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_49
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_4a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v45

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    goto/16 :goto_0

    :sswitch_4b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_4c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    :sswitch_4e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_4f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_50
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_51
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_53
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_54
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_55
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_56
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_57
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_58
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-virtual/range {v11 .. v16}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_59
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_5a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_5c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_5d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_5e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v77

    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_5f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_60
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v47, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v47 .. v47}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    :sswitch_62
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v61

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_63
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_64
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_66
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v62

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v75, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v75 .. v75}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v75

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v67, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v67 .. v67}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    :sswitch_69
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v70

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v70

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_6a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v67, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v67 .. v67}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    :sswitch_6c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_6e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_6f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_70
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_71
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_72
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v67, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v67 .. v67}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    goto/16 :goto_0

    :sswitch_74
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_75
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v63, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v63, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v79, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v79 .. v79}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    move-object/from16 v0, v79

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v79, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v79 .. v79}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    move-object/from16 v0, v79

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v51, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct/range {v51 .. v51}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_0

    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v27, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    goto/16 :goto_0

    :sswitch_7c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v58

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_7d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v28

    new-instance v33, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v33 .. v33}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v33

    invoke-virtual {v0, v5, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_0

    :sswitch_7e
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_7f
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_80
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeRequest(I)V

    goto/16 :goto_0

    :sswitch_82
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v23

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_83
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_84
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v22

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_85
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v24

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v17, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v26

    const-wide/16 v84, 0x8

    move-object/from16 v0, v17

    move-wide/from16 v1, v84

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v84, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v84

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v37, Landroid/os/HwBlob;

    mul-int/lit8 v4, v26, 0x20

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    mul-int/lit8 v4, v20, 0x20

    int-to-long v0, v4

    move-wide/from16 v18, v0

    const/16 v21, 0x0

    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v21

    if-ge v0, v4, :cond_0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v21

    move-object/from16 v0, v37

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v84, 0x1

    add-long v18, v18, v84

    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v84, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v84

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_86
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_87
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v25

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_88
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->notifySyspropsChanged()V

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
        0xf43484e -> :sswitch_82
        0xf444247 -> :sswitch_83
        0xf445343 -> :sswitch_84
        0xf485348 -> :sswitch_85
        0xf494e54 -> :sswitch_86
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_87
        0xf535953 -> :sswitch_88
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.radio@1.0::IRadioResponse"

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

    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
