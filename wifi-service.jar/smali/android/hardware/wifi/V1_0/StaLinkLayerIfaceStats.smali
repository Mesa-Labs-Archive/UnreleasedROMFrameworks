.class public final Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;
.super Ljava/lang/Object;
.source "StaLinkLayerIfaceStats.java"


# instance fields
.field public avgRssiMgmt:I

.field public beaconRx:I

.field public final wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public final wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public final wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

.field public final wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    new-instance v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

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
            "Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;",
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

    mul-int/lit16 v1, v12, 0x88

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

    new-instance v11, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;-><init>()V

    mul-int/lit16 v1, v9, 0x88

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;",
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

    mul-int/lit16 v4, v2, 0x88

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    mul-int/lit16 v5, v1, 0x88

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v2, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 5

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x8

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x28

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x48

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x68

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x88

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".beaconRx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .avgRssiMgmt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .wmeBePktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .wmeBkPktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .wmeViPktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .wmeVoPktStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x8

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x28

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x48

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    const-wide/16 v2, 0x68

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
