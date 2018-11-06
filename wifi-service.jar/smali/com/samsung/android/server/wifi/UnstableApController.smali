.class public Lcom/samsung/android/server/wifi/UnstableApController;
.super Ljava/lang/Object;
.source "UnstableApController.java"


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "WifiUnstableAp"


# instance fields
.field private mIsSimCardReady:Z

.field private mLastDeauthCount:I

.field private mLastL2ConnectedNetworkId:I

.field private mLastL2ConnectedTime:J

.field private final mUnstableAps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/UnstableApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/UnstableApController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mIsSimCardReady:Z

    iput-object p1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApController;->init()V

    return-void
.end method

.method private connectedUnstableAp(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/String;

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->forceReset(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private disconnectedWith(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0xc

    const/4 v9, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/String;

    const-string/jumbo v6, "00:00:00:00:00:00"

    invoke-direct {p1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    iget v7, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/UnstableApInfo;

    if-eqz v5, :cond_b

    invoke-virtual {v5, p3}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isMatched(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "WifiUnstableAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disconnected unstable network id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", unstable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isUnstableAp()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isUnstableAp()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, p1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->updateTime(Ljava/lang/String;)V

    if-nez v3, :cond_3

    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v7, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v10}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    const-string/jumbo v6, "WifiUnstableAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disable unstable network id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v11

    :cond_4
    invoke-virtual {v5, p1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->canAddCounter(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->addAndCheck(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, p1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->updateTime(Ljava/lang/String;)V

    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v7, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v10}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    const-string/jumbo v6, "WifiUnstableAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disable unstable network id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v11

    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isRoamAp()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/UnstableApInfo;->getBlackList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-boolean v6, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "WifiUnstableAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "add unstable bssid-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to blacklist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    const/16 v7, 0x11

    invoke-virtual {v6, p1, v9, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;ZI)Z

    goto :goto_0

    :cond_8
    sget-boolean v6, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "WifiUnstableAp"

    const-string/jumbo v7, "disconnected unstable network - reset"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v5, p1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->reset(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->addAndCheck(Ljava/lang/String;I)Z

    :cond_a
    :goto_1
    return v9

    :cond_b
    sget-boolean v6, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v6, :cond_c

    const-string/jumbo v6, "WifiUnstableAp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disconnected unstable network - add new item id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v5, Lcom/samsung/android/server/wifi/UnstableApInfo;

    invoke-direct {v5, p3, p1, p2}, Lcom/samsung/android/server/wifi/UnstableApInfo;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->addAndCheck(Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    iget v7, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    iget v7, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    iget v7, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static isKoreaVendorAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SKT"

    sget-object v1, Lcom/samsung/android/server/wifi/UnstableApController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LGT"

    sget-object v1, Lcom/samsung/android/server/wifi/UnstableApController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KTT"

    sget-object v1, Lcom/samsung/android/server/wifi/UnstableApController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isVendorPasspointAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkAndUpdateUnstableAp(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mIsSimCardReady:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiUnstableAp"

    const-string/jumbo v1, "SIM card is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p3, :cond_2

    sget-boolean v0, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiUnstableAp"

    const-string/jumbo v1, "disconnected unstable network - do not add (config is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    iget-object v0, p3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiUnstableAp"

    const-string/jumbo v1, "disconnected unstable network - do not add (it\'s samsung mobile hotspot)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    iget-object v0, p3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Lcom/samsung/android/server/wifi/UnstableApController;->isKoreaVendorAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Lcom/samsung/android/server/wifi/UnstableApController;->isVendorPasspointAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/UnstableApController;->disconnectedWith(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "WifiUnstableAp"

    const-string/jumbo v1, "disconnected unstable network - do not add (others reason)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2
.end method

.method public checkAndUpdateUnstableApAuthFail(ILjava/lang/String;I)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/server/wifi/UnstableApController;->isKoreaVendorAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/UnstableApController;->isVendorPasspointAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3, v0}, Lcom/samsung/android/server/wifi/UnstableApController;->checkAndUpdateUnstableAp(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public checkDeauthAttack(ILjava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastL2ConnectedTime:J

    sub-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastDeauthCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastDeauthCount:I

    const-string/jumbo v1, "WifiUnstableAp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detecting deauth attack, counter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastDeauthCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastDeauthCount:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, v0}, Lcom/samsung/android/server/wifi/UnstableApController;->checkAndUpdateUnstableAp(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiUnstableAp"

    const-string/jumbo v4, "can\'t get Wi-Fi config or EAP secured AP, init counter"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v8, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastDeauthCount:I

    :cond_2
    :goto_0
    return v8

    :cond_3
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iput v8, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastDeauthCount:I

    goto :goto_0
.end method

.method public dump()Ljava/lang/String;
    .locals 7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UnstableAps "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/UnstableApInfo;

    if-eqz v3, :cond_0

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " - unstable item netid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", details:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApController;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public isUnstableAp(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/UnstableApInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isUnstableAp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->canEnable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    return v5
.end method

.method public isUnstableApReason(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "WifiUnstableAp"

    const-string/jumbo v1, "disconnected reason : beacon loss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v0, 0xc1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    return v2

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    return v2

    :cond_7
    const/16 v0, 0xd

    if-ne p1, v0, :cond_8

    return v2

    :cond_8
    const/16 v0, 0xe

    if-ne p1, v0, :cond_9

    return v2

    :cond_9
    const/16 v0, 0xf

    if-ne p1, v0, :cond_a

    return v2

    :cond_a
    const/16 v0, 0x10

    if-ne p1, v0, :cond_b

    return v2

    :cond_b
    const/16 v0, 0x11

    if-ne p1, v0, :cond_c

    return v2

    :cond_c
    const/16 v0, 0x12

    if-ne p1, v0, :cond_d

    return v2

    :cond_d
    const/16 v0, 0x13

    if-ne p1, v0, :cond_e

    return v2

    :cond_e
    const/16 v0, 0x14

    if-ne p1, v0, :cond_f

    return v2

    :cond_f
    const/16 v0, 0x15

    if-ne p1, v0, :cond_10

    return v2

    :cond_10
    const/16 v0, 0x16

    if-ne p1, v0, :cond_11

    return v2

    :cond_11
    const/16 v0, 0x22

    if-ne p1, v0, :cond_12

    return v2

    :cond_12
    return v1
.end method

.method public restoreAll()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/UnstableApInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isUnstableAp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->canEnable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/16 v4, 0xc

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saveL2ConnectedTime(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastL2ConnectedNetworkId:I

    if-eq p1, v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/server/wifi/UnstableApController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiUnstableAp"

    const-string/jumbo v1, "reset deauth counter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastDeauthCount:I

    iput p1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastL2ConnectedNetworkId:I

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mLastL2ConnectedTime:J

    return-void
.end method

.method public setSimCardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mIsSimCardReady:Z

    return-void
.end method

.method public verifyAll(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mUnstableAps:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/UnstableApInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isUnstableAp()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/UnstableApInfo;->canEnable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, p1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->checkRssiAndReenable(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-virtual {v4, v8}, Lcom/samsung/android/server/wifi/UnstableApInfo;->reset(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WifiUnstableAp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reenable unstable network id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApController;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    goto :goto_0

    :cond_2
    return-void
.end method
