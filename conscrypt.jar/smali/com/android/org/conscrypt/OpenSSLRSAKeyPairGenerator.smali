.class public Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "OpenSSLRSAKeyPairGenerator.java"


# instance fields
.field private modulusBits:I

.field private publicExponent:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    const/16 v0, 0x800

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_generate_key_ex(I[B)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    move-result-object v1

    new-instance v2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v2, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "Only RSAKeyGenParameterSpec supported"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    :cond_1
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    return-void
.end method
