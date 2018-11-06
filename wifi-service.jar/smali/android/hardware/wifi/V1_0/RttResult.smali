.class public final Landroid/hardware/wifi/V1_0/RttResult;
.super Ljava/lang/Object;
.source "RttResult.java"


# instance fields
.field public final addr:[B

.field public burstDurationInMs:I

.field public burstNum:I

.field public distanceInMm:I

.field public distanceSdInMm:I

.field public distanceSpreadInMm:I

.field public final lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

.field public final lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

.field public measurementNumber:I

.field public negotiatedBurstNum:I

.field public numberPerBurstPeer:B

.field public retryAfterDuration:B

.field public rssi:I

.field public rssiSpread:I

.field public rtt:J

.field public rttSd:J

.field public rttSpread:J

.field public final rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

.field public status:I

.field public successNumber:I

.field public timeStampInUs:J

.field public final txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiRateInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiRateInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

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
            "Landroid/hardware/wifi/V1_0/RttResult;",
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

    mul-int/lit16 v1, v12, 0xc0

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

    new-instance v11, Landroid/hardware/wifi/V1_0/RttResult;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/RttResult;-><init>()V

    mul-int/lit16 v1, v9, 0xc0

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/wifi/V1_0/RttResult;",
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

    mul-int/lit16 v4, v2, 0xc0

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/RttResult;

    mul-int/lit16 v5, v1, 0xc0

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v2, Landroid/hardware/wifi/V1_0/RttResult;

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/RttResult;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v6

    :cond_3
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    if-eq v1, v2, :cond_4

    return v6

    :cond_4
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    if-eq v1, v2, :cond_5

    return v6

    :cond_5
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    if-eq v1, v2, :cond_6

    return v6

    :cond_6
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    if-eq v1, v2, :cond_7

    return v6

    :cond_7
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    if-eq v1, v2, :cond_8

    return v6

    :cond_8
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    if-eq v1, v2, :cond_9

    return v6

    :cond_9
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    if-eq v1, v2, :cond_a

    return v6

    :cond_a
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    if-eq v1, v2, :cond_b

    return v6

    :cond_b
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    if-eq v1, v2, :cond_c

    return v6

    :cond_c
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v6

    :cond_d
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v6

    :cond_e
    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    iget-wide v4, v0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    return v6

    :cond_f
    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    iget-wide v4, v0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_10

    return v6

    :cond_10
    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    iget-wide v4, v0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_11

    return v6

    :cond_11
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    if-eq v1, v2, :cond_12

    return v6

    :cond_12
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    if-eq v1, v2, :cond_13

    return v6

    :cond_13
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    if-eq v1, v2, :cond_14

    return v6

    :cond_14
    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    iget-wide v4, v0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    return v6

    :cond_15
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    if-eq v1, v2, :cond_16

    return v6

    :cond_16
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    if-eq v1, v2, :cond_17

    return v6

    :cond_17
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v6

    :cond_18
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v6

    :cond_19
    return v7
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 7

    const-wide/16 v4, 0x0

    add-long v0, p3, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    const-wide/16 v4, 0xc

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    const-wide/16 v4, 0x10

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    const-wide/16 v4, 0x14

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    const-wide/16 v4, 0x18

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    const-wide/16 v4, 0x1c

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    const-wide/16 v4, 0x20

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    const-wide/16 v4, 0x24

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    const-wide/16 v4, 0x28

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v4, 0x2c

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v4, 0x40

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x58

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    const-wide/16 v4, 0x60

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    const-wide/16 v4, 0x68

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    const-wide/16 v4, 0x70

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    const-wide/16 v4, 0x74

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    const-wide/16 v4, 0x78

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    const-wide/16 v4, 0x80

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    const-wide/16 v4, 0x88

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    const-wide/16 v4, 0x8c

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v4, 0x90

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v4, 0xa8

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0xc0

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .burstNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .measurementNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .successNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .numberPerBurstPeer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .retryAfterDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rssiSpread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .txRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rxRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rtt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rttSd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rttSpread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .distanceInMm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .distanceSdInMm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .distanceSpreadInMm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .timeStampInUs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .burstDurationInMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .negotiatedBurstNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .lci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .lcr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    const-wide/16 v4, 0x0

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x14

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x1c

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x20

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x24

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v4, 0x2c

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    const-wide/16 v4, 0x40

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x58

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v4, 0x60

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v4, 0x68

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v4, 0x70

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x74

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x78

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x80

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v4, 0x88

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8c

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v4, 0x90

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    const-wide/16 v4, 0xa8

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
