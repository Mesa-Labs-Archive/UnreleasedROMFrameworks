.class public final Lcom/android/org/conscrypt/CertificatePriorityComparator;
.super Ljava/lang/Object;
.source "CertificatePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_MD5:Ljava/lang/Integer;

.field private static final PRIORITY_SHA1:Ljava/lang/Integer;

.field private static final PRIORITY_SHA224:Ljava/lang/Integer;

.field private static final PRIORITY_SHA256:Ljava/lang/Integer;

.field private static final PRIORITY_SHA384:Ljava/lang/Integer;

.field private static final PRIORITY_SHA512:Ljava/lang/Integer;

.field private static final PRIORITY_UNKNOWN:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.113549.1.1.13"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.113549.1.1.12"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.113549.1.1.11"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.113549.1.1.14"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.113549.1.1.5"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.113549.1.1.4"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.10045.4.3.4"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.10045.4.3.3"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.10045.4.3.2"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.10045.4.3.1"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "1.2.840.10045.4.1"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .locals 4

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .locals 6

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Keys are not of the same type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    move-result v3

    sub-int v4, v1, v3

    return v4
.end method

.method private compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 4

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method private compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 4

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v3

    return v3
.end method

.method private getKeySize(Ljava/security/PublicKey;)I
    .locals 3

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    return v0

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported public key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 9

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eq v2, v6, :cond_1

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-eqz v3, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    return v7
.end method
