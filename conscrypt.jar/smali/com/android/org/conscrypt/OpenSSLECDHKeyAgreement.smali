.class public final Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "OpenSSLECDHKeyAgreement.java"


# instance fields
.field private mExpectedResultLength:I

.field private mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private mResult:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private checkCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Key agreement not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Not initialized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "ECDH only has one phase"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-nez p1, :cond_2

    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "key == null"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    instance-of v4, p1, Ljava/security/PublicKey;

    if-nez v4, :cond_3

    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not a public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    new-array v1, v4, [B

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v5

    invoke-static {v1, v6, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Engine returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ne v0, v4, :cond_5

    move-object v3, v1

    :goto_0
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    return-object v7

    :cond_5
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ge v0, v4, :cond_6

    new-array v3, v0, [B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v5, v5

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Engine produced a longer than expected result. Expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", actual: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    array-length v1, p1

    sub-int v0, v1, p2

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    if-le v1, v0, :cond_0

    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .locals 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Ljava/security/PrivateKey;

    if-nez v2, :cond_1

    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not a private key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    move-result v0

    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method
