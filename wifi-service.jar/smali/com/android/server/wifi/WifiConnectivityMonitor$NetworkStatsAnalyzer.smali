.class Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;
.super Landroid/os/Handler;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsAnalyzer"
.end annotation


# static fields
.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final GOOD_RX_VALID_DURATION:I = 0x493e0

.field private static final LEAST_AGGRESSIVE_MODE_HIGH_THRESHOLD_INTERVAL:I = 0x493e0

.field private static final LEAST_AGGRESSIVE_MODE_QC_INTERVAL:I = 0x4e20

.field private static final MAX_OPTION_TARGET_RSSI_DELTA:I = 0x5

.field private static final NETSTATS_INIT_DELAY_TIME:I = 0x4e20

.field private static final OPTION_RSSI_INCREMENT_INTERVAL:I = 0xea60

.field private static final RSSI_AVERAGE_WINDOW_SIZE:I = 0x3

.field private static final RSSI_THRESHOLD_LOW_HIGH_DELTA:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.NetworkStatsAnalyzer"


# instance fields
.field private mAggressiveModeQCTriggerTime:J

.field private mAggressiveModeThresholdUpdateTime:J

.field private mCumulativePoorRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRxStats:I

.field private mDnsInterrupted:Z

.field private mDnsQueried:Z

.field private mGoodRxRate:I

.field private mGoodRxRssi:I

.field private mGoodRxTime:J

.field private mLastDnsCheckTime:J

.field private mLastNeedCheckByPoorRxTime:J

.field private mLastRssi:I

.field private mMaybeUseStreaming:I

.field private mPollingStarted:Z

.field private mPublicDnsCheckProcess:Z

.field private mQCCancelledByScanOrDhcp:Z

.field private mQcSuccessCountAtCurrentThreshold:I

