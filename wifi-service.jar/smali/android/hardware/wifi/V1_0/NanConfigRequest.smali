.class public final Landroid/hardware/wifi/V1_0/NanConfigRequest;
.super Ljava/lang/Object;
.source "NanConfigRequest.java"


# instance fields
.field public final bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

.field public disableDiscoveryAddressChangeIndication:Z

.field public disableJoinedClusterIndication:Z

.field public disableStartedClusterIndication:Z

.field public includePublishServiceIdsInBeacon:Z

.field public includeSubscribeServiceIdsInBeacon:Z

.field public macAddressRandomizationIntervalSec:I

.field public masterPref:B

.field public numberOfPublishServiceIdsInBeacon:B

.field public numberOfSubscribeServiceIdsInBeacon:B

.field public rssiWindowSize:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

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
            "Landroid/hardware/wifi/V1_0/NanConfigRequest;",
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

    mul-int/lit8 v1, v12, 0x20

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

    new-instance v11, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    mul-int/lit8 v1, v9, 0x20

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/wifi/V1_0/NanConfigRequest;",
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

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    mul-int/lit8 v5, v1, 0x20

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v2, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    :cond_d
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9

    const-wide/16 v6, 0x8

    const-wide/16 v4, 0x0

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    const-wide/16 v4, 0x1

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    const-wide/16 v4, 0x2

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    const-wide/16 v4, 0x3

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    const-wide/16 v4, 0x4

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    const-wide/16 v4, 0x5

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    const-wide/16 v4, 0x6

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    const-wide/16 v4, 0x7

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    add-long v4, p3, v6

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    iput-short v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    const-wide/16 v4, 0xc

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    const-wide/16 v4, 0x10

    add-long v0, p3, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    new-instance v4, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v0, v1}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x20

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".masterPref = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .disableDiscoveryAddressChangeIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .disableStartedClusterIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .disableJoinedClusterIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .includePublishServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .numberOfPublishServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .includeSubscribeServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .numberOfSubscribeServiceIdsInBeacon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rssiWindowSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .macAddressRandomizationIntervalSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .bandSpecificConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    const-wide/16 v6, 0x8

    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x2

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x3

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x4

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x5

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x6

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x7

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long v4, p2, v6

    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v4, 0xc

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x10

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0, v1}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
