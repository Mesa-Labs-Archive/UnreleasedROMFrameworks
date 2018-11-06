.class public Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "HSWanMetricsElement.java"


# static fields
.field public static final AT_CAPACITY_MASK:I = 0x8

.field public static final EXPECTED_BUFFER_SIZE:I = 0xd

.field public static final LINK_STATUS_DOWN:I = 0x2

.field public static final LINK_STATUS_MASK:I = 0x3

.field public static final LINK_STATUS_RESERVED:I = 0x0

.field public static final LINK_STATUS_TEST:I = 0x3

.field public static final LINK_STATUS_UP:I = 0x1

.field private static final MAX_LOAD:I = 0x100

.field public static final SYMMETRIC_LINK_MASK:I = 0x4


# instance fields
.field private final mCapped:Z

.field private final mDownlinkLoad:I

.field private final mDownlinkSpeed:J

.field private final mLMD:I

.field private final mStatus:I

.field private final mSymmetric:Z

.field private final mUplinkLoad:I

.field private final mUplinkSpeed:J


# direct methods
.method public constructor <init>(IZZJJIII)V
    .locals 2

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    iput-boolean p3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    iput-wide p6, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    iput p8, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    iput p9, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    iput p10, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v14, 0xd

    if-eq v2, v14, :cond_0

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unexpected buffer size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v13, v2, 0xff

    and-int/lit8 v3, v13, 0x3

    and-int/lit8 v2, v13, 0x4

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :goto_0
    and-int/lit8 v2, v13, 0x8

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    :goto_1
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    and-long v6, v14, v16

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    and-long v8, v14, v16

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v10, v2, 0xff

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v11, v2, 0xff

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v14

    long-to-int v2, v14

    const v14, 0xffff

    and-int v12, v2, v14

    new-instance v2, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;-><init>(IZZJJIII)V

    return-object v2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    iget-boolean v4, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    iget-boolean v4, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    iget-wide v6, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    iget-wide v6, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDownlinkLoad()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    return v0
.end method

.method public getDownlinkSpeed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    return-wide v0
.end method

.method public getLMD()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    return v0
.end method

.method public getUplinkLoad()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    return v0
.end method

.method public getUplinkSpeed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isCapped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    return v0
.end method

.method public isSymmetric()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-string/jumbo v0, "HSWanMetrics{mStatus=%s, mSymmetric=%s, mCapped=%s, mDlSpeed=%d, mUlSpeed=%d, mDlLoad=%f, mUlLoad=%f, mLMD=%d}"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mSymmetric:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mCapped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mDownlinkLoad:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mUplinkLoad:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->mLMD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
