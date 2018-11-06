.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
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
        -0x29t
        -0x7ft
        -0x38t
        -0x29t
        -0x19t
        -0x4dt
        -0x2t
        0x5ct
        -0x36t
        -0x74t
        -0xat
        -0x1ft
        -0x28t
        -0x80t
        0x6et
        0x77t
        0x9t
        -0x7et
        -0x52t
        0x53t
        0x58t
        -0x39t
        -0x7ft
        0x6et
        -0x2bt
        0x1bt
        0xft
        0xet
        -0x3et
        0x72t
        -0x19t
        0xdt
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

    const-string/jumbo v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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
    .locals 41
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
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onNetworkAdded(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onNetworkRemoved(I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_1
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_0

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v19

    move/from16 v3, v27

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onStateChanged(I[BILjava/util/ArrayList;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_2
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_1

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    new-instance v22, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct/range {v22 .. v22}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v26, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct/range {v26 .. v26}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onAnqpQueryDone([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_3
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_2

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_4
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_3

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v30

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_5
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_4

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    move/from16 v3, v31

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_6
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_5

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onDisconnected([BZI)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_7
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_6

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v36

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onAssociationRejected([BIZ)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_8
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_7

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onAuthenticationTimeout([B)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onEapFailure()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v32

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_9
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_8

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onBssidChanged(B[B)V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onWpsEventSuccess()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x6

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const-wide/16 v38, 0x6

    move-object/from16 v0, p2

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :goto_a
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ge v12, v0, :cond_9

    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v38

    aput-byte v38, v19, v12

    const-wide/16 v38, 0x1

    add-long v6, v6, v38

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onWpsEventFail([BSS)V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onWpsEventPbcOverlap()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onExtRadioWorkStart(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v38, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->onExtRadioWorkTimeout(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v38, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v15

    const/16 v38, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v38, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v38, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v38, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v14

    const/16 v38, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v38, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v16

    const/16 v38, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v10, Landroid/os/HwBlob;

    const/16 v38, 0x10

    move/from16 v0, v38

    invoke-direct {v10, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    const-wide/16 v38, 0x8

    move-wide/from16 v0, v38

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v38, 0xc

    const/16 v40, 0x0

    move-wide/from16 v0, v38

    move/from16 v2, v40

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v20, Landroid/os/HwBlob;

    mul-int/lit8 v38, v18, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v11, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v11, v0, :cond_b

    mul-int/lit8 v38, v11, 0x20

    move/from16 v0, v38

    int-to-long v8, v0

    const/4 v13, 0x0

    :goto_c
    const/16 v38, 0x20

    move/from16 v0, v38

    if-ge v13, v0, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [B

    aget-byte v38, v38, v13

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v38, 0x1

    add-long v8, v8, v38

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_b
    const-wide/16 v38, 0x0

    move-wide/from16 v0, v38

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v38, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v38, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v17

    const/16 v38, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v38, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

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
        0xf43484e -> :sswitch_12
        0xf444247 -> :sswitch_13
        0xf445343 -> :sswitch_14
        0xf485348 -> :sswitch_15
        0xf494e54 -> :sswitch_16
        0xf4c5444 -> :sswitch_0
        0xf504e47 -> :sswitch_0
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_18
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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

    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
