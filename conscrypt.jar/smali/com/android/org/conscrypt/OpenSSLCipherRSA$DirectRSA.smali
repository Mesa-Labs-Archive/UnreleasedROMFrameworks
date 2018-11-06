.class public abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DirectRSA"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doCryptoOperation([B[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->encrypting:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v3, :cond_0

    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v3, :cond_2

    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    goto :goto_0

    :cond_2
    array-length v3, p1

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method
