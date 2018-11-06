.class public Lcom/android/org/conscrypt/ct/CertificateEntry;
.super Ljava/lang/Object;
.source "CertificateEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    }
.end annotation


# instance fields
.field private final certificate:[B

.field private final entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field private final issuerKeyHash:[B


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "issuerKeyHash missing for precert entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unexpected issuerKeyHash for X509 entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "issuerKeyHash must be 32 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    return-void
.end method

.method public static createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    const-string/jumbo v7, "1.3.6.1.4.1.11129.2.4.2"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/security/cert/CertificateException;

    const-string/jumbo v7, "Certificate does not contain embedded signed timestamps"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    :try_start_1
    const-string/jumbo v6, "1.3.6.1.4.1.11129.2.4.2"

    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->withDeletedExtension(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method public static createForPrecertificate([B[B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 2

    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method

.method public static createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v0

    return-object v0
.end method

.method public static createForX509Certificate([B)Lcom/android/org/conscrypt/ct/CertificateEntry;
    .locals 3

    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;-><init>(Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    return-void
.end method

.method public getCertificate()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->certificate:[B

    return-object v0
.end method

.method public getEntryType()Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->entryType:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CertificateEntry;->issuerKeyHash:[B

    return-object v0
.end method
