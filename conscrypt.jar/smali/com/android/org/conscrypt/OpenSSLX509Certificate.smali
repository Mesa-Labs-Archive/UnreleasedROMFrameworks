.class public Lcom/android/org/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# static fields
.field private static final serialVersionUID:J = 0x1ba5daf1d5fc5de0L


# instance fields
.field private final transient mContext:J

.field private transient mHashCode:Ljava/lang/Integer;


# direct methods
.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-void
.end method

.method private static alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method static createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    array-length v2, p0

    new-array v0, v2, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v4, p0, v1

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Only X.509 certificates are supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    :cond_0
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_bio(J)J
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
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J
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
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature did not verify"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->X509_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2}, Ljava/security/SignatureException;-><init>()V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate not valid until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_cmp(JJ)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/security/cert/X509Certificate;->finalize()V

    throw v0
.end method

.method public getBasicConstraints()I
    .locals 5

    const/4 v4, -0x1

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    return v4

    :cond_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_pathlen(J)I

    move-result v0

    if-ne v0, v4, :cond_1

    const v1, 0x7fffffff

    return v1

    :cond_1
    return v0
.end method

.method public getContext()J
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-wide v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_xkusage(J)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_issuerUID(J)[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_issuer_name(J)[B

    move-result-object v0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getKeyUsage()[Z
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x9

    const/4 v4, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_kusage(J)[Z

    move-result-object v0

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    array-length v2, v0

    if-lt v2, v5, :cond_1

    return-object v0

    :cond_1
    new-array v1, v5, [Z

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 4

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notAfter(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 4

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notBefore(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 8

    :try_start_0
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_pubkey(J)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_pubkey_oid(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(J)[B

    move-result-object v0

    :try_start_1
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    return-object v5

    :catch_1
    move-exception v1

    new-instance v5, Lcom/android/org/conscrypt/X509PublicKey;

    invoke-direct {v5, v3, v0}, Lcom/android/org/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_signature(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_subjectUID(J)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_subject_name(J)[B

    move-result-object v0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_cert_info_enc(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_version(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 4

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v8}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_print_ex(JJJJ)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v2, :cond_0

    instance-of v2, p2, Lcom/android/org/conscrypt/OpenSSLProvider;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public withDeletedExtension(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 4

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_dup(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_delete_ext(JLjava/lang/String;)V

    return-object v0
.end method
