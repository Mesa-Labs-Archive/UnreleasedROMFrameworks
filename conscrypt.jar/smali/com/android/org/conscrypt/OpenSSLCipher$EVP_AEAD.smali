.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EVP_AEAD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_SIZE_BITS:I = 0x80

.field private static lastGlobalMessageSize:I


# instance fields
.field private aad:[B

.field protected buf:[B

.field protected bufCount:I

.field protected evpAead:J

.field private tagLengthInBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    return-void
.end method

.method private expand(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    return-void
.end method

.method private reset()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    sget v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    if-nez v1, :cond_1

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    return-void

    :cond_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    sput v1, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    goto :goto_0
.end method

.method private throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v7, "javax.crypto.AEADBadTagException"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljavax/crypto/BadPaddingException;

    move-object v2, v0

    invoke-virtual {v2, p2}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v2, :cond_0

    throw v2

    :catch_0
    move-exception v6

    return-void

    :catch_1
    move-exception v5

    new-instance v7, Ljavax/crypto/BadPaddingException;

    invoke-direct {v7}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljavax/crypto/BadPaddingException;

    throw v7

    :cond_0
    return-void

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method protected checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string/jumbo v1, "Must be NoPadding for AEAD ciphers"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected doFinalInternal([BII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->encodedKey:[B

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    iget v9, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    iget-object v10, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    return v11

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->encodedKey:[B

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    iget v9, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    iget-object v10, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    goto :goto_0

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    mul-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    return-object v3

    :cond_1
    :try_start_0
    const-string/jumbo v3, "GCM"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    return-object v5
.end method

.method protected engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v3, 0x0

    const/16 v5, 0x80

    :goto_0
    rem-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_3

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Tag length must be a multiple of 8; was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-static {p2}, Lcom/android/org/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/org/conscrypt/GCMParameters;->getIV()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/org/conscrypt/GCMParameters;->getTLen()I

    move-result v5

    goto :goto_0

    :cond_1
    instance-of v6, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v6, :cond_2

    move-object v4, p2

    check-cast v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    const/16 v5, 0x80

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/16 v5, 0x80

    goto :goto_0

    :cond_3
    div-int/lit8 v6, v5, 0x8

    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->isEncrypting()Z

    move-result v0

    array-length v6, p1

    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->getEVP_AEAD(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    move-result v1

    if-nez v3, :cond_7

    if-eqz v1, :cond_7

    if-nez v0, :cond_4

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IV must be specified in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    new-array v3, v1, [B

    if-eqz p3, :cond_6

    invoke-virtual {p3, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_5
    :goto_1
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    return-void

    :cond_6
    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    if-eqz v3, :cond_8

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IV not used in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    if-eqz v3, :cond_5

    array-length v6, v3

    if-eq v6, v1, :cond_5

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected IV length of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineUpdateAAD([BII)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    if-nez v2, :cond_0

    add-int v2, p2, p3

    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    array-length v2, v2

    add-int v0, v2, p3

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    array-length v2, v2

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    goto :goto_0
.end method

.method protected abstract getEVP_AEAD(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected getOutputSizeForFinal(I)I
    .locals 4

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    add-int v1, v0, p1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_max_overhead(J)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateInternal([BII[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    if-lez p3, :cond_1

    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->expand(I)V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    :cond_1
    return v2
.end method
