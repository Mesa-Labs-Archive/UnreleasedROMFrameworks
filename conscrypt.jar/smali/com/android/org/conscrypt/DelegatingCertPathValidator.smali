.class public final Lcom/android/org/conscrypt/DelegatingCertPathValidator;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "DelegatingCertPathValidator.java"


# instance fields
.field private final mDelegate:Lsun/security/provider/certpath/PKIXCertPathValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    new-instance v0, Lsun/security/provider/certpath/PKIXCertPathValidator;

    invoke-direct {v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/DelegatingCertPathValidator;->mDelegate:Lsun/security/provider/certpath/PKIXCertPathValidator;

    return-void
.end method


# virtual methods
.method public engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingCertPathValidator;->mDelegate:Lsun/security/provider/certpath/PKIXCertPathValidator;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIXCertPathValidator;->engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    return-object v0
.end method

.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v1, 0x1

    instance-of v0, p2, Ljava/security/cert/PKIXParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "inappropriate params, must be an instance of PKIXParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/EdmPolicyUtil;->isChainTrustedByMdm(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "A certificate from chain is not trusted by MDM policy"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/security/cert/PKIXParameters;

    invoke-static {v0}, Lcom/android/org/conscrypt/EdmPolicyUtil;->setRevocationChecker(Ljava/security/cert/PKIXParameters;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/DelegatingCertPathValidator;->mDelegate:Lsun/security/provider/certpath/PKIXCertPathValidator;

    invoke-virtual {v0, p1, p2}, Lsun/security/provider/certpath/PKIXCertPathValidator;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CertPathValidator failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CertPathValidator"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/security/mdf/MdfUtils;->logMdf(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateRevokedException;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/org/conscrypt/EdmPolicyUtil;->myPid()I

    move-result v3

    const-string/jumbo v4, "conscrypt"

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/EdmPolicyUtil;->logPrivilegedAuditEvent(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v6
.end method
