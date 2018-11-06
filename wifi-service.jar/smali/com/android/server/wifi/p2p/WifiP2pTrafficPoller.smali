.class final Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
.super Ljava/lang/Object;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;,
        Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    }
.end annotation


# static fields
.field static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field private static final DBG:Z

.field private static final DBG_BOOSTER:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiP2pTrafficPoller"

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field static mBoosterFLAG:I

.field private static final mBusMaxValue:I

.field private static final mBusMinIndex:I

.field private static final mBusMinLockThreshod:I

.field private static final mCstateDiableThreshold:I

.field private static mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

.field private static final mL1ssDisableThreshold:I


# instance fields
.field private mBusMaxLock:Lcom/samsung/android/os/SemDvfsManager;

.field private mBusMinLock:Lcom/samsung/android/os/SemDvfsManager;

.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuFreqindex:[I

.field private mCurrenL1ssModeValue:I

.field private mCurrenRpsModeValue:I

.field private mCurrentDelAckSize:I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mLpm:Lcom/samsung/android/os/SemDvfsManager;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxBytes:J

.field private mRxBytesBackUp:J

.field private mRxPkts:J

.field private mThresholdKbytes:[J

.field private final mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxBytesBackUp:J

.field private mTxPkts:J


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    .locals 0

    sput-object p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    const-string/jumbo v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxValue:I

    const-string/jumbo v0, "200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCstateDiableThreshold:I

    const-string/jumbo v0, "150"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mL1ssDisableThreshold:I

    const-string/jumbo v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMinIndex:I

    const-string/jumbo v0, "150"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMinLockThreshod:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->P2pMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x12

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    iput v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mLpm:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMinLock:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxLock:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCstate:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    new-array v1, v4, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    iput v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrenRpsModeValue:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentDelAckSize:I

    iput v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrenL1ssModeValue:I

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxValue:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WIFI_BUS_MAX"

    const/16 v2, 0x14

    invoke-static {p1, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxLock:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxLock:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxLock:Lcom/samsung/android/os/SemDvfsManager;

    sget v3, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBusMaxValue:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private setDelAckSize(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_delack_seg"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v3, 0x3c

    if-le v0, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "WifiP2pTrafficPoller"

    const-string/jumbo v4, " delAck size is out of range, configuring to default"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    const-string/jumbo v3, "/sys/kernel/ipv4/tcp_delack_seg"

    invoke-static {v3, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiP2pTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t set delayed ACK size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public notifyOnDataActivity()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    iget-wide v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    cmp-long v4, v2, v6

    if-gtz v4, :cond_0

    cmp-long v4, v0, v6

    :cond_0
    return-void
.end method

.method public setCpuFreqIndex(I)V
    .locals 5

    const-string/jumbo v0, "0,5,11,2,5,11,5,8,11,5,8,11,0,5,11,2,5,11"

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x12

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v3, v3, v1

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v3, v3, v1

    if-le v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aput p1, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDynamicThresholdValues()V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string/jumbo v9, "/data/misc/wifi/.threshold"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    :goto_0
    const/16 v8, 0x12

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xc

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xd

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xe

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_3] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xf

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_4] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x10

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_5] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x11

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v0, v1

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    const-string/jumbo v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_3
    :try_start_3
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v3, "25600,12800,6400,38400,25600,12800,2560,640,256,2560,640,256,25600,12800,6400,38400,25600,12800"

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    :goto_4
    const/16 v8, 0x12

    if-ge v5, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xc

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xd

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xe

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_3] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0xf

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_4] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x10

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Threshold[P2pMode_5] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x11

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v4

    const-string/jumbo v8, "WifiP2pTrafficPoller"

    const-string/jumbo v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v8

    :goto_5
    sget-boolean v9, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Threshold[P2pMode_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0xc

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Threshold[P2pMode_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0xd

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Threshold[P2pMode_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0xe

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Threshold[P2pMode_3] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0xf

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Threshold[P2pMode_4] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0x10

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Threshold[P2pMode_5] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0x11

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v0, :cond_a

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_a
    :goto_6
    throw v8

    :catch_3
    move-exception v4

    const-string/jumbo v9, "WifiP2pTrafficPoller"

    const-string/jumbo v10, "Failed to close .threshold file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v8

    move-object v0, v1

    goto/16 :goto_5

    :catch_4
    move-exception v6

    move-object v0, v1

    goto/16 :goto_3
.end method

.method public setThresholdValues()V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v7, "/data/misc/wifi/.threshold"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v7, 0x0

    aput-wide v8, v6, v7

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v7, 0x1

    aput-wide v8, v6, v7

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v7, 0x2

    aput-wide v8, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Threshold[P2pMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v0, v1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v6, "WifiP2pTrafficPoller"

    const-string/jumbo v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_2
    :try_start_3
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const-string/jumbo v7, "132000"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v7, 0x0

    aput-wide v8, v6, v7

    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const-string/jumbo v7, "132000"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v7, 0x2

    aput-wide v8, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Threshold[P2pMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    const-string/jumbo v6, "WifiP2pTrafficPoller"

    const-string/jumbo v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    sget-boolean v7, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v7, :cond_8

    const-string/jumbo v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Threshold[P2pMode] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v10, 0x0

    aget-wide v10, v9, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Threshold[BTcoex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v10, 0x2

    aget-wide v10, v9, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_4
    throw v6

    :catch_3
    move-exception v3

    const-string/jumbo v7, "WifiP2pTrafficPoller"

    const-string/jumbo v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v0, v1

    goto/16 :goto_2
.end method
