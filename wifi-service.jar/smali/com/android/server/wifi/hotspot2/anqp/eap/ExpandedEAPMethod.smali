.class public Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "ExpandedEAPMethod.java"


# static fields
.field public static final EXPECTED_LENGTH_VALUE:I = 0x7


# instance fields
.field private final mVendorID:I

.field private final mVendorType:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid length value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x3

    invoke-static {p0, v4, v5}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v4

    long-to-int v4, v4

    const v5, 0xffffff

    and-int v1, v4, v5

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x4

    invoke-static {p0, v4, v5}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    and-long v2, v4, v6

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_0
    new-instance v4, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;-><init>(IIJ)V

    return-object v4

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    if-ne v3, v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    iget-wide v6, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getVendorID()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    return v0
.end method

.method public getVendorType()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExpandedEAPMethod{mVendorID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mVendorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
