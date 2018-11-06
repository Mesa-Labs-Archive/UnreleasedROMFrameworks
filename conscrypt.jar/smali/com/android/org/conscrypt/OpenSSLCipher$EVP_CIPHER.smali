.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EVP_CIPHER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_128;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_256;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$ARC4;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;
    }
.end annotation


# instance fields
.field protected calledUpdate:Z

.field private final cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private modeBlockSize:I


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    return-void
.end method

.method private reset()V
    .locals 7

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->encodedKey:[B

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->iv:[B

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    return-void
.end method


# virtual methods
.method protected doFinalInternal([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v5, 0x0

    move v1, p2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    array-length v4, p1

    sub-int v0, v4, p2

    if-lt v0, p3, :cond_2

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v3

    :cond_1
    :goto_0
    add-int/2addr p2, v3

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->reset()V

    sub-int v4, p2, v1

    return v4

    :cond_2
    new-array v2, p3, [B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, v2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v3

    if-le v3, v0, :cond_3

    new-instance v4, Ljavax/crypto/ShortBufferException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "buffer is too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    if-lez v3, :cond_1

    invoke-static {v2, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method protected engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v3, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v3, :cond_0

    move-object/from16 v15, p2

    check-cast v15, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v15}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v13

    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot find name for key length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v8

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v2

    if-nez v13, :cond_5

    if-eqz v2, :cond_5

    if-nez v8, :cond_2

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IV must be specified in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-array v13, v2, [B

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->iv:[B

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->supportsVariableSizeKey()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-static {v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v14

    move-object/from16 v12, p1

    invoke-static/range {v9 .. v14}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v3

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v3, v7, :cond_8

    const/4 v3, 0x1

    :goto_3
    invoke-static {v6, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    return-void

    :cond_4
    invoke-static {v13}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    if-eqz v13, :cond_6

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IV not used in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    if-eqz v13, :cond_3

    array-length v3, v13

    if-eq v3, v2, :cond_3

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expected IV length of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object/from16 v6, p1

    move-object v7, v13

    invoke-static/range {v3 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3
.end method

.method protected abstract getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method protected getOutputSizeForFinal(I)I
    .locals 6

    const/4 v4, 0x0

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    return p1

    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v3

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v3, v5, :cond_1

    add-int v3, v0, p1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    move-result v1

    add-int v5, p1, v0

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    :goto_0
    add-int v2, v5, v3

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    rem-int v3, v2, v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    :cond_3
    add-int/2addr v2, v4

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    rem-int v3, v2, v3

    sub-int v3, v2, v3

    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method protected getOutputSizeForUpdate(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method protected updateInternal([BII[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    move v7, p5

    array-length v0, p4

    sub-int v6, v0, p5

    if-ge v6, p6, :cond_0

    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "output buffer too small during update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object v1, p4

    move v2, p5

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    move-result v0

    add-int/2addr p5, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    sub-int v0, p5, v7

    return v0
.end method
