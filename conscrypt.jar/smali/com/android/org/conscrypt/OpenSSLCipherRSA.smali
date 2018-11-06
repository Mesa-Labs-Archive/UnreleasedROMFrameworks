.class abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$PKCS1;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$Raw;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field protected encrypting:Z

.field private inputTooLarge:Z

.field protected key:Lcom/android/org/conscrypt/OpenSSLKey;

.field protected padding:I

.field protected usingPrivateKey:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    return-void
.end method


# virtual methods
.method protected doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    return-void
.end method

.method protected abstract doCryptoOperation([B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v0

    array-length v2, v0

    add-int v1, p5, v2

    array-length v2, p4

    if-le v1, v2, :cond_0

    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "output buffer is too small "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v0

    return v2
.end method

.method protected engineDoFinal([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    :cond_0
    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "input must be under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v4, v4

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v3, v3

    new-array v2, v3, [B

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v3, v3

    new-array v0, v3, [B

    invoke-virtual {p0, v2, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->doCryptoOperation([B[B)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-nez v3, :cond_2

    array-length v3, v0

    if-eq v1, v3, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_2
    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    return-object v0

    :cond_3
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Algorithm parameters rejected when none supplied"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown param type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eq p1, v7, :cond_0

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    :cond_0
    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    :goto_0
    instance-of v5, p2, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v5, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    :goto_1
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :cond_1
    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-ne p1, v5, :cond_3

    :cond_2
    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported opmode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    instance-of v5, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v5, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    :cond_5
    instance-of v5, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v5, :cond_6

    move-object v2, p2

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    iput-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    :cond_6
    instance-of v5, p2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v5, :cond_7

    move-object v3, p2

    check-cast v3, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    :cond_7
    instance-of v5, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v5, :cond_8

    move-object v4, p2

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    iput-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    invoke-static {v4}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_1

    :cond_8
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string/jumbo v6, "Need RSA private or public key"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ECB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PKCS1PADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    return-void

    :cond_0
    const-string/jumbo v1, "NOPADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    return-void

    :cond_1
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "padding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    array-length v5, p1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, v5}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v3

    const/4 v5, 0x1

    if-ne p3, v5, :cond_0

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v5, 0x2

    if-ne p3, v5, :cond_1

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    return-object v5

    :cond_1
    const/4 v5, 0x3

    if-ne p3, v5, :cond_2

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v5

    :cond_2
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wrappedKeyType == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v0

    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v1

    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method protected isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected keySizeBytes()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    return v0
.end method

.method protected paddedBlockSizeBytes()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0xa

    :cond_0
    return v0
.end method