.field private mRssiAverageWindow:[I

.field private mRssiIndex:I

.field private mRxBytes:J

.field private mRxHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxPackets:J

.field private mSYNPacketOnly:Z

.field private mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

.field private mSkipRemainingDnsResults:Z

.field private mStayingLowMCS:I

.field private mTxBytes:J

.field private mTxPackets:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

.field private triggeredByAggressiveMode:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;)Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPollingStarted:Z

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxPackets:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxPackets:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxBytes:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxBytes:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxTime:J

    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCurrentRxStats:I

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsInterrupted:Z

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRssiAverageWindow:[I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRssiIndex:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mStayingLowMCS:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastRssi:I

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    const-string/jumbo v1, "WifiConnectivityMonitor.SingDnsChecker"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    const-wide/16 v0, 0x4e20

    const v2, 0x2100f

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method checkPublicDns()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set73(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->isDnsCheckOngoing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v1, "[checkPublicDns] Do not start new Public DNS check. DNS check is ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2710

    const/4 v4, 0x0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 59

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore msg id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap6(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPollingStarted:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPollingStarted:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap26(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastRssi:I

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPollingStarted : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPollingStarted:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPollingStarted:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get34(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    if-ne v15, v4, :cond_3

    :cond_2
    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "currentBssid is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->removeMessages(I)V

    const v4, 0x21034

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v49

    const/16 v4, -0x5a

    move/from16 v0, v49

    if-ge v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, -0x7f

    move/from16 v0, v49

    if-ne v0, v4, :cond_5

    :cond_4
    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "already disconnected : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->removeMessages(I)V

    const v4, 0x21034

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    const/16 v4, -0x5f

    move/from16 v0, v49

    if-ge v0, v4, :cond_6

    const/16 v49, -0x5f

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastRssi:I

    add-int v4, v4, v49

    div-int/lit8 v32, v4, 0x2

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastRssi:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rssi : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "linkspeed : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v29, 0x0

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    const/4 v5, 0x6

    if-gt v4, v5, :cond_1b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mStayingLowMCS:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mStayingLowMCS:I

    const/16 v29, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastRssi:I

    const/16 v5, -0x4b

    if-ge v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    :goto_2
    const/16 v29, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v4, v36, v4

    const-wide/32 v10, 0x493e0

    cmp-long v4, v4, v10

    if-gez v4, :cond_a

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-ge v4, v5, :cond_1d

    :cond_a
    :goto_3
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxPackets:J

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxPackets:J

    move-wide/from16 v40, v0

    const-string/jumbo v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxPackets:J

    const-string/jumbo v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxPackets:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxPackets:J

    sub-long v16, v4, v40

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxPackets:J

    sub-long v20, v4, v46

    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCurrentRxStats:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "diffRx : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "diffTx : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxBytes:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v42, v0

    const-string/jumbo v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxBytes:J

    const-string/jumbo v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxBytes:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxBytes:J

    sub-long v18, v4, v42

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mTxBytes:J

    sub-long v22, v4, v44

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "diffRxBytes : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "diffTxBytes : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_1e

    div-long v4, v18, v16

    :goto_4
    long-to-int v0, v4

    move/from16 v52, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_1f

    div-long v4, v22, v20

    :goto_5
    long-to-int v0, v4

    move/from16 v56, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rxBytesPerPacket : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "txBytesPerPacket : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get76(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap22(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_12
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    long-to-int v7, v0

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x596

    move/from16 v0, v52

    if-le v0, v4, :cond_20

    const/16 v30, 0x1

    :goto_6
    move/from16 v0, v32

    move-wide/from16 v1, v18

    move/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->updateMaxThroughput(IJZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    if-nez v30, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v10, v4

    cmp-long v4, v18, v10

    if-ltz v4, :cond_21

    const/4 v4, 0x1

    :goto_7
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set33(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mInAggGoodStateNow : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->updateGoodRssi(I)V

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get51(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get52(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "Start Rechecking Link Quality - Previous QC cancelled because DHCP session) and QC overlapped."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x2b

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap40(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    :cond_17
    :goto_8
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMaybeUseStreaming : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get52(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get51(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_24

    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mStayingLowMCS:I

    :cond_1a
    :goto_9
    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->removeMessages(I)V

    const-wide/16 v4, 0x3e8

    const v7, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "Do nothing in AGG good state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mStayingLowMCS:I

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastRssi:I

    const/16 v5, -0x53

    if-ge v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    goto/16 :goto_2

    :cond_1d
    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-ne v4, v5, :cond_b

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRssi:I

    add-int/lit8 v5, v5, -0x5

    if-ge v4, v5, :cond_b

    goto/16 :goto_3

    :cond_1e
    const-wide/16 v4, 0x0

    goto/16 :goto_4

    :cond_1f
    const-wide/16 v4, 0x0

    goto/16 :goto_5

    :cond_20
    const/16 v30, 0x0

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    mul-int/lit8 v4, v4, 0x14

    int-to-long v10, v4

    cmp-long v4, v18, v10

    if-ltz v4, :cond_22

    const/4 v4, 0x1

    goto/16 :goto_7

    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestQualityCheck()V

    goto/16 :goto_8

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v38

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    if-nez v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    if-lez v38, :cond_2a

    :cond_25
    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "waiting dns responses or the quality result now!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/16 v53, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/16 v53, 0x1

    :cond_27
    :goto_a
    if-eqz v53, :cond_1a

    if-lez v38, :cond_29

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Good Rx!, don\'t need to keep evaluating quality! - id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    mul-int/lit8 v55, v4, 0x2

    :goto_b
    move/from16 v0, v55

    int-to-long v4, v0

    cmp-long v4, v18, v4

    if-lez v4, :cond_30

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v48, v0

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    const v5, 0x21026

    const/4 v7, -0x1

    move/from16 v0, v48

    invoke-static {v4, v5, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsInterrupted:Z

    goto/16 :goto_9

    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    if-gtz v4, :cond_25

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    if-eqz v30, :cond_2c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    :cond_2c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v36, v4

    const-wide/16 v10, 0x1b58

    cmp-long v4, v4, v10

    if-lez v4, :cond_1a

    const-wide/16 v4, 0x1b58

    sub-long v4, v36, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    goto/16 :goto_9

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxPacketsBase:I

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-ltz v4, :cond_2e

    const/16 v4, 0x1f4

    move/from16 v0, v52

    if-le v0, v4, :cond_2e

    const/16 v53, 0x1

    goto/16 :goto_a

    :cond_2e
    const-wide/32 v4, 0x186a0

    cmp-long v4, v22, v4

    if-ltz v4, :cond_27

    const/16 v53, 0x1

    goto/16 :goto_a

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    move/from16 v55, v0

    goto/16 :goto_b

    :cond_30
    move/from16 v48, v55

    goto/16 :goto_c

    :cond_31
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-gtz v4, :cond_32

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_34

    :cond_32
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v10, v36, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_39

    const/16 v4, 0x7530

    :goto_d
    int-to-long v4, v4

    cmp-long v4, v10, v4

    if-lez v4, :cond_34

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_33

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PERIODIC DNS CHECK TRIGGER (SIMPLE CONNECTION TEST) - Last DNS check was "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v10, v36, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " seconds ago."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x2c

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    :cond_34
    const-wide/16 v4, 0x2

    cmp-long v4, v16, v4

    if-gtz v4, :cond_35

    const-wide/16 v4, 0xa

    cmp-long v4, v20, v4

    if-ltz v4, :cond_35

    const/16 v4, 0x3e8

    move/from16 v0, v56

    if-ge v0, v4, :cond_35

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "pull out the line???"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1f

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mNoRxPacketsLimit:I

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-lez v4, :cond_3b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    sub-long v4, v36, v4

    const-wide/16 v10, 0x7530

    cmp-long v4, v4, v10

    if-lez v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x56f4

    int-to-long v4, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxPacketsBase:I

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-gez v4, :cond_3a

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_3a

    const/16 v4, -0x46

    move/from16 v0, v32

    if-ge v0, v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-wide/from16 v0, v16

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    const/16 v4, 0x38

    move/from16 v0, v56

    if-ge v4, v0, :cond_37

    const/16 v4, 0x49

    move/from16 v0, v56

    if-ge v0, v4, :cond_37

    const-wide/16 v4, 0x64

    mul-long v4, v4, v20

    div-long v4, v4, v16

    long-to-int v0, v4

    move/from16 v57, v0

    const/16 v4, 0x5a

    move/from16 v0, v57

    if-ge v4, v0, :cond_37

    const/16 v4, 0x6e

    move/from16 v0, v57

    if-ge v0, v4, :cond_37

    add-int/lit8 v4, v56, -0xa

    move/from16 v0, v52

    if-ge v4, v0, :cond_37

    move/from16 v0, v52

    move/from16 v1, v56

    if-gt v0, v1, :cond_37

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_36

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "DNS queries and abnormal responses"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x20

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    :cond_37
    :goto_f
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_38

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCumulativePoorRx.size : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4a

    const/16 v54, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_10
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v50

    add-int v54, v54, v50

    goto :goto_10

    :cond_39
    const v4, 0xea60

    goto/16 :goto_d

    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_e

    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    if-eqz v4, :cond_41

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "No [SYN,ACK] or No subsequent transaction"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_40

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "suspicious No Rx state but staying in good Rx state now"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x21

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    :cond_3e
    :goto_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    :goto_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_37

    if-eqz v29, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_37

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "could be in No service state during streaming!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x23

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    goto/16 :goto_f

    :cond_40
    if-eqz v29, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x22

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v33, 0x1

    goto :goto_11

    :cond_41
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_43

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-nez v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_12

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    move-wide/from16 v0, v16

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_12

    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPoorRxPacketsLimit:I

    mul-int/lit8 v4, v4, 0x3

    move/from16 v0, v54

    if-ge v0, v4, :cond_5b

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    if-eqz v29, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_45

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x24

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    :cond_45
    const/16 v28, 0x0

    :goto_13
    const/4 v4, 0x3

    move/from16 v0, v28

    if-ge v0, v4, :cond_47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxPacketsBase:I

    if-lt v4, v5, :cond_56

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_46

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "It\'s hard to say poor rx"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    const/16 v34, 0x0

    :cond_47
    if-eqz v34, :cond_5a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxTime:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_57

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_48

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "suspicious Poor Rx state but staying in good Rx state now"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x25

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    :cond_49
    const/16 v34, 0x0

    :cond_4a
    :goto_14
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v36, v4

    const-wide/16 v10, 0x5dc

    cmp-long v4, v4, v10

    if-lez v4, :cond_5c

    const-wide/16 v4, 0x2

    cmp-long v4, v20, v4

    if-ltz v4, :cond_5c

    const/16 v4, 0x3b

    move/from16 v0, v56

    if-gt v4, v0, :cond_5c

    const/16 v4, 0x3e

    move/from16 v0, v56

    if-gt v0, v4, :cond_5c

    cmp-long v4, v18, v22

    if-lez v4, :cond_4b

    const/16 v4, 0x1f4

    move/from16 v0, v52

    if-ge v0, v4, :cond_5c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1cfc

    int-to-long v4, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_5c

    :cond_4b
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "SYN packets might be transmitted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPoorRxPacketsLimit:I

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-lez v4, :cond_5d

    if-eqz v30, :cond_5d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    add-int/lit8 v4, v4, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v4, 0x5

    move/from16 v0, v39

    if-lt v0, v4, :cond_4e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    if-nez v4, :cond_4e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "need to check if there are problems on streaming service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-eqz v29, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x27

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    :cond_4e
    if-nez v34, :cond_4f

    if-eqz v33, :cond_51

    :cond_4f
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_50

    const/16 v31, 0x1

    :cond_50
    :goto_17
    if-eqz v31, :cond_51

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v36, v4

    const-wide/16 v10, 0x4e20

    cmp-long v4, v4, v10

    if-ltz v4, :cond_51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-wide/from16 v0, v36

    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set49(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestQualityCheck()V

    :cond_51
    :goto_18
    if-eqz v35, :cond_1a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v36, v4

    const-wide/16 v10, 0x4e20

    cmp-long v4, v4, v10

    if-ltz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x2710

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_52

    const/16 v6, 0x1388

    :cond_52
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_53

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "www.qq.com"

    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get87(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v7

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_54

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "DNS List is empty, need to check quality"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_60

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap40(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    :cond_55
    :goto_19
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    goto/16 :goto_9

    :cond_56
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_13

    :cond_57
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_58

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "Cumulative Rx is in poor status!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4a

    const/16 v34, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_59

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "check dns in poor rx status of AGG"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x26

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const/16 v35, 0x1

    goto/16 :goto_14

    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_14

    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_14

    :cond_5c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    goto/16 :goto_15

    :cond_5d
    const/4 v4, 0x0

    goto/16 :goto_16

    :cond_5e
    const/16 v31, 0x1

    goto/16 :goto_17

    :cond_5f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap40(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_18

    :cond_60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestQualityCheck()V

    goto/16 :goto_19

    :cond_61
    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get6(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v4

    move/from16 v0, v32

    if-gt v0, v4, :cond_69

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v4, v22, v4

    if-gez v4, :cond_67

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get8(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)[J

    move-result-object v4

    move/from16 v0, v32

    neg-int v5, v0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    div-int/lit8 v7, v7, 0x2

    int-to-long v10, v7

    cmp-long v4, v4, v10

    if-gez v4, :cond_67

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v4

    if-eqz v4, :cond_66

    const/16 v4, -0x4b

    move/from16 v0, v32

    if-gt v0, v4, :cond_66

    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get98(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set81(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_63

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mStayingPoorRssi : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get98(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mStayingLowMCS:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "St lo rt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_64

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "Staying 3 sec under 6Mbps in streaming state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "Staying 3 sec under 6Mbps"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x28

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set81(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_66
    const/16 v4, -0x50

    move/from16 v0, v32

    if-le v0, v4, :cond_62

    :cond_67
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_68

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "reset poor rssi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set81(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get6(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-static {v15, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set4(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I

    goto :goto_1a

    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set81(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_1a

    :sswitch_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPollingStarted:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set73(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->removeMessages(I)V

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsInterrupted:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->resetAggressiveModeParams()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mStayingLowMCS:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set33(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->resetAggressiveModeParams()V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_6a

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v7, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->checkDnsResult(III)I

    move-result v24

    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_6b

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_6d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set73(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :goto_1b
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPublicDnsAvailable : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get87(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set73(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto :goto_1b

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v7, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->checkDnsResult(III)I

    move-result v25

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-eqz v4, :cond_71

    const/4 v4, 0x2

    move/from16 v0, v25

    if-eq v0, v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_6f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set73(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :goto_1c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPublicDnsAvailable : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get87(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    :cond_6f
    const/4 v4, 0x4

    move/from16 v0, v25

    if-ne v0, v4, :cond_70

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget-object v13, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v11, 0x2710

    const/4 v12, 0x1

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set73(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto :goto_1c

    :cond_71
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_72

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[DNS_PING_RESULT] skip : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    if-nez v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v25

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsInterrupted:Z

    if-eqz v4, :cond_73

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsInterrupted:Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " - This DNS query is interrupted."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_73
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get51(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_74

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_74

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get52(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_75

    :cond_74
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " - This DNS query is interrupted by DHCP session or Scanning."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_75
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_76

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    goto/16 :goto_0

    :cond_76
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_77

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "single DNS Checking FAILURE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-wide/from16 v0, v36

    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set49(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_79

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_78

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v5, "But, do not check the quality in AGG good rx state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    goto/16 :goto_0

    :cond_79
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x2d

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap40(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :cond_7a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestQualityCheck()V

    goto/16 :goto_0

    :sswitch_8
    const v4, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->removeMessages(I)V

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_7c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mPollingStarted:Z

    if-nez v4, :cond_7b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    if-eqz v4, :cond_7c

    :cond_7b
    const v4, 0x21034

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7c
    :sswitch_a
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsQueried:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_7d

    const-string/jumbo v4, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] DNS query ongoing. -> Pass the next result"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mDnsInterrupted:Z

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2100f -> :sswitch_1
        0x21023 -> :sswitch_0
        0x21033 -> :sswitch_2
        0x21034 -> :sswitch_4
        0x21035 -> :sswitch_3
        0x21036 -> :sswitch_5
        0x21037 -> :sswitch_b
        0x21038 -> :sswitch_c
        0x2103d -> :sswitch_9
        0x2103e -> :sswitch_8
        0x21043 -> :sswitch_a
        0x21044 -> :sswitch_a
        0x21045 -> :sswitch_a
        0x21046 -> :sswitch_9
        0x21049 -> :sswitch_a
        0x2104a -> :sswitch_a
        0x86000 -> :sswitch_7
        0x86005 -> :sswitch_6
    .end sparse-switch
.end method

.method resetAggressiveModeParams()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    return-void
.end method

.method restartQCCancelledByScanOrDhcp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    return-void
.end method

.method setGoodRxStateNow(J)V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxTime:J

    const/16 v1, -0xc8

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v2, "lose Good Rx status."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRssi:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    :cond_3
    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxTime:J

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const-string/jumbo v2, "obtain Good Rx status [rssi : %ddbm, rate : %dMbps]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->mGoodRxRssi:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    if-le v1, v2, :cond_3

    goto :goto_0
.end method
