.class public Lcom/samsung/android/knox/keystore/KnoxKeyInfo;
.super Ljava/lang/Object;
.source "KnoxKeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final USER_ID_POS:I

.field private final mAccessorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttestationRoot:Ljava/lang/String;

.field private final mCreator:Ljava/lang/String;

.field private final mExtendedKeyUsage:[Ljava/lang/String;

.field private final mKeyInfo:Landroid/security/keystore/KeyInfo;

.field private final mKeyUsage:[Z

.field private final mKnoxCsrResponseRequired:Z

.field private final mKnoxObjectProtectionRequired:Z

.field private final mSubjectAlternativeName:[B


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyInfo;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/keystore/KeyInfo;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    const-string/jumbo v4, "u"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->USER_ID_POS:I

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyInfo:Landroid/security/keystore/KeyInfo;

    iput-boolean p2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxObjectProtectionRequired:Z

    iput-object p4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mCreator:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "accessor ids must be printable characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "administrator ids must be printable characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    iput-object p6, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyUsage:[Z

    iput-object p7, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mExtendedKeyUsage:[Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAttestationRoot:Ljava/lang/String;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxCsrResponseRequired:Z

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mSubjectAlternativeName:[B

    return-void
.end method


# virtual methods
.method public getAccessorIdentities()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    const-string/jumbo v7, "0"

    move-object v2, v4

    :goto_1
    const-string/jumbo v8, "#"

    const/4 v9, 0x2

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aget-object v2, v0, v8

    array-length v8, v0

    if-le v8, v10, :cond_1

    aget-object v6, v0, v10

    :goto_2
    new-instance v8, Lcom/samsung/android/knox/keystore/AccessorIdentity;

    invoke-direct {v8, v2, v6, v7}, Lcom/samsung/android/knox/keystore/AccessorIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v8, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->USER_ID_POS:I

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public getAccessorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAccessorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdministratorIdentities()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    const-string/jumbo v5, "0"

    move-object v1, v3

    :goto_1
    new-instance v6, Lcom/samsung/android/knox/keystore/AccessorIdentity;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v5}, Lcom/samsung/android/knox/keystore/AccessorIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->USER_ID_POS:I

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getAdministratorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAdministratorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttestationRoot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mAttestationRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedKeyUsage()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mExtendedKeyUsage:[Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyInfo()Landroid/security/keystore/KeyInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyInfo:Landroid/security/keystore/KeyInfo;

    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKeyUsage:[Z

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeName()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mSubjectAlternativeName:[B

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isKnoxCsrResponseRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxCsrResponseRequired:Z

    return v0
.end method

.method public isKnoxObjectProtectionRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;->mKnoxObjectProtectionRequired:Z

    return v0
.end method
