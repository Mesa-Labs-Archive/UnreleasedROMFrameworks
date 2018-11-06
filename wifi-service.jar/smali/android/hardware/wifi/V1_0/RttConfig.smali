.class public final Landroid/hardware/wifi/V1_0/RttConfig;
.super Ljava/lang/Object;
.source "RttConfig.java"


# instance fields
.field public final addr:[B

.field public burstDuration:I

.field public burstPeriod:I

.field public bw:I

.field public final channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

.field public mustRequestLci:Z

.field public mustRequestLcr:Z

.field public numBurst:I

.field public numFramesPerBurst:I

.field public numRetriesPerFtmr:I

.field public numRetriesPerRttFrame:I

.field public peer:I

.field public preamble:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    new-instance v0, Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

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
            "Landroid/hardware/wifi/V1_0/RttConfig;",
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

    mul-int/lit8 v1, v12, 0x44

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

    new-instance v11, Landroid/hardware/wifi/V1_0/RttConfig;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/RttConfig;-><init>()V

    mul-int/lit8 v1, v9, 0x44

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/wifi/V1_0/RttConfig;",
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

    mul-int/lit8 v4, v2, 0x44

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/RttConfig;

    mul-int/lit8 v5, v1, 0x44

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/wifi/V1_0/RttConfig;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/RttConfig;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

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

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

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

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    const-wide/16 v4, 0xc

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    const-wide/16 v4, 0x10

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x20

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    const-wide/16 v4, 0x24

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    const-wide/16 v4, 0x28

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    const-wide/16 v4, 0x2c

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    const-wide/16 v4, 0x30

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    const-wide/16 v4, 0x34

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    const-wide/16 v4, 0x35

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    const-wide/16 v4, 0x38

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    const-wide/16 v4, 0x3c

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    const-wide/16 v4, 0x40

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x44

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/RttConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .peer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttPeerType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .burstPeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .numBurst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .numFramesPerBurst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .numRetriesPerRttFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .numRetriesPerFtmr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .mustRequestLci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .mustRequestLcr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .burstDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .preamble = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttPreamble;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .bw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/RttBw;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 6

    const-wide/16 v4, 0x0

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x8

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x20

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x24

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x2c

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x30

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x34

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x35

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x38

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x3c

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x40

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/RttConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
