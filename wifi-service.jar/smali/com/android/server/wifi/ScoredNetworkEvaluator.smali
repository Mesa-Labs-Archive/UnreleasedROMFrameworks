.class public Lcom/android/server/wifi/ScoredNetworkEvaluator;
.super Ljava/lang/Object;
.source "ScoredNetworkEvaluator.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ScoredNetworkEvaluator"


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkRecommendationsEnabled:Z

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/ScoredNetworkEvaluator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ScoredNetworkEvaluator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;Landroid/net/wifi/WifiNetworkScoreCache;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iput-object p4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iput-object p5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iput-object p6, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p3, p1}, Lcom/android/server/wifi/ScoredNetworkEvaluator$1;-><init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mContentObserver:Landroid/database/ContentObserver;

    const-string/jumbo v0, "network_recommendations_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p3, p1, v0, v2, v1}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ScoredNetworkEvaluator constructed. mNetworkRecommendationsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateNetworkScoreCache(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/NetworkKey;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/NetworkKey;

    iget-object v5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v5, v3}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;ZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 9
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

    iget-boolean v7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    const-string/jumbo v8, "Skipping evaluateNetworks; Network recommendations disabled."

    invoke-virtual {v7, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 v7, 0x0

    return-object v7

    :cond_0
    new-instance v5, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;-><init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->wasEphemeralNetworkDeleted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring disabled ephemeral SSID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v7, v3}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    :goto_2
    if-nez p5, :cond_4

    if-nez v6, :cond_1

    :cond_4
    if-nez v0, :cond_6

    invoke-static {v4}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->trackUntrustedCandidate(Landroid/net/wifi/ScanResult;)V

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v7, :cond_7

    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    :cond_7
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring disabled SSID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    iget v7, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, v8, :cond_9

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {p3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_3
    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v7, :cond_a

    invoke-virtual {v5, v4, v0, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->trackUntrustedCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V

    :goto_4
    if-eqz p6, :cond_1

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-interface {p6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v5, v4, v0, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->trackExternallyScoredCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_4

    :cond_b
    invoke-virtual {v5}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getCandidateConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    return-object v7
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ScoredNetworkEvaluator"

    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator;->mNetworkRecommendationsEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->updateNetworkScoreCache(Ljava/util/List;)V

    :cond_0
    return-void
.end method
