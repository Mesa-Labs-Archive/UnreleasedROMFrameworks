.class public Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;
.super Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;
.source "CredentialType.java"


# static fields
.field public static final CREDENTIAL_TYPE_ANONYMOUS:I = 0x9

.field public static final CREDENTIAL_TYPE_CERTIFICATE:I = 0x6

.field public static final CREDENTIAL_TYPE_HARDWARE_TOKEN:I = 0x4

.field public static final CREDENTIAL_TYPE_NFC:I = 0x3

.field public static final CREDENTIAL_TYPE_NONE:I = 0x8

.field public static final CREDENTIAL_TYPE_SIM:I = 0x1

.field public static final CREDENTIAL_TYPE_SOFTWARE_TOKEN:I = 0x5

.field public static final CREDENTIAL_TYPE_USERNAME_PASSWORD:I = 0x7

.field public static final CREDENTIAL_TYPE_USIM:I = 0x2

.field public static final CREDENTIAL_TYPE_VENDOR_SPECIFIC:I = 0xa

.field public static final EXPECTED_LENGTH_VALUE:I = 0x1


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;-><init>(I)V

    iput p2, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;IZ)Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    :goto_0
    new-instance v2, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;-><init>(II)V

    return-object v2

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;

    iget v3, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    iget v4, v0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CredentialType{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/anqp/eap/CredentialType;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
