.class public Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "InnerAuthEAP.java"


# static fields
.field public static final EXPECTED_LENGTH_VALUE:I = 0x1


# instance fields
.field private final mEAPMethodID:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    iput p1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;I)Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    new-instance v1, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getEAPMethodID()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InnerAuthEAP{mEAPMethodID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/InnerAuthEAP;->mEAPMethodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
