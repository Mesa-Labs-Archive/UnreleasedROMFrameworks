.class Lsun/security/util/DisabledAlgorithmConstraints$Constraints;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraints"
.end annotation


# static fields
.field private static final keySizePattern:Ljava/util/regex/Pattern;


# instance fields
.field private constraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "keySize\\s*(<=|<|==|!=|>|>=)\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move v12, v10

    :goto_0
    if-ge v12, v13, :cond_c

    aget-object v3, p1, v12

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Constraints: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/AlgorithmDecomposer;->hashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x0

    array-length v15, v14

    move v11, v10

    :goto_2
    if-ge v11, v15, :cond_0

    aget-object v4, v14, v11

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Constraints set to keySize: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    move-result-object v10

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v2, v1, v10, v0}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Ljava/lang/String;Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;I)V

    :cond_4
    :goto_3
    if-nez v6, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v16

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    move-object v6, v2

    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v10, v11, v14}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v10, "jdkCA"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    const-string/jumbo v16, "Constraints set to jdkCA."

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_9
    if-eqz v5, :cond_a

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Only one jdkCA entry allowed in property. Constraint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    new-instance v2, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;

    invoke-direct {v2, v1}, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    iput-object v2, v6, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    goto :goto_4

    :cond_c
    return-void
.end method

.method private getConstraints(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public permits(Lsun/security/util/CertConstraintParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Constraints.permits(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/security/util/AlgorithmDecomposer;->decomposeOneHash(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v4, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public permits(Ljava/security/Key;)Z
    .locals 6

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keySizeConstraint: failed key constraint check "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    return v3

    :cond_3
    return v4
.end method
