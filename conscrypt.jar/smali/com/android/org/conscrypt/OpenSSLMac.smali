.class public abstract Lcom/android/org/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA224;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA256;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA384;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA512;
    }
.end annotation


# instance fields
.field private ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

.field private final evp_md:J

.field private keyBytes:[B

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    return-void
.end method

.method synthetic constructor <init>(JILcom/android/org/conscrypt/OpenSSLMac;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JI)V

    return-void
.end method

.method private final resetContext()V
    .locals 4

    new-instance v0, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;-><init>(J)V

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V

    :cond_0
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Final(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)[B

    move-result-object v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    return-object v1
.end method

.method protected engineGetMacLength()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key must be a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "unknown parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    if-nez v0, :cond_2

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    return-void
.end method

.method protected engineReset()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-gez v4, :cond_3

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Negative position"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    int-to-long v8, v4

    add-long v6, v0, v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gez v3, :cond_4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Negative remaining amount"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V

    add-int v5, v4, v3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V

    return-void
.end method
