.class public Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OAEP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA1;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA224;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA256;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA384;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA512;
    }
.end annotation


# instance fields
.field private label:[B

.field private mgf1Md:J

.field private oaepMd:J

.field private oaepMdSizeBytes:I

.field private pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    return-void
.end method

.method private readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    const-string/jumbo v6, "MGF1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "1.2.840.113549.1.1.8"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    :cond_0
    instance-of v6, v3, Ljava/security/spec/MGF1ParameterSpec;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    :cond_1
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v7, "Only MGF1 supported as mask generation function"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    move-object v1, v3

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    invoke-static {v4}, Lcom/android/org/conscrypt/EvpMdRef;->getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v5

    const-string/jumbo v6, "PSpecified"

    invoke-virtual {v5}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v5, Ljavax/crypto/spec/PSource$PSpecified;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    :cond_3
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v7, "Only PSpecified accepted for PSource"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v0

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v6, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v5}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    return-void
.end method


# virtual methods
.method protected doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->encrypting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_encrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v0

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;-><init>(J)V

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->context:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->context:J

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->context:J

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;->context:J

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_decrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected doCryptoOperation([B[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->encrypting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    array-length v5, p1

    move-object v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_encrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    array-length v5, p1

    move-object v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_decrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    const-string/jumbo v3, "OAEP"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-nez v3, :cond_1

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    :goto_0
    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MGF1"

    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v2

    :cond_1
    new-instance v1, Ljavax/crypto/spec/PSource$PSpecified;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "No providers of AlgorithmParameters.OAEP available"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "Only OAEP parameters are supported"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "Only OAEPParameterSpec accepted in OAEP mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OAEPPadding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->padding:I

    return-void

    :cond_0
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string/jumbo v2, "Only OAEP padding is supported"

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected paddedBlockSizeBytes()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->keySizeBytes()I

    move-result v0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    return v1
.end method
