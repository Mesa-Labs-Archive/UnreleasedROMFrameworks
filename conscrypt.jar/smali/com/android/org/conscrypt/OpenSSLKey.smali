.class public Lcom/android/org/conscrypt/OpenSSLKey;
.super Ljava/lang/Object;
.source "OpenSSLKey.java"


# instance fields
.field private final ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

.field private final engineBased:Z

.field private final wrapped:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    iput-boolean p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engineBased:Z

    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    iput-boolean p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    iput-boolean p4, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engineBased:Z

    return-void
.end method

.method public static fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1
.end method

.method private static fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v1
.end method

.method public static fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v2, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    return-object v2

    :cond_1
    const-string/jumbo v2, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown key format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Key encoding is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v2
.end method

.method public static fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1
.end method

.method public static fromPrivateKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PrivateKey(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object v4

    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v2, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown key format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Key encoding is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PUBKEY(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object v4

    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method private static getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 2

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "RSA"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    move-object v3, p0

    :try_start_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v4

    if-eq v4, p1, :cond_0

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Unexpected key type"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    :catch_1
    move-exception v1

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    move-object v3, p0

    :try_start_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v4

    if-eq v4, p1, :cond_0

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Unexpected key type"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    :catch_1
    move-exception v1

    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLKey;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_cmp(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    :sswitch_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x198 -> :sswitch_1
    .end sparse-switch
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    :sswitch_1
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x198 -> :sswitch_1
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEngineBased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->engineBased:Z

    return v0
.end method

.method public isWrapped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    return v0
.end method
