.class public Lcom/android/server/wifi/WifiScoreReport;
.super Ljava/lang/Object;
.source "WifiScoreReport.java"


# static fields
.field private static final AGGRESSIVE_HANDOVER_PENALTY:I = 0x6

.field private static final BAD_LINKSPEED_PENALTY:I = 0x4

.field private static final BAD_RSSI_COUNT_PENALTY:I = 0x2

.field private static final GOOD_LINKSPEED_BONUS:I = 0x4

.field private static final HOME_VISIBLE_NETWORK_MAX_COUNT:I = 0x6

.field private static final LINK_STUCK_PENALTY:I = 0x2

.field private static final MAX_BAD_RSSI_COUNT:I = 0x7

.field private static final MAX_LOW_RSSI_COUNT:I = 0x1

.field private static final MAX_STUCK_LINK_COUNT:I = 0x5

.field private static final MAX_SUCCESS_RATE_OF_STUCK_LINK:I = 0x3

.field private static final MIN_SUSTAINED_LINK_STUCK_COUNT:I = 0x1

.field private static final MIN_TX_FAILURE_RATE_FOR_WORKING_LINK:D = 0.3

.field private static final SCAN_CACHE_COUNT_PENALTY:I = 0x2

.field private static final SCAN_CACHE_VISIBILITY_MS:I = 0x2ee0

.field private static final STARTING_SCORE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "WifiScoreReport"


# instance fields
.field private final mBadLinkSpeed24:I

.field private final mBadLinkSpeed5:I

.field private final mGoodLinkSpeed24:I

.field private final mGoodLinkSpeed5:I

.field private mIsHomeNetwork:Z

.field private mMultiBandScanResults:Z

.field private mReport:Ljava/lang/String;

.field private mReportValid:Z

.field private final mThresholdMinimumRssi24:I

.field private final mThresholdMinimumRssi5:I

.field private final mThresholdQualifiedRssi24:I

.field private final mThresholdQualifiedRssi5:I

.field private final mThresholdSaturatedRssi24:I

.field private final mThresholdSaturatedRssi5:I

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mVerboseLoggingEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReportValid:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdMinimumRssi5:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdQualifiedRssi5:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdSaturatedRssi5:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdMinimumRssi24:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdQualifiedRssi24:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdSaturatedRssi24:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkSpeed24:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkSpeed5:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mGoodLinkSpeed24:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mGoodLinkSpeed5:I

    iput-object p2, p0, Lcom/android/server/wifi/WifiScoreReport;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-void
.end method

.method private calculateScore(Landroid/net/wifi/WifiInfo;I)I
    .locals 10

    const/16 v5, 0x38

    iget v4, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdSaturatedRssi24:I

    iget v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkSpeed24:I

    iget v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mGoodLinkSpeed24:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiScoreReport;->mMultiBandScanResults:Z

    if-nez v6, :cond_0

    iget v4, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdSaturatedRssi5:I

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkSpeed5:I

    iget v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mGoodLinkSpeed5:I

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    if-eqz p2, :cond_2

    mul-int/lit8 v6, p2, 0x6

    sub-int/2addr v3, v6

    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiScoreReport;->mIsHomeNetwork:Z

    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, 0x5

    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iget v6, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    iget v6, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x2

    rsub-int/lit8 v5, v6, 0x38

    :cond_4
    if-ge v0, v1, :cond_9

    add-int/lit8 v5, v5, -0x4

    :cond_5
    :goto_0
    iget v6, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    if-lt v3, v4, :cond_6

    add-int/lit8 v5, v5, 0x5

    :cond_6
    const/16 v6, 0x3c

    if-le v5, v6, :cond_7

    const/16 v5, 0x3c

    :cond_7
    if-gez v5, :cond_8

    const/4 v5, 0x0

    :cond_8
    return v5

    :cond_9
    if-lt v0, v2, :cond_5

    iget-wide v6, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    add-int/lit8 v5, v5, 0x4

    goto :goto_0
.end method

.method private isHomeNetwork(Landroid/net/wifi/WifiInfo;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-eq v2, v5, :cond_1

    return v4

    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-nez v1, :cond_3

    return v4

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method private multiBandScanResults(Landroid/net/wifi/WifiInfo;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, 0x2ee0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-nez v2, :cond_2

    return v4

    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v3, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v2, v3, :cond_3

    return v4

    :cond_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v3, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v2, v3, :cond_4

    return v4

    :cond_4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/lit8 v3, v3, -0x2

    if-lt v2, v3, :cond_5

    const/4 v2, 0x1

    return v2

    :cond_5
    return v4
.end method

.method private updateScoringState(Landroid/net/wifi/WifiInfo;I)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScoreReport;->multiBandScanResults(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiScoreReport;->mMultiBandScanResults:Z

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScoreReport;->isHomeNetwork(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiScoreReport;->mIsHomeNetwork:Z

    iget v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdMinimumRssi24:I

    iget v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdQualifiedRssi24:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiScoreReport;->mMultiBandScanResults:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdMinimumRssi5:I

    iget v2, p0, Lcom/android/server/wifi/WifiScoreReport;->mThresholdQualifiedRssi5:I

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    if-eqz p2, :cond_1

    mul-int/lit8 v3, p2, 0x6

    sub-int/2addr v0, v3

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiScoreReport;->mIsHomeNetwork:Z

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x5

    :cond_2
    iget-wide v4, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_5

    iget-wide v4, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_5

    if-ge v0, v2, :cond_5

    iget v3, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    iget v3, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    :cond_3
    :goto_0
    if-ge v0, v1, :cond_6

    iget v3, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_4

    iget v3, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-wide v4, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    iget v3, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    if-lez v3, :cond_3

    iget v3, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    goto :goto_0

    :cond_6
    if-ge v0, v2, :cond_7

    const/4 v3, 0x1

    iput v3, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iget v3, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    if-lez v3, :cond_4

    iget v3, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    goto :goto_1

    :cond_7
    iput v8, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v8, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    goto :goto_1
.end method


# virtual methods
.method public calculateAndReportScore(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkAgent;ILcom/android/server/wifi/WifiMetrics;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiScoreReport;->updateScoringState(Landroid/net/wifi/WifiInfo;I)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiScoreReport;->calculateScore(Landroid/net/wifi/WifiInfo;I)I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    const/16 v0, 0x3c

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiInfo;->score:I

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiScoreReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " report new wifi score "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    :cond_3
    const-string/jumbo v1, " score=%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiScoreReport;->mReportValid:Z

    invoke-virtual {p4, v0}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiScoreCount(I)V

    return-void
.end method

.method public enableVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiScoreReport;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getLastReport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    return-object v0
.end method

.method public isLastReportValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReportValid:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReportValid:Z

    return-void
.end method
