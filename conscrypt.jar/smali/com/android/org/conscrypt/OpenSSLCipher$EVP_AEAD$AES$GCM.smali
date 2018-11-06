.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM$AES_128;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM$AES_256;
    }
.end annotation


# instance fields
.field private mustInitialize:Z

.field private previousIv:[B

.field private previousKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    return-void
.end method

.method private arraysAreEqual([B[B)Z
    .locals 5

    const/4 v2, 0x0

    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private checkInitialization()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->mustInitialize:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot re-use same key and IV for multiple encryptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v1, "Mode must be GCM"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected doFinalInternal([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->checkInitialization()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->doFinalInternal([BII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->mustInitialize:Z

    :cond_0
    return v0
.end method

.method protected engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->iv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->previousKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->previousIv:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->previousKey:[B

    invoke-direct {p0, v0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->arraysAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->previousIv:[B

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->iv:[B

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->arraysAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->mustInitialize:Z

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "In GCM mode key and IV must not be re-used"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->previousKey:[B

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->iv:[B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->previousIv:[B

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->mustInitialize:Z

    return-void
.end method

.method protected engineUpdateAAD([BII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->checkInitialization()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->engineUpdateAAD([BII)V

    return-void
.end method

.method protected getEVP_AEAD(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_128_gcm()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_aead_aes_256_gcm()J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateInternal([BII[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;->checkInitialization()V

    invoke-super/range {p0 .. p6}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method
