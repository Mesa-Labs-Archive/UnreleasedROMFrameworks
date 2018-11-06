.class public Lcom/android/org/conscrypt/OpenSSLX509CRL;
.super Ljava/security/cert/X509CRL;
.source "OpenSSLX509CRL.java"


# instance fields
.field private final mContext:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    return-void
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
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x2

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
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
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
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
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x2

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
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
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

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_CRL_bio(J)J
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
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
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

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
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

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509_CRL(J)J
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
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez p2, :cond_1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getTBSCertList()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSignature()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/security/cert/X509CRL;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/security/cert/X509CRL;->finalize()V

    throw v0
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

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

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
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_CRL(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_issuer_name(J)[B

    move-result-object v0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 4

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_nextUpdate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

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

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

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

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 6

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_serial(J[B)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    return-object v2
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 8

    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    return-object v1
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_REVOKED(J)[J

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_1

    :cond_0
    return-object v8

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-wide v2, v1, v4

    new-instance v6, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-direct {v6, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

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

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_oid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_parameter(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_signature(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_crl_enc(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 4

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_lastUpdate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getVersion()I
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_version(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v6, v7, v10}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v8, v9, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext(JLjava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v7

    if-eq v7, v10, :cond_0

    return v10

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 10

    const/4 v4, 0x0

    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_0

    return v4

    :cond_0
    instance-of v5, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v5, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    :goto_0
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "cannot convert certificate"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    :try_start_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_print(JJ)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v3
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
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

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method
