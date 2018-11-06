.class public final Lcom/android/org/conscrypt/TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;,
        Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blacklist:Lcom/android/org/conscrypt/CertBlacklist;

.field private ctEnabledOverride:Z

.field private ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

.field private ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private pinManager:Lcom/android/org/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "Conscrypt"

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;)V

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;Lcom/android/org/conscrypt/ct/CTLogStore;Lcom/android/org/conscrypt/ct/CTVerifier;Lcom/android/org/conscrypt/ct/CTPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;Lcom/android/org/conscrypt/ct/CTLogStore;Lcom/android/org/conscrypt/ct/CTVerifier;Lcom/android/org/conscrypt/ct/CTPolicy;)V
    .locals 14

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v12, "PKIX"

    invoke-static {v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v11

    const-string/jumbo v12, "X509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    const-string/jumbo v12, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v6, p1

    if-eqz p3, :cond_3

    move-object/from16 v9, p3

    :goto_0
    const/4 v2, 0x0

    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v8}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    :goto_1
    if-nez p4, :cond_0

    invoke-static {}, Lcom/android/org/conscrypt/CertBlacklist;->getDefault()Lcom/android/org/conscrypt/CertBlacklist;

    move-result-object p4

    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;

    invoke-direct/range {p5 .. p5}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>()V

    :cond_1
    if-nez p7, :cond_2

    new-instance p7, Lcom/android/org/conscrypt/ct/CTPolicyImpl;

    const/4 v12, 0x2

    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Lcom/android/org/conscrypt/ct/CTPolicyImpl;-><init>(Lcom/android/org/conscrypt/ct/CTLogStore;I)V

    :cond_2
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    iput-object v6, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    iput-object v9, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iput-object v11, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    iput-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    iput-object v7, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    iput-object v12, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    iput-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    iput-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blacklist:Lcom/android/org/conscrypt/CertBlacklist;

    new-instance v12, Lcom/android/org/conscrypt/ct/CTVerifier;

    move-object/from16 v0, p5

    invoke-direct {v12, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;-><init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V

    iput-object v12, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    return-void

    :cond_3
    :try_start_1
    new-instance v10, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v10}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    move-object v9, v10

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    move-object/from16 v9, p3

    invoke-static {p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-static {v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v8

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v4, v3

    goto :goto_1
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 6

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    return-object v5

    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5
.end method

.method private checkBlacklist(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blacklist:Lcom/android/org/conscrypt/CertBlacklist;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate blacklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    invoke-virtual {v1, p2, p4, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v0, p1, v1}, Lcom/android/org/conscrypt/ct/CTPolicy;->doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "Certificate chain does not conform to required transparency policy."

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            "Ljavax/net/ssl/SSLParameters;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v3

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v0, "HTTPS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v8

    invoke-interface {v8, v5, p3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "No subjectAltNames on the certificate match"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null or zero-length parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/security/cert/CertificateException;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    aget-object v9, p1, v0

    invoke-direct {p0, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/16 v22, 0x0

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v15

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/org/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v12

    const/16 v23, 0x0

    invoke-static {v12}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v23, 0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v16

    move-object/from16 v22, v16

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v23, :cond_4

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_4
    throw v22

    :cond_5
    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    aget-object v13, p1, v17

    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-static {v13}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_2
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v16

    new-instance v22, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unacceptable certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v16

    move-object/from16 v22, v16

    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v2, v15}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/TrustAnchor;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v21

    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_3
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    return-object v2

    :catch_3
    move-exception v16

    move-object/from16 v22, v16

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    if-eqz v22, :cond_b

    throw v22

    :cond_b
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "Untrusted chain"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->printCertsAtException(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v14

    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v4, "Trust anchor for certification path not found."

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v14, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v5, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v5, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, v3}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/security/cert/TrustAnchor;

    invoke-direct {v2, v0, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v2

    :cond_2
    return-object v3
.end method

.method private static getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    instance-of v7, p1, Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-eqz v7, :cond_2

    move-object v5, p1

    check-cast v5, Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getStatusResponses()Ljava/util/List;

    move-result-object v4

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    return-object v11

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "getStatusResponses"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_0

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_3
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    return-object v7

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .locals 10

    instance-of v7, p1, Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-eqz v7, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getTlsSctData()[B

    move-result-object v7

    return-object v7

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "getTlsSctData"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, [B

    if-eqz v7, :cond_1

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    instance-of v5, v0, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v5, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/security/cert/PKIXRevocationChecker;

    :cond_2
    if-nez v4, :cond_3

    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v5}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    :cond_3
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v3

    return-void
.end method

.method private static sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    new-instance v16, Ljava/lang/String;

    const-string/jumbo v17, "Untrusted chain"

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->printCertsAtException(Ljava/util/List;Ljava/lang/String;)V

    new-instance v16, Ljava/security/cert/CertificateException;

    new-instance v17, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v18, "Trust anchor for certification path not found."

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct/range {v16 .. v17}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v15}, Lcom/android/org/conscrypt/CertPinManager;->checkChainPinning(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    :cond_3
    if-nez p4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    move/from16 v16, v0

    if-nez v16, :cond_4

    if-eqz p3, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V

    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_6

    return-object v15

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V

    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/TrustAnchor;

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/security/cert/PKIXParameters;

    invoke-direct {v14, v6}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v14, v12, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    new-instance v16, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p4

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v12, v2}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v14}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x1

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_0
    move-exception v11

    new-instance v16, Ljava/security/cert/CertificateException;

    const-string/jumbo v17, "Chain validation failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    :catch_1
    move-exception v10

    new-instance v16, Ljava/security/cert/CertificateException;

    const-string/jumbo v17, "Chain validation failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    :cond_7
    return-object v15
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    move-object v6, p3

    check-cast v6, Ljavax/net/ssl/SSLSocket;

    invoke-static {v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    move-object v6, p3

    check-cast v6, Ljavax/net/ssl/SSLSocket;

    invoke-static {v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method public printCertsAtException(Ljava/util/List;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "------------------"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": ----------------------"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v17, "android.util.Log"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/Class;

    const-class v17, Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v3, v18

    const-class v17, Ljava/lang/String;

    const/16 v18, 0x1

    aput-object v17, v3, v18

    const-string/jumbo v17, "e"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "== Chain"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " == \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " Version:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " Serial Number:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v18

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " SubjectDN:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " IssuerDN:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " Get not before:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " Get not after:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " Sig ALG name:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v14

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v14}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " Signature:   "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    const/16 v17, 0x1

    aput-object v9, v4, v17

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v13

    const-string/jumbo v15, " Public key:\n"

    const-string/jumbo v11, " "

    const/4 v8, 0x0

    :goto_1
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    rem-int/lit8 v17, v8, 0x14

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "%02x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-byte v20, v13, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v17, Lcom/android/org/conscrypt/TrustManagerImpl;->TAG:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v4, v18

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :cond_2
    return-void
.end method

.method public setCTEnabledOverride(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    return-void
.end method

.method public setCTPolicy(Lcom/android/org/conscrypt/ct/CTPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    return-void
.end method

.method public setCTVerifier(Lcom/android/org/conscrypt/ct/CTVerifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    return-void
.end method
