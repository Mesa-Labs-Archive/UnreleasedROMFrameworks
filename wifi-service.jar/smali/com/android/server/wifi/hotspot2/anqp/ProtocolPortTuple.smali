.class public Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;
.super Ljava/lang/Object;
.source "ProtocolPortTuple.java"


# static fields
.field public static final PROTO_STATUS_CLOSED:I = 0x0

.field public static final PROTO_STATUS_OPEN:I = 0x1

.field public static final PROTO_STATUS_UNKNOWN:I = 0x2

.field public static final RAW_BYTE_SIZE:I = 0x4


# instance fields
.field private final mPort:I

.field private final mProtocol:I

.field private final mStatus:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    iput p3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;
    .locals 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x2

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v4

    long-to-int v3, v4

    const v4, 0xffff

    and-int v0, v3, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    new-instance v3, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;

    invoke-direct {v3, v1, v0, v2}, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;-><init>(III)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

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

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProtocolTuple{mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/ProtocolPortTuple;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
