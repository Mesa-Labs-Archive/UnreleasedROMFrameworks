.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Mode;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    }
.end annotation


# instance fields
.field private blockSize:I

.field protected encodedKey:[B

.field private encrypting:Z

.field protected iv:[B

.field protected mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field private padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    return-void
.end method

.method private checkAndSetEncodedKey(ILjava/security/Key;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    :goto_0
    instance-of v1, p2, Ljavax/crypto/SecretKey;

    if-nez v1, :cond_4

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Only SecretKey is supported"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    return-object v0
.end method


# virtual methods
.method protected abstract checkSupportedKeySize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected abstract doFinalInternal([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v6

    if-lez p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v7

    add-int/2addr p5, v7

    sub-int/2addr v6, v7

    :goto_0
    invoke-virtual {p0, p4, p5, v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I

    move-result v0

    add-int/2addr v0, v7

    return v0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected engineDoFinal([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v6

    new-array v4, v6, [B

    if-lez p3, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_0
    sub-int v0, v6, v7

    :try_start_1
    invoke-virtual {p0, v4, v7, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/2addr v7, v0

    array-length v0, v4

    if-ne v7, v0, :cond_1

    return-object v4

    :catch_0
    move-exception v8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "our calculated buffer was too small"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :catch_1
    move-exception v8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "our calculated buffer was too small"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-nez v7, :cond_2

    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    array-length v3, v3

    if-lez v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    return-object v4

    :catch_1
    move-exception v1

    return-object v4

    :cond_0
    return-object v4
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    :try_start_0
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "Params must be convertible to IvParameterSpec"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected abstract engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No such mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such padding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    invoke-virtual {p0, p1, v6, v5}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    if-lez v6, :cond_0

    new-array v4, v6, [B

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    array-length v0, v4

    if-ne v0, v7, :cond_1

    return-object v4

    :cond_0
    sget-object v4, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calculated buffer size was wrong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v7, :cond_2

    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

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

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B
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

.method protected abstract getBaseCipherName()Ljava/lang/String;
.end method

.method protected abstract getCipherBlockSize()I
.end method

.method protected abstract getOutputSizeForFinal(I)I
.end method

.method protected abstract getOutputSizeForUpdate(I)I
.end method

.method protected getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method protected isEncrypting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    return v0
.end method

.method protected supportsVariableSizeIv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected supportsVariableSizeKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract updateInternal([BII[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method
