.class public abstract Lsun/security/util/AbstractAlgorithmConstraints;
.super Ljava/lang/Object;
.source "AbstractAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# instance fields
.field protected final decomposer:Lsun/security/util/AlgorithmDecomposer;


# direct methods
.method protected constructor <init>(Lsun/security/util/AlgorithmDecomposer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/util/AbstractAlgorithmConstraints;->decomposer:Lsun/security/util/AlgorithmDecomposer;

    return-void
.end method

.method static checkAlgorithm([Ljava/lang/String;Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)Z
    .locals 8

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "No algorithm name specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v2, 0x0

    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_7

    aget-object v3, p0, v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v5

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p2, p1}, Lsun/security/util/AlgorithmDecomposer;->decompose(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    return v5

    :cond_7
    const/4 v4, 0x1

    return v4
.end method

.method static getAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/16 v6, 0x22

    const/4 v5, 0x0

    new-instance v3, Lsun/security/util/AbstractAlgorithmConstraints$1;

    invoke-direct {v3, p0}, Lsun/security/util/AbstractAlgorithmConstraints$1;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-array v0, v5, [Ljava/lang/String;

    :cond_2
    return-object v0
.end method
