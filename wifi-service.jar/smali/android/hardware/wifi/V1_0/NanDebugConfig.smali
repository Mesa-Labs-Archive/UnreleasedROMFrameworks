.class public final Landroid/hardware/wifi/V1_0/NanDebugConfig;
.super Ljava/lang/Object;
.source "NanDebugConfig.java"


# instance fields
.field public clusterIdBottomRangeVal:S

.field public clusterIdTopRangeVal:S

.field public final discoveryChannelMhzVal:[I

.field public hopCountForceVal:B

.field public final intfAddrVal:[B

.field public ouiVal:I

.field public randomFactorForceVal:B

.field public final useBeaconsInBandVal:[Z

.field public final useSdfInBandVal:[Z

.field public validClusterIdVals:Z

.field public validDiscoveryChannelVal:Z

.field public validHopCountForceVal:Z

.field public validIntfAddrVal:Z

.field public validOuiVal:Z

.field public validRandomFactorForceVal:Z

.field public validUseBeaconsInBandVal:Z

.field public validUseSdfInBandVal:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

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
            "Landroid/hardware/wifi/V1_0/NanDebugConfig;",
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

    mul-int/lit8 v1, v12, 0x2c

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

    new-instance v11, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/NanDebugConfig;-><init>()V

    mul-int/lit8 v1, v9, 0x2c

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/wifi/V1_0/NanDebugConfig;",
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

    mul-int/lit8 v4, v2, 0x2c

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    mul-int/lit8 v5, v1, 0x2c

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v2, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    iget-short v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    :cond_11
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    :cond_13
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 7

    const-wide/16 v4, 0x0

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    const-wide/16 v4, 0x2

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    iput-short v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    const-wide/16 v4, 0x4

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    iput-short v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    const-wide/16 v4, 0x6

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    const-wide/16 v4, 0x7

    add-long v0, p3, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xd

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    const-wide/16 v4, 0x10

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    const-wide/16 v4, 0x14

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    const-wide/16 v4, 0x15

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    const-wide/16 v4, 0x16

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    const-wide/16 v4, 0x17

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    const-wide/16 v4, 0x18

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    const-wide/16 v4, 0x1c

    add-long v0, p3, v4

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    aput v4, v3, v2

    const-wide/16 v4, 0x4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x24

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    const-wide/16 v4, 0x25

    add-long v0, p3, v4

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    aput-boolean v4, v3, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x27

    add-long/2addr v4, p3

    invoke-virtual {p2, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    const-wide/16 v4, 0x28

    add-long v0, p3, v4

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    aput-boolean v4, v3, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x2c

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".validClusterIdVals = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .clusterIdBottomRangeVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .clusterIdTopRangeVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .validIntfAddrVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .intfAddrVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .validOuiVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .ouiVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .validRandomFactorForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .randomFactorForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .validHopCountForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .hopCountForceVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .validDiscoveryChannelVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .discoveryChannelMhzVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .validUseBeaconsInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .useBeaconsInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .validUseSdfInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .useSdfInBandVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 12

    const-wide/16 v10, 0x4

    const-wide/16 v8, 0x1

    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x2

    add-long/2addr v4, p2

    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt16(JS)V

    add-long v4, p2, v10

    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v4, 0x6

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x7

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->intfAddrVal:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xd

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x14

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x15

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x16

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x17

    add-long/2addr v4, p2

    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x1c

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_1

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    aget v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v0, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x24

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x25

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    add-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x27

    add-long/2addr v4, p2

    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x28

    add-long v0, p2, v4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_3

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    add-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanDebugConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
