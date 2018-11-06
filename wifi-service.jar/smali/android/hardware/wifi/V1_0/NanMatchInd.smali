.class public final Landroid/hardware/wifi/V1_0/NanMatchInd;
.super Ljava/lang/Object;
.source "NanMatchInd.java"


# instance fields
.field public final addr:[B

.field public discoverySessionId:B

.field public final extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final matchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public matchOccuredInBeaconFlag:Z

.field public outOfResourceFlag:Z

.field public peerCipherType:I

.field public peerId:I

.field public peerRequiresRanging:Z

.field public peerRequiresSecurityEnabledInNdp:Z

.field public rangingIndicationType:I

.field public rangingMeasurementInCm:I

.field public rssiValue:B

.field public final serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_0/NanMatchInd;",
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

    mul-int/lit8 v1, v12, 0x58

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

    new-instance v11, Landroid/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {v11}, Landroid/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    mul-int/lit8 v1, v9, 0x58

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/wifi/V1_0/NanMatchInd;",
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

    mul-int/lit8 v4, v2, 0x58

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanMatchInd;

    mul-int/lit8 v5, v1, 0x58

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v2, Landroid/hardware/wifi/V1_0/NanMatchInd;

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/hardware/wifi/V1_0/NanMatchInd;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    iget-byte v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    iget-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    :cond_10
    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

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
    .locals 21

    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    move-object/from16 v0, p0

    iput-byte v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    const-wide/16 v4, 0x4

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    const-wide/16 v4, 0x8

    add-long v12, p3, v4

    const/4 v11, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v11, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v11

    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x10

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x10

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v15, :cond_1

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x20

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x20

    add-long v8, v8, p3

    const-wide/16 v18, 0x0

    add-long v8, v8, v18

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v15, :cond_2

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x30

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x1

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

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v15, :cond_3

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x40

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    const-wide/16 v4, 0x41

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    const-wide/16 v4, 0x42

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    move-object/from16 v0, p0

    iput-byte v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    const-wide/16 v4, 0x44

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    const-wide/16 v4, 0x48

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    const-wide/16 v4, 0x49

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    const-wide/16 v4, 0x4c

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    const-wide/16 v4, 0x50

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 4

    const-wide/16 v2, 0x58

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".discoverySessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .peerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .serviceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .extendedServiceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .matchFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .matchOccuredInBeaconFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .outOfResourceFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rssiValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .peerCipherType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .peerRequiresSecurityEnabledInNdp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .peerRequiresRanging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rangingMeasurementInCm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .rangingIndicationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-byte v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x4

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x8

    add-long v0, p2, v6

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    aget-byte v6, v6, v3

    invoke-virtual {p1, v0, v1, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    const-wide/16 v8, 0xc

    add-long/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    mul-int/lit8 v6, v2, 0x1

    int-to-long v8, v6

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v6, 0x20

    add-long/2addr v6, p2

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x20

    add-long/2addr v6, p2

    const-wide/16 v8, 0xc

    add-long/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    mul-int/lit8 v6, v2, 0x1

    int-to-long v8, v6

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x20

    add-long/2addr v6, p2

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

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

    mul-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_3

    mul-int/lit8 v6, v2, 0x1

    int-to-long v8, v6

    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x30

    add-long/2addr v6, p2

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v6, 0x40

    add-long/2addr v6, p2

    iget-boolean v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x41

    add-long/2addr v6, p2

    iget-boolean v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x42

    add-long/2addr v6, p2

    iget-byte v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0x44

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x48

    add-long/2addr v6, p2

    iget-boolean v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x49

    add-long/2addr v6, p2

    iget-boolean v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x4c

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x50

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 4

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
