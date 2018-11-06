.class public Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    :goto_0
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    new-array v4, v0, [B

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return-void

    :cond_0
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v4, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_0

    :cond_1
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v4, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Need RSA private key"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    :goto_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return-void

    :cond_0
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Need RSA public key"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    return-void
.end method

.method protected engineSign()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Need RSA private key"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "input length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (modulus size)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    new-array v1, v2, [B

    :try_start_0
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 3

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aput-byte p1, v1, v0

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 3

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v7, :cond_0

    new-instance v7, Ljava/security/SignatureException;

    const-string/jumbo v8, "Need RSA public key"

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-boolean v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v7, :cond_1

    return v10

    :cond_1
    array-length v7, p1

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v8, v8

    if-le v7, v8, :cond_2

    new-instance v7, Ljava/security/SignatureException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Input signature length is too large: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v7, v7

    new-array v5, v7, [B

    :try_start_0
    array-length v7, p1

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v8}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, p1, v5, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    :try_start_1
    iget v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne v6, v7, :cond_4

    const/4 v4, 0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_5

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v7, v7, v3

    aget-byte v8, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v7, v8, :cond_3

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return v10

    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_2
    move-exception v2

    :try_start_3
    new-instance v7, Ljava/security/SignatureException;

    invoke-direct {v7, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v7

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iput v10, p0, Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return v4
.end method
