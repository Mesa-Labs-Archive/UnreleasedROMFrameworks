.class public Lcom/android/org/conscrypt/OpenSSLSignature;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;,
        Lcom/android/org/conscrypt/OpenSSLSignature$MD5RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSAPSS;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I


# instance fields
.field private ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private final engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field private final evpMdRef:J

.field private evpPkeyCtx:J

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private signing:Z

.field private final singleByte:[B


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V

    return-void
.end method

.method private checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature;->-getcom-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature initialized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (not RSA)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature initialized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (not EC)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSignature;->checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    iput-boolean p2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final resetContext()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    :goto_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    invoke-virtual {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature;->configureEVP_PKEY_CTX(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    goto :goto_0
.end method


# virtual methods
.method protected configureEVP_PKEY_CTX(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    return-void
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected engineSign()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    :try_start_0
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2

    throw v3

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->engineUpdate([BII)V

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

    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

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
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v5, :cond_5

    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    :goto_0
    add-int v5, v4, v3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_5
    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    goto :goto_0
.end method

.method protected engineUpdate([BII)V
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {v0, p1, v4, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2

    throw v3

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected final getEVP_PKEY_CTX()J
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    return-wide v0
.end method
