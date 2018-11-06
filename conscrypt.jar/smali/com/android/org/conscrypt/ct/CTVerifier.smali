.class public Lcom/android/org/conscrypt/ct/CTVerifier;
.super Ljava/lang/Object;
.source "CTVerifier.java"


# instance fields
.field private final store:Lcom/android/org/conscrypt/ct/CTLogStore;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    return-void
.end method

.method private getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v1, "1.3.6.1.4.1.11129.2.4.5"

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->get_ocsp_single_extension([BLjava/lang/String;JJ)[B

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {v7}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x2

    :try_start_0
    invoke-static {p1, v5, v6}, Lcom/android/org/conscrypt/ct/Serialization;->readList([BII)[[B
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v3, v5

    :try_start_1
    invoke-static {v1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_1
    return-object v4

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSCTsFromTLSExtension([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "1.3.6.1.4.1.11129.2.4.2"

    invoke-virtual {p1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v2

    sget-object v3, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    new-instance v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    sget-object v3, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-direct {v2, v0, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p2, v2}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    array-length v7, p2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    const/4 v7, 0x0

    aget-object v2, p2, v7

    const/4 v7, 0x1

    aget-object v1, p2, v7

    :try_start_0
    invoke-static {v2, v1}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    invoke-direct {p0, v4, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v6

    new-instance v7, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    invoke-direct {v7, v4, v6}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v7}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    invoke-direct {p0, v1, v4}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v3

    new-instance v5, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    invoke-direct {v5, v1, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v5}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    return-void

    :cond_1
    return-void
.end method

.method private verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .locals 3

    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/conscrypt/ct/CTLogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ct/CTLogInfo;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    add-int/lit8 v4, v3, 0x1

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;

    move-result-object v5

    return-object v5
.end method

.method public verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v6, 0x0

    array-length v5, p1

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Chain of certificates mustn\'t be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    aget-object v1, p1, v6

    new-instance v3, Lcom/android/org/conscrypt/ct/CTVerificationResult;

    invoke-direct {v3}, Lcom/android/org/conscrypt/ct/CTVerificationResult;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromTLSExtension([B)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, v1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    invoke-direct {p0, p3, p1}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    aget-object v5, p1, v6

    invoke-direct {p0, v5}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    return-object v3
.end method
