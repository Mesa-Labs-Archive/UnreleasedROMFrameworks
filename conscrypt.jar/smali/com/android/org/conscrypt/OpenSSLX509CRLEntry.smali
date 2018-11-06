.class public Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "OpenSSLX509CRLEntry.java"


# instance fields
.field private final mContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    return-void
.end method


# virtual methods
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

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

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

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_REVOKED(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
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

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

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

.method public getRevocationDate()Ljava/util/Date;
    .locals 4

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v6, v7, v10}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    iget-wide v8, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v8, v9, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;)J

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

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    :try_start_0
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_print(JJ)V

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
