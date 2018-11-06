.class Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.super Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraint"
.end annotation


# static fields
.field private static final synthetic -sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I


# instance fields
.field private maxSize:I

.field private minSize:I

.field private prohibitedSize:I


# direct methods
.method private static synthetic -getsun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->values()[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;I)V
    .locals 5

    const/4 v4, -0x1

    const v3, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints$Constraint;)V

    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    iput-object p1, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-getsun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    :goto_0
    return-void

    :pswitch_0
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    goto :goto_0

    :pswitch_1
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_2
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_4
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_5
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    :cond_0
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private permitsImpl(Ljava/security/Key;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-lez v0, :cond_4

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    if-lt v0, v3, :cond_3

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    if-gt v0, v3, :cond_3

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    if-eq v3, v0, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public permits(Lsun/security/util/CertConstraintParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Algorithm constraints check failed on keysize limits"

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, -0x1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    :cond_1
    return-void
.end method

.method public permits(Ljava/security/Key;)Z
    .locals 3

    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeySizeConstraints.permits(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method
