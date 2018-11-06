.class public final Landroid/hardware/wifi/V1_0/StaScanResult;
.super Ljava/lang/Object;
.source "StaScanResult.java"


# instance fields
.field public beaconPeriodInMs:S

.field public final bssid:[B

.field public capability:S

.field public frequency:I

.field public final informationElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/WifiInformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public rssi:I

.field public final ssid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public timeStampInUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/StaScanResult;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v1, v12, 0x40

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_0

    new-instance v11, Landroid/hardware/wifi/V1_0/StaScanResult;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/StaScanResult;-><init>()V

    mul-int/lit8 v1, v9, 0x40

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/StaScanResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/StaScanResult;

    mul-int/lit8 v5, v1, 0x40

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/wifi/V1_0/StaScanResult;

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/StaScanResult;

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    iget-wide v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    return v6

    :cond_3
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v6

    :cond_4
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v6

    :cond_5
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    if-eq v1, v2, :cond_6

    return v6

    :cond_6
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    if-eq v1, v2, :cond_7

    return v6

    :cond_7
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    if-eq v1, v2, :cond_8

    return v6

    :cond_8
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    if-eq v1, v2, :cond_9

    return v6

    :cond_9
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v6

    :cond_a
    return v7
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 21

    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    const-wide/16 v4, 0x8

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v16

    mul-int/lit8 v3, v16, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x18

    add-long v12, p3, v4

    const/4 v11, 0x0

    :goto_1
    const/4 v3, 0x6

    if-ge v11, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v11

    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x20

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    const-wide/16 v4, 0x24

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    const-wide/16 v4, 0x28

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    const-wide/16 v4, 0x2a

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    const-wide/16 v4, 0x30

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v16

    mul-int/lit8 v3, v16, 0x18

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x30

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v2, v0, :cond_2

    new-instance v15, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v15}, Landroid/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    mul-int/lit8 v3, v2, 0x18

    int-to-long v4, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v4, v5}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x40

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/StaScanResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".timeStampInUs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .beaconPeriodInMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .informationElements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10

    const-wide/16 v6, 0x0

    add-long/2addr v6, p2

    iget-wide v8, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v6, 0x8

    add-long/2addr v6, p2

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x8

    add-long/2addr v6, p2

    const-wide/16 v8, 0xc

    add-long/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    mul-int/lit8 v6, v2, 0x1

    int-to-long v8, v6

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x8

    add-long/2addr v6, p2

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v6, 0x18

    add-long v0, p2, v6

    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    aget-byte v6, v6, v3

    invoke-virtual {p1, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x20

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x24

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x28

    add-long/2addr v6, p2

    iget-short v8, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->beaconPeriodInMs:S

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v6, 0x2a

    add-long/2addr v6, p2

    iget-short v8, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->capability:S

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt16(JS)V

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v6, 0x30

    add-long/2addr v6, p2

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x30

    add-long/2addr v6, p2

    const-wide/16 v8, 0xc

    add-long/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x18

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    mul-int/lit8 v7, v2, 0x18

    int-to-long v8, v7

    invoke-virtual {v6, v5, v8, v9}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x30

    add-long/2addr v6, p2

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/StaScanResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
