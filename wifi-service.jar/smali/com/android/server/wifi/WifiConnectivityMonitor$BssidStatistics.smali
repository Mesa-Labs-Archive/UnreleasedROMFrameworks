.class Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mDnsAvailable:Z

.field public mEnhancedTargetRssi:I

.field private mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastGoodRxRssi:I

.field private mLastPoorReason:I

.field private mLastPoorRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mMaxStreamTP:[J

.field private mMaxThroughput:[J

.field private mRssiBase:I

.field private netId:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorReason:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->netId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mDnsAvailable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorReason:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V
    .locals 10

    const/16 v7, -0xc8

    const-wide/16 v8, 0x0

    const/16 v6, 0x64

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    iput-object p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssid:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->netId:I

    const/16 v1, -0x69

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    const/16 v1, 0x3d

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntriesSize:I

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v6, [J

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    new-array v1, v6, [J

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    aput-wide v8, v1, v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    aput-wide v8, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    iput-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    iput v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorReason:I

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mDnsAvailable:Z

    return-void
.end method

.method private findAGGRssiTarget(III)I
    .locals 12

    const/16 v11, -0x2d

    const/16 v10, -0x63

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_1

    const/16 v5, -0x64

    if-le v1, v5, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "W["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    neg-int v8, v1

    aget-wide v8, v7, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "S["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    neg-int v8, v1

    aget-wide v8, v7, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt p1, v11, :cond_2

    return p1

    :cond_2
    if-le p2, v11, :cond_3

    const/16 p2, -0x2d

    :cond_3
    if-ge p1, v10, :cond_4

    const/16 p1, -0x63

    :cond_4
    add-int/lit8 v4, p1, 0x2

    mul-int/lit8 v3, p3, 0xa

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v5

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    sub-int/2addr p2, v5

    if-ge p1, p2, :cond_a

    const/4 v0, 0x1

    :goto_1
    move v1, p1

    :goto_2
    if-eq v1, p2, :cond_9

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    add-int v2, v5, v1

    if-ge v2, v10, :cond_5

    const/16 v2, -0x63

    :cond_5
    if-lez v2, :cond_6

    const/4 v2, 0x0

    :cond_6
    int-to-long v6, p3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    neg-int v8, v2

    aget-wide v8, v5, v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    int-to-long v6, v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    neg-int v8, v2

    aget-wide v8, v5, v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_b

    :cond_7
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found max TP RSSI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v4, v2

    :cond_9
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Scan target found: rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " threshold="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " maxTP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    neg-int v8, v4

    aget-wide v8, v7, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " strema threshold="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " maxTP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    neg-int v8, v4

    aget-wide v8, v7, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v4

    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_b
    add-int/2addr v1, v0

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Scan target found: rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 19

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    const/16 v12, -0xc8

    if-ne v11, v12, :cond_0

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v12, "Scan target found: initial rssi=-90"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, -0x5a

    return v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v11

    iget v11, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->findAGGRssiTarget(III)I

    move-result v11

    return v11

    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    sub-int p1, p1, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    sub-int p2, p2, v11

    const/4 v6, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    const/4 v4, 0x1

    :goto_0
    move/from16 v7, p1

    :goto_1
    move/from16 v0, p2

    if-eq v7, v0, :cond_7

    if-ltz v7, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntriesSize:I

    if-ge v7, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v11, v11, v7

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v12, v14

    if-lez v11, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v11, v11, v7

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v12

    cmpg-double v11, v12, p3

    if-gez v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    add-int v10, v11, v7

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v5, Ljava/text/DecimalFormat;

    const-string/jumbo v11, "#.##"

    invoke-direct {v5, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "WifiConnectivityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Scan target found: rssi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " threshold="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v14, v14, p3

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "% value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v13, v13, v7

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "% volume="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v13, v13, v7

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v10

    :cond_3
    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x3

    if-lt v6, v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    add-int v10, v11, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->presetLoss(I)D

    move-result-wide v8

    cmpg-double v11, v8, p3

    if-gez v11, :cond_6

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v5, Ljava/text/DecimalFormat;

    const-string/jumbo v11, "#.##"

    invoke-direct {v5, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "WifiConnectivityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Scan target found: rssi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " threshold="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v14, v14, p3

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "% value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v8

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "% volume=preset"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v10

    :cond_6
    add-int/2addr v7, v4

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    add-int v11, v11, p2

    return v11
.end method

.method public newLinkDetected()V
    .locals 12

    const-wide/16 v10, 0x7530

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Previous avoidance still in effect, rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    add-long v8, v2, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0x40

    if-le v5, v6, :cond_2

    add-long v6, v2, v10

    iput-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/32 v6, 0x1d4c0

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    goto :goto_0

    :cond_3
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mDnsAvailable:Z

    const/16 v0, -0x69

    const/16 v4, -0x2d

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    const/16 v6, -0xc8

    if-le v5, v6, :cond_5

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetCount:I

    :goto_1
    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New link verifying target set, rssi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v0, v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->findRssiTarget(IID)I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetCount:I

    goto :goto_1
.end method

.method public poorLinkDetected(I)Z
    .locals 13

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "WifiConnectivityMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Poor link detected, rssi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastTimeGood:J

    sub-long v4, v8, v10

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastTimePoor:J

    sub-long v6, v8, v10

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    const/4 v10, 0x3

    :goto_0
    add-int v2, p1, v10

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    const/16 v10, 0xf

    :goto_1
    add-int v3, p1, v10

    const-wide/16 v0, 0x0

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v10

    iput-wide v8, v10, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mLastPoorDetectedTime:J

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v2, v3, v10, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->findRssiTarget(IID)I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    const/4 v10, 0x5

    iput v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetCount:I

    const-wide/16 v0, 0x7530

    const-wide/16 v10, 0x7530

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    const-string/jumbo v10, "WifiConnectivityMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "goodRssi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " goodCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " lastGood="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " lastPoor="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " avoidMax="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    return v10

    :cond_1
    const/4 v10, 0x5

    goto :goto_0

    :cond_2
    const/16 v10, 0x14

    goto :goto_1
.end method

.method public poorLinkDetected(II)Z
    .locals 11

    const/4 v10, 0x0

    const/16 v9, -0x52

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "already disconnected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap24(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iput p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorReason:I

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(I)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, -0x2d

    if-gt p1, v4, :cond_1

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] loss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    sub-int v7, p1, v7

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", maxTP="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    neg-int v7, p1

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", maxStream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    neg-int v7, p1

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne p2, v8, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v0, 0x36ee80

    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Poor link detected enhanced recovery, avoidMax="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mBssidAvoidTimeMax:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    if-ge v4, v9, :cond_3

    iput v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap14(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    sub-int/2addr v4, p1

    const/16 v5, 0xa

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    :goto_0
    return v8

    :cond_4
    iput v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    goto :goto_0

    :cond_5
    iput v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    goto :goto_0
.end method

.method public presetLoss(I)D
    .locals 11

    const/16 v10, 0x5a

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v2, -0x5a

    if-gt p1, v2, :cond_0

    return-wide v8

    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get112()[D

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v1, 0x5a

    new-array v2, v10, [D

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set87([D)[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get112()[D

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x5a

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v4, v8, v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get112()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    return-wide v2
.end method

.method public updateGoodRssi(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    if-ge p1, v0, :cond_3

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lower mGoodLinkTargetRssi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lower mLastPoorRssi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastPoorRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new good RSSI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new good RSSI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method public updateLoss(IDI)V
    .locals 8

    const/4 v6, 0x0

    if-gtz p4, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mRssiBase:I

    sub-int v1, p1, v2

    if-ltz v1, :cond_1

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntriesSize:I

    if-lt v1, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->update(DI)V

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    if-lt p1, v2, :cond_3

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, p2, v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mLastGoodRxRssi:I

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lose good rx position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " loss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cache updated: loss["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "% volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public updateMaxThroughput(IJZ)V
    .locals 4

    const/16 v0, -0x64

    if-ge v0, p1, :cond_0

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    neg-int v1, p1

    aget-wide v0, v0, v1

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxStreamTP:[J

    neg-int v1, p1

    aput-wide p2, v0, v1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Max stream TP["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    neg-int v1, p1

    aget-wide v0, v0, v1

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mMaxThroughput:[J

    neg-int v1, p1

    aput-wide p2, v0, v1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new Max TP["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
