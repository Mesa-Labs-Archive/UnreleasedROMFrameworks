.class public Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;
.super Ljava/lang/Object;
.source "PasspointNetworkEvaluator.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final NAME:Ljava/lang/String; = "PasspointNetworkEvaluator"

.field private static mImsi:Ljava/lang/String;


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v0, "00101*"

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private createWifiConfigForProvider(Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;)Landroid/net/wifi/WifiConfiguration;
    .locals 17

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v13}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getWifiConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getANQPElements(Landroid/net/wifi/ScanResult;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_1

    sget-object v13, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    invoke-virtual {v13}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v11

    :cond_0
    if-eqz v11, :cond_1

    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "config providerFriendlyName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " replace to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v6, 0x1

    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v13}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    iput-boolean v13, v2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mImsi:Ljava/lang/String;

    invoke-static {v13, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_2

    sput-object v3, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mImsi:Ljava/lang/String;

    const/4 v5, 0x1

    const-string/jumbo v13, "Passpoint evaluateNetworks : imsi is changed, need enableNetwork"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mMatchStatus:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    sget-object v14, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    iput-boolean v13, v2, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/16 v14, 0x3f2

    invoke-virtual {v13, v2, v14}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v13

    if-nez v13, :cond_4

    const-string/jumbo v13, "Failed to add passpoint network"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    const/4 v13, 0x0

    return-object v13

    :cond_4
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v14}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getCreatorUid()I

    move-result v14

    invoke-virtual {v13, v7, v14}, Lcom/android/server/wifi/hotspot2/PasspointManager;->addOrUpdateProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "PasspointConfiguration FriendlyName updated to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v5, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_6

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string/jumbo v13, "selected PasspointConfiguration is unstable"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    const/4 v13, 0x0

    return-object v13

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x3f2

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/wifi/WifiConfigManager;->updateScanDetailForNetwork(ILcom/android/server/wifi/ScanDetail;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    return-object v13
.end method

.method private findBestNetwork(Ljava/util/List;Ljava/lang/String;Z)Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;"
        }
    .end annotation

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;

    iget-object v1, v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    iget-object v10, v8, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mMatchStatus:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v10, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getANQPElements(Landroid/net/wifi/ScanResult;)Ljava/util/Map;

    move-result-object v2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/PasspointNetworkScore;->calculateScore(ZLcom/android/server/wifi/ScanDetail;Ljava/util/Map;ZLjava/lang/StringBuffer;Z)I

    move-result v11

    if-le v11, v7, :cond_0

    move-object v6, v8

    move v7, v11

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Best Passpoint network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " provided by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mProvider:Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    return-object v6
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;ZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;ZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getHotspot20State()Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "Passpoint evaluateNetworks : Hotspot2.0 OFF "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getSavedProvidersSize()I

    move-result v19

    if-nez v19, :cond_1

    const-string/jumbo v19, "Passpoint evaluateNetworks : getSavedProvidersSize is zero "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    :cond_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string/jumbo v19, "SKT"

    sget-object v20, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v9, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const-string/jumbo v19, "T wifi zone_secure"

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    const/16 v16, 0x1

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/PasspointManager;->sweepCache()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string/jumbo v19, "SKT"

    sget-object v20, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string/jumbo v19, "T wifi zone_secure"

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string/jumbo v19, "T wifi zone"

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_5
    if-eqz v16, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[SKT] ScanDetail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " T wifi zone_secure has autoReconnect false. Skip"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v17, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[SKT] ScanDetail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " T wifi zone_secure is UnstableNetwork . Skip"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInternet()Z

    move-result v19

    if-nez v19, :cond_9

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[SKT] ScanDetail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " has internet accessibility false. Skip"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getANQPElements(Landroid/net/wifi/ScanResult;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_a

    sget-object v19, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->isCapped()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/hotspot2/PasspointManager;->forceRequestAnqp(Landroid/net/wifi/ScanResult;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[SKT] ScanDetail: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " has Wan capped. Skip and Request Anqp for update"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/hotspot2/PasspointManager;->matchProvider(Landroid/net/wifi/ScanResult;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->isSimCredential()Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v15, v0, :cond_b

    const-string/jumbo v19, "bestProvider has SimCredential, but there is no sim."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    new-instance v21, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;-><init>(Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointProvider;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;)V

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_d

    const-string/jumbo v19, "No suitable Passpoint network found"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    const/16 v19, 0x0

    return-object v19

    :cond_d
    if-nez p2, :cond_e

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p7

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->findBestNetwork(Ljava/util/List;Ljava/lang/String;Z)Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;

    move-result-object v5

    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Staying with current Passpoint network "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    iget-object v0, v5, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    iget-object v0, v5, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->updateScanDetailForNetwork(ILcom/android/server/wifi/ScanDetail;)V

    iget-object v0, v5, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v19

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->createWifiConfigForProvider(Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-object v0, v5, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator$PasspointNetworkCandidate;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v19

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Passpoint network to connect to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_10
    return-object v8
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PasspointNetworkEvaluator"

    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
