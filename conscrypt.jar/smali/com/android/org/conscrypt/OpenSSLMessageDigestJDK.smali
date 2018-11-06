.class public Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigestSpi;
.source "OpenSSLMessageDigestJDK.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$MD5;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA1;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA256;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA384;,
        Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK$SHA512;
    }
.end annotation


# instance fields
.field private final ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private digestInitializedInContext:Z

.field private final evp_md:J

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    return-void
.end method

.method private constructor <init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    iput-boolean p5, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    return-void
.end method

.method synthetic constructor <init>(JILcom/android/org/conscrypt/OpenSSLMessageDigestJDK;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JI)V

    return-void
.end method

.method private ensureDigestInitializedInContext()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    invoke-static {v0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7

    new-instance v5, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v5, v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_copy_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I

    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    iget-boolean v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    invoke-direct/range {v1 .. v6}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Z)V

    return-object v1
.end method

.method protected engineDigest()[B
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v1, v0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I

    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    return v0
.end method

.method protected engineReset()V
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_cleanup(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_2

    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-gez v3, :cond_3

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Negative position"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    int-to-long v6, v3

    add-long v4, v0, v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gez v2, :cond_4

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v6, v4, v5, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    add-int v6, v3, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    return-void
.end method
