.class public Lsun/security/util/DisabledAlgorithmConstraints;
.super Lsun/security/util/AbstractAlgorithmConstraints;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/DisabledAlgorithmConstraints$Constraint;,
        Lsun/security/util/DisabledAlgorithmConstraints$Constraints;,
        Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;,
        Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;
    }
.end annotation


# static fields
.field public static final PROPERTY_CERTPATH_DISABLED_ALGS:Ljava/lang/String; = "jdk.certpath.disabledAlgorithms"

.field public static final PROPERTY_JAR_DISABLED_ALGS:Ljava/lang/String; = "jdk.jar.disabledAlgorithms"

.field public static final PROPERTY_TLS_DISABLED_ALGS:Ljava/lang/String; = "jdk.tls.disabledAlgorithms"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

.field private final disabledAlgorithms:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lsun/security/util/AlgorithmDecomposer;

    invoke-direct {v0}, Lsun/security/util/AlgorithmDecomposer;-><init>()V

    invoke-direct {p0, p1, v0}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V
    .locals 2

    invoke-direct {p0, p2}, Lsun/security/util/AbstractAlgorithmConstraints;-><init>(Lsun/security/util/AlgorithmDecomposer;)V

    invoke-static {p1}, Lsun/security/util/DisabledAlgorithmConstraints;->getAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    iget-object v1, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    return-void
.end method

.method private checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Lsun/security/util/CertConstraintParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on disabled signature algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    :cond_0
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on disabled public key algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-virtual {v0, p2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->permits(Lsun/security/util/CertConstraintParameters;)V

    return-void
.end method

.method private checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-virtual {v0, p3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->permits(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkProperty(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final permits(Ljava/util/Set;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/CertConstraintParameters;

    invoke-direct {v0, p2}, Lsun/security/util/CertConstraintParameters;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    return-void
.end method

.method public final permits(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Lsun/security/util/CertConstraintParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    return-void
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No cryptographic primitive specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    iget-object v1, p0, Lsun/security/util/DisabledAlgorithmConstraints;->decomposer:Lsun/security/util/AlgorithmDecomposer;

    invoke-static {v0, p2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkAlgorithm([Ljava/lang/String;Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)Z

    move-result v0

    return v0
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No algorithm name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method
