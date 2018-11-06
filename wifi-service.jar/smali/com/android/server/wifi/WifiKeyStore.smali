.class public Lcom/android/server/wifi/WifiKeyStore;
.super Ljava/lang/Object;
.source "WifiKeyStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiKeyStore"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method constructor <init>(Landroid/security/KeyStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    iput-object p1, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiKeyStore;->isHardwareBackedKey(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method

.method private installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 23

    const/4 v15, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "USRPKEY_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "USRCERT_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "WAPIAS_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "WAPIUSR_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v0, v8

    move/from16 v19, v0

    if-eqz v19, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiKeyStore;->isHardwareBackedKey(Ljava/security/Key;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string/jumbo v19, "WifiKeyStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "importing keys "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in hardware backed store"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    const/16 v20, 0x3f2

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v13, v1, v2}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v15

    if-nez v15, :cond_2

    return v15

    :cond_1
    const-string/jumbo v19, "WifiKeyStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "importing keys "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in software backed store"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/android/server/wifi/WifiKeyStore;->putCertsInKeyStore(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    const/16 v20, 0x3f2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    return v15

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v7

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v6, 0x0

    if-eqz v7, :cond_9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_9

    array-length v0, v7

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v5, p3

    :goto_2
    invoke-interface {v12, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "CACERT_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aget-object v20, v7, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    const/16 v20, 0x3f2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    const/16 v20, 0x3f2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "CACERT_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3f2

    invoke-virtual/range {v19 .. v21}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    const-string/jumbo v19, "%s_%d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p3, v20, v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_7
    return v15

    :cond_8
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "CACERT_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3f2

    invoke-virtual/range {v19 .. v21}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    goto :goto_4

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    const/16 v20, 0x3f2

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_b
    return v15

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    const/16 v20, 0x3f2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_d
    return v15

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_f

    invoke-virtual/range {p2 .. p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_10

    invoke-virtual/range {p2 .. p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiASCertificateAlias(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->resetWapiAsCertificate()V

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_11

    invoke-virtual/range {p2 .. p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    :cond_11
    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    :cond_12
    return v15
.end method

.method private static isHardwareBackedKey(Ljava/security/Key;)Z
    .locals 1

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiKeyStore;->putCertsInKeyStore(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

.method public putCertsInKeyStore(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiKeyStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " certificate(s) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in keystore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v4, 0x3f2

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v0, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v2

    return v6

    :catch_1
    move-exception v1

    return v6
.end method

.method public putKeyInKeyStore(Ljava/lang/String;Ljava/security/Key;)Z
    .locals 4

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v2, 0x3f2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v1

    return v1
.end method

.method public removeEntryFromKeyStore(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 11

    const/16 v10, 0x3f2

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WifiKeyStore"

    const-string/jumbo v6, "removing client private key and user cert"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    array-length v6, v0

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WifiKeyStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removing CA cert: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "WifiKeyStore"

    const-string/jumbo v6, "removing WAPI AS cert"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WAPIAS_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiKeyStore;->mVerboseLoggingEnabled:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "WifiKeyStore"

    const-string/jumbo v6, "removing WAPI User cert"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WAPIUSR_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_8
    return-void
.end method

.method public updateNetworkKeys(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v1}, Lcom/android/server/wifi/WifiKeyStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :cond_0
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/wifi/WifiKeyStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "WifiKeyStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": failed to install keys"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiKeyStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " invalid config for key installation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 v3, 0x1

    return v3
.end method
