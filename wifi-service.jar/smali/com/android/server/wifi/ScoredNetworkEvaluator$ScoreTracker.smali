.class Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;
.super Ljava/lang/Object;
.source "ScoredNetworkEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScoredNetworkEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScoreTracker"
.end annotation


# static fields
.field private static final EXTERNAL_SCORED_NONE:I = 0x0

.field private static final EXTERNAL_SCORED_SAVED_NETWORK:I = 0x1

.field private static final EXTERNAL_SCORED_UNTRUSTED_NETWORK:I = 0x2


# instance fields
.field private mBestCandidateType:I

.field private mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

.field private mHighScore:I

.field private mSavedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mScanResultCandidate:Landroid/net/wifi/ScanResult;

.field final synthetic this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoredNetworkEvaluator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    const/16 v0, -0x80

    iput v0, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    return-void
.end method

.method private getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get2(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get2(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v0

    invoke-static {}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isCurrentNetwork network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method getCandidateConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, -0x1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string/jumbo v3, "ScoredNetworkEvaluator did not see any good candidates."

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get3(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    return-object v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string/jumbo v3, "existing ephemeral candidate %s network ID:%d, meteredHint=%b"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v5, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-static {v2}, Lcom/android/server/wifi/util/ScanResultUtil;->createNetworkFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v3}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get2(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/net/wifi/WifiNetworkScoreCache;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->getMeteredHint(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get3(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v4, 0x3f2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string/jumbo v3, "Failed to add ephemeral network"

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get3(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string/jumbo v3, "Failed to make ephemeral network selectable"

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get3(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-virtual {v2, v0, v3, v6}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string/jumbo v3, "new ephemeral candidate %s network ID:%d, meteredHint=%b"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v5, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get1(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Landroid/util/LocalLog;

    move-result-object v2

    const-string/jumbo v3, "new saved network candidate %s network ID:%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    invoke-static {v5}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method trackExternallyScoredCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4

    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    iput-object p2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get3(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " becomes the new externally scored saved network candidate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-wrap0(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method trackUntrustedCandidate(Landroid/net/wifi/ScanResult;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " becomes the new untrusted candidate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-wrap0(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method trackUntrustedCandidate(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4

    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mHighScore:I

    iput-object p1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mBestCandidateType:I

    iput-object p2, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->mEphemeralConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    invoke-static {v1}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-get3(Lcom/android/server/wifi/ScoredNetworkEvaluator;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    iget-object v1, p0, Lcom/android/server/wifi/ScoredNetworkEvaluator$ScoreTracker;->this$0:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " becomes the new untrusted candidate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/ScoredNetworkEvaluator;->-wrap0(Lcom/android/server/wifi/ScoredNetworkEvaluator;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
