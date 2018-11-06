.class Lsun/security/provider/certpath/AdaptableX509CertSelector;
.super Ljava/security/cert/X509CertSelector;
.source "AdaptableX509CertSelector.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private endDate:Ljava/util/Date;

.field private serial:Ljava/math/BigInteger;

.field private ski:[B

.field private startDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method private matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    if-nez v4, :cond_0

    return v7

    :cond_0
    :try_start_0
    const-string/jumbo v4, "2.5.29.14"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AdaptableX509CertSelector.match: no subject key ID extension. Subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return v7

    :cond_2
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    :cond_3
    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AdaptableX509CertSelector.match: subject key IDs don\'t match. Expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Cert\'s: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v8

    :catch_0
    move-exception v1

    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_5

    sget-object v4, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "AdaptableX509CertSelector.match: exception in subject key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    return v8

    :cond_6
    return v7
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    :cond_1
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    :cond_2
    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_0
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v1

    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v3, :cond_3

    :try_start_1
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-nez v3, :cond_4

    return v5

    :catch_0
    move-exception v0

    return v5

    :catch_1
    move-exception v0

    return v5

    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    const-string/jumbo v1, "serial_number"

    invoke-virtual {p1, v1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SerialNumber;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    :cond_0
    return-void
.end method

.method public setSubjectKeyIdentifier([B)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    iput-object p2, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    return-void
.end method
