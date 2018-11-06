.class public Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;
.super Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.source "RawByteElement.java"


# instance fields
.field private final mPayload:[B


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    return-void
.end method

.method public static parse(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;-><init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;[B)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getID()Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getID()Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->mPayload:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
