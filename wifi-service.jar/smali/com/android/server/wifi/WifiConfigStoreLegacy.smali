.class public Lcom/android/server/wifi/WifiConfigStoreLegacy;
.super Ljava/lang/Object;
.source "WifiConfigStoreLegacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStoreLegacy$MaskedWpaSupplicantFieldSetter;,
        Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;
    }
.end annotation


# static fields
.field private static final IP_CONFIG_FILE:Ljava/io/File;

.field private static final NETWORK_HISTORY_FILE:Ljava/io/File;

.field private static final PPS_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "WifiConfigStoreLegacy"


# instance fields
.field private final mIpconfigStore:Lcom/android/server/net/IpConfigStore;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mPasspointConfigParser:Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->NETWORK_HISTORY_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi/PerProviderSubscription.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->PPS_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi/ipconfig.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->IP_CONFIG_FILE:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiNetworkHistory;Lcom/android/server/wifi/WifiNative;Lcom/android/server/net/IpConfigStore;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mLocalLog:Landroid/util/LocalLog;

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mPasspointConfigParser:Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

    return-void

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private loadFromIpConfigStore(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    sget-object v4, Lcom/android/server/wifi/WifiConfigStoreLegacy;->IP_CONFIG_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "WifiConfigStoreLegacy"

    const-string/jumbo v5, "No ip configurations found in ipconfig store"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->lookupWifiConfigurationUsingConfigKeyHash(Ljava/util/Map;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "configuration found for missing network, nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ignored, networks.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->localLog(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private loadFromNetworkHistory(Ljava/util/Map;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/wifi/WifiNetworkHistory;->readNetworkHistory(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method private loadFromPasspointConfigStore(Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v10, 0x0

    :try_start_0
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mPasspointConfigParser:Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

    sget-object v13, Lcom/android/server/wifi/WifiConfigStoreLegacy;->PPS_FILE:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseConfig(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    if-eqz v11, :cond_0

    iget-object v12, v11, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v12, :cond_0

    iget-object v12, v11, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    iget v12, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_0

    const-string/jumbo v12, "fqdn"

    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_0

    iget v12, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string/jumbo v13, "fqdn"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v10, :cond_1

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v12, "WifiConfigStoreLegacy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to read/parse Passpoint config file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    iput-object v6, v11, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFriendlyName:Ljava/lang/String;

    iput-object v12, v11, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    if-eqz v12, :cond_3

    iget-object v12, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    iget-object v13, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    array-length v13, v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    iput-object v12, v11, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    :cond_3
    iget-object v12, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    if-eqz v12, :cond_4

    iget-object v12, v11, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v13, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    :cond_4
    iget-object v12, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, v11, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v13, v9, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v12, "WifiConfigStoreLegacy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Remove incomplete Passpoint configuration: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void
.end method

.method private loadFromWpaSupplicant(Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiNative;->migrateNetworksFromSupplicant(Ljava/util/Map;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiConfigStoreLegacy"

    const-string/jumbo v1, "Failed to load wifi configurations from wpa_supplicant"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiConfigStoreLegacy"

    const-string/jumbo v1, "No wifi configurations found in wpa_supplicant"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiConfigStoreLegacy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static lookupWifiConfigurationUsingConfigKeyHash(Ljava/util/Map;I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    return-object v2

    :cond_1
    const-string/jumbo v2, "WifiConfigStoreLegacy"

    const-string/jumbo v3, "entry is null or getKey() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v4
.end method


# virtual methods
.method public areStoresDefautApRmNetworkOldVersion()Z
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/data/misc/wifi/removed_nw.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_0
    const-string/jumbo v5, "WifiConfigStoreLegacy"

    const-string/jumbo v6, "mFilePathRemovedNwInfo.exists"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :try_start_1
    const-string/jumbo v5, "version=1"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "WifiConfigStoreLegacy"

    const-string/jumbo v6, "version=1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return v8

    :catch_0
    move-exception v0

    const-string/jumbo v5, "WifiConfigStoreLegacy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "areStoresDefautApRmNetworkOldVersion removedApStream.close() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    const/4 v5, 0x1

    return v5

    :catch_1
    move-exception v0

    const-string/jumbo v5, "WifiConfigStoreLegacy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "areStoresDefautApRmNetworkOldVersion removedApStream.close() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_2
    :try_start_4
    const-string/jumbo v5, "WifiConfigStoreLegacy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "areStoresDefautApRmNetworkOldVersion "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    return v8

    :catch_3
    move-exception v0

    const-string/jumbo v5, "WifiConfigStoreLegacy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "areStoresDefautApRmNetworkOldVersion removedApStream.close() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_5
    throw v5

    :catch_4
    move-exception v0

    const-string/jumbo v6, "WifiConfigStoreLegacy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "areStoresDefautApRmNetworkOldVersion removedApStream.close() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    return v8

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method

.method public areStoresPresent()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Dump of WifiConfigStoreLegacy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public loadFromRemovedNetwork()V
    .locals 12

    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "/data/misc/wifi/removed_nw.conf"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "/data/misc/wifi/temp_nw.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v2, v4, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v8, "version=1\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->ready()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "ssid"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "network={\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "    ssid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v7

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string/jumbo v8, "WifiConfigStoreLegacy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadFromRemovedNetwork "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_5
    const-string/jumbo v8, "key_mgmt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\n    key_mgmt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n    eap=OLD_VERSION"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n}\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    move-object v6, v7

    move-object v1, v2

    :goto_3
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    throw v8

    :cond_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_8

    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_5
    move-object v6, v7

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v8, "WifiConfigStoreLegacy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadFromRemovedNetwork removedApStream.close() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v0

    const-string/jumbo v8, "WifiConfigStoreLegacy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadFromRemovedNetwork removedApStream.close() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string/jumbo v9, "WifiConfigStoreLegacy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadFromRemovedNetwork removedApStream.close() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v8

    goto/16 :goto_3

    :catchall_2
    move-exception v8

    move-object v1, v2

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public read()Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromWpaSupplicant(Ljava/util/Map;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromNetworkHistory(Ljava/util/Map;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromIpConfigStore(Ljava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromPasspointConfigStore(Ljava/util/Map;Landroid/util/SparseArray;)V

    new-instance v3, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, v1}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v3
.end method

.method public removeStores()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->removeAllNetworks()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Removing networks from wpa_supplicant failed"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->localLog(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->IP_CONFIG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->IP_CONFIG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Remove ipconfig.txt"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->localLog(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->NETWORK_HISTORY_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->NETWORK_HISTORY_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Remove networkHistory.txt "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->localLog(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->PPS_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;->PPS_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Remove PerProviderSubscription.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->localLog(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "All legacy stores removed!"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->localLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
