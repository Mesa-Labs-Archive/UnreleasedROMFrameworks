.class public abstract Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "ISecRadioResponse.java"

# interfaces
.implements Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse;
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
        0x7ft
        -0x4bt
        -0x58t
        -0x1at
        0x20t
        0x2at
        -0x2et
        -0x4at
        -0x4at
        0x34t
        0x7bt
        0x38t
        -0x10t
        0x5at
        -0x3ct
        0x4et
        0x14t
        0x30t
        -0x1at
        -0x5et
        0x53t
        -0x54t
        0x3dt
        -0x3t
        0x56t
        0x4dt
        -0x74t
        -0x5et
        0x3ct
        -0x1ct
        -0x49t
        -0x43t
    .end array-data

    :array_1
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

    const-string/jumbo v2, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.radio@1.0::IRadioResponse"

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

    const-string/jumbo v0, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

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
    .locals 114
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

    new-instance v45, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct/range {v45 .. v45}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

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

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v63, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v97, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct/range {v97 .. v97}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    move-object/from16 v0, v97

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v109, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct/range {v109 .. v109}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    move-object/from16 v0, v109

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v58, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct/range {v58 .. v58}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

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

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v100, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v100 .. v100}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v100

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v100, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v100 .. v100}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v100

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v60, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct/range {v60 .. v60}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v64, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v64 .. v64}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v74

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, v71

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v62

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v96

    move-object/from16 v0, p0

    move/from16 v1, v62

    move/from16 v2, v96

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v89

    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v93

    move-object/from16 v0, p0

    move/from16 v1, v93

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v75

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v108

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

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

    move-result v104

    move-object/from16 v0, p0

    move/from16 v1, v104

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v66

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v79

    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v106

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_4d
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v100, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v100 .. v100}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v100

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    move-result v66

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v102

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v103

    move-object/from16 v0, p0

    move/from16 v1, v103

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result-object v90

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_61
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v64, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v64 .. v64}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

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

    move-result v83

    move-object/from16 v0, p0

    move/from16 v1, v83

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result v69

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v84

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v84

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    :sswitch_67
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v100, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct/range {v100 .. v100}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    move-object/from16 v0, v100

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_0

    :sswitch_68
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v91, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v91 .. v91}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v91

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

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

    move-result v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v94

    move-object/from16 v0, p0

    move/from16 v1, v50

    move-object/from16 v2, v94

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_6b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v91, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v91 .. v91}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v91

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

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

    move-result-object v92

    move-object/from16 v0, p0

    move-object/from16 v1, v92

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_73
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v91, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct/range {v91 .. v91}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    move-object/from16 v0, v91

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_76
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v85, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v85 .. v85}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    move-object/from16 v0, v85

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    :sswitch_77
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v85, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct/range {v85 .. v85}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    move-object/from16 v0, v85

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_0

    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v105, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v105 .. v105}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    move-object/from16 v0, v105

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    :sswitch_79
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v105, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct/range {v105 .. v105}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    move-object/from16 v0, v105

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    goto/16 :goto_0

    :sswitch_7a
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v70, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct/range {v70 .. v70}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    move-object/from16 v0, v70

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    goto/16 :goto_0

    :sswitch_7b
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v37, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct/range {v37 .. v37}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

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

    move-result v77

    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

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

    move-result v38

    new-instance v47, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct/range {v47 .. v47}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

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

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_81
    const-string/jumbo v4, "android.hardware.radio@1.0::IRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v95

    move-object/from16 v0, p0

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->acknowledgeRequest(I)V

    goto/16 :goto_0

    :sswitch_82
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v46, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;

    invoke-direct/range {v46 .. v46}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecCardStatus;)V

    goto/16 :goto_0

    :sswitch_83
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v87

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSupplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_84
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secAcceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_85
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_86
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_87
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v98, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;

    invoke-direct/range {v98 .. v98}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;-><init>()V

    move-object/from16 v0, v98

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;)V

    goto/16 :goto_0

    :sswitch_88
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v110, Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;

    invoke-direct/range {v110 .. v110}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;-><init>()V

    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecVoiceRegStateResult;)V

    goto/16 :goto_0

    :sswitch_89
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v59, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDataRegStateResult;

    invoke-direct/range {v59 .. v59}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDataRegStateResult;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecDataRegStateResult;)V

    goto/16 :goto_0

    :sswitch_8a
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secExplicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_8b
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, p0

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v23}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8c
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_8d
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSetCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_8e
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSetBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_8f
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v86

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_90
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecOperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v76

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_91
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemDialEmergencyCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_92
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemCallDeflectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_93
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v63, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct/range {v63 .. v63}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    move-object/from16 v0, v63

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemModifyCallInitiateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    goto/16 :goto_0

    :sswitch_94
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSetImsCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_95
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_96
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSetPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_97
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSendEncodedUSSDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_98
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemHoldCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_99
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v68

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_9a
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSetDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_9b
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetAcbInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_9c
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSetTransferCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_9d
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetICBarringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9e
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSetICBarringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_9f
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v82

    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemQueryCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_a0
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemRefreshNitzTimeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_a1
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemEnableUnsolResponseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_a2
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemCancelTransferCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_a3
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemAcknowledgeRilConnectedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_a4
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetPhoneBookStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_a5
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v107

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemUsimPbCapaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_a6
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v81

    move-object/from16 v0, p0

    move/from16 v1, v81

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSetSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_a7
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSetSimInitEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_a8
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v99

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetSimLockInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_a9
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSupplyIccPersoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_aa
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemChangeIccPersoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_ab
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v24, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetPhoneBookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemSimPBResponse;)V

    goto/16 :goto_0

    :sswitch_ac
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemAccessPhoneBookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_ad
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v54, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;

    invoke-direct/range {v54 .. v54}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetCellBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/OemCbConfigArgs;)V

    goto/16 :goto_0

    :sswitch_ae
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v88

    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemEmergencySearchResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_0

    :sswitch_af
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemEmergencyControlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_b0
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemGetAtrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b1
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v101, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;

    invoke-direct/range {v101 .. v101}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;-><init>()V

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    goto/16 :goto_0

    :sswitch_b2
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v101, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;

    invoke-direct/range {v101 .. v101}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;-><init>()V

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    goto/16 :goto_0

    :sswitch_b3
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v101, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;

    invoke-direct/range {v101 .. v101}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;-><init>()V

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    goto/16 :goto_0

    :sswitch_b4
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v101, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;

    invoke-direct/range {v101 .. v101}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;-><init>()V

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    goto/16 :goto_0

    :sswitch_b5
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v101, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;

    invoke-direct/range {v101 .. v101}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;-><init>()V

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/hardware/radio/V1_0/SecSendSmsResult;)V

    goto/16 :goto_0

    :sswitch_b6
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secSendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_b7
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v74

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v71

    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, v71

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->secGetCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    goto/16 :goto_0

    :sswitch_b8
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemQueryCsgListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_b9
    const-string/jumbo v4, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v5, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->oemSelectCsgManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    goto/16 :goto_0

    :sswitch_ba
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v32

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_bb
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_bc
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v31

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_bd
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v33

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v28, Landroid/os/HwBlob;

    const/16 v4, 0x10

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v35

    const-wide/16 v112, 0x8

    move-object/from16 v0, v28

    move-wide/from16 v1, v112

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v112, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v112

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v51, Landroid/os/HwBlob;

    mul-int/lit8 v4, v35, 0x20

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/16 v29, 0x0

    :goto_1
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    mul-int/lit8 v4, v29, 0x20

    int-to-long v0, v4

    move-wide/from16 v26, v0

    const/16 v30, 0x0

    :goto_2
    const/16 v4, 0x20

    move/from16 v0, v30

    if-ge v0, v4, :cond_0

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v30

    move-object/from16 v0, v51

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v112, 0x1

    add-long v26, v26, v112

    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v112, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v112

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_be
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_bf
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v34

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_c0
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->notifySyspropsChanged()V

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
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_bb
        0xf445343 -> :sswitch_bc
        0xf485348 -> :sswitch_bd
        0xf494e54 -> :sswitch_be
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_bf
        0xf535953 -> :sswitch_c0
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.radio@1.0::ISecRadioResponse"

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

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
