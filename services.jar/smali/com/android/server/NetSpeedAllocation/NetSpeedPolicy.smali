.class public Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
.super Ljava/lang/Object;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$Jitter;,
        Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;,
        Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;
    }
.end annotation


# static fields
.field public static final ACCESS_LOWEST_NET_SPEED:I = 0x1e

.field private static final BG_MIN_NETSPEED_LIMIT_RATE:I = 0xa

.field private static final BG_NETWORK_LIMIT_RATE:I = 0x1e

.field public static final CMD_BG_NET_SPEED_DOWN_LIMIT:I = 0x3

.field public static final CMD_BG_NET_SPEED_START_LIMIT:I = 0x1

.field public static final CMD_BG_NET_SPEED_UP_LIMIT:I = 0x2

.field public static final CMD_INIT_STATUS:I = 0x0

.field public static final CMD_PREVECT_JITTER:I = -0x1

.field public static final DEBUG:Z

.field private static final HIGH_NET_LIMIT_RATE:I = 0x46

.field private static final HIGH_NET_SPEED:I = 0x2710

.field private static final LOW_NET_LIMIT_RATE:I = 0x1e

.field public static final MAX_LIMIT_APP_NUM:I = 0x5

.field private static final MID_NET_LIMIT_RATE:I = 0x32

.field public static final MSG_ADD_BG_SPEED_LIMIT:I = 0x12

.field public static final MSG_CHECK_APP_CHANGE:I = 0x4

.field public static final MSG_CHECK_SPCM_PARAMETERES:I = 0x14

.field public static final MSG_DETECTION_PERIOD:I = 0x2

.field public static final MSG_DETECTION_PERIOD_LONG:I = 0x3

.field public static final MSG_LCD_OFF:I = 0x6

.field public static final MSG_LCD_ON:I = 0x5

.field public static final MSG_NETWORK_CONNECTED:I = 0x1

.field public static final MSG_NETWORK_DISCONNECTED:I = 0xa

.field public static final MSG_REMOVE_ALL_BG_SPEED_LIMIT:I = 0x13

.field public static final MSG_REMOVE_BG_SPEED_LIMIT:I = 0x11

.field public static final MSG_VPN_CONNECTED:I = 0xb

.field public static final PERIOD_LONG_TIME_MS:I = 0x2710

.field public static final PERIOD_LONG_TIME_SEC:I = 0xa

.field public static final PERIOD_TIME_MS:I = 0xbb8

.field public static final PERIOD_TIME_SEC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NetSpeedPolicy"

.field private static final lOW_NET_SPEED:I = 0x3e8

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mTimesLowTotalSpeed:I


# instance fields
.field public isScreenOn:Z

.field private mCandidateApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

.field public mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

.field public mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

.field private mLastFGTotalSpeed:I

.field private mLimitAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

.field private mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

.field private mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

.field public needUpdateAvgSpeed:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->checkTotalNetworkStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->checkAppNetworkStatus(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->DEBUG:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mTimesLowTotalSpeed:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-static {}, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->getInstance()Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;-><init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    invoke-direct {v0, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    const-string/jumbo v2, "com.android.providers.downloads"

    invoke-virtual {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getUidForPackageName(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "com.android.providers.downloads"

    invoke-direct {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NetSpeedPolicy"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    sget-object v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    return-void
.end method

.method private checkAppNetworkStatus(Z)V
    .locals 15

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v13, "FgNetspeedRelease"

    invoke-virtual {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v13, "TotalNetspeedLose"

    invoke-virtual {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v13, "BGAppDownLimit"

    invoke-virtual {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFGAppList()Ljava/util/List;

    move-result-object v6

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBGAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->getMaxSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->getMaxSpeedBGAppExceptUsefulApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    move-result-object v7

    if-nez v7, :cond_2

    const-string/jumbo v12, "NetSpeedPolicy"

    const-string/jumbo v13, "BG app only have one app using network and the app is music app."

    invoke-static {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v12, v12, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v12, v12, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    iget-object v13, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "FG App Uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "  packagename "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "use download provider download and provider services has be limit."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAppLimit(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setCurSpeed(I)V

    const-string/jumbo v12, "NetSpeedPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Max BG app speed uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " speed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "use donload provider services download,limit download provider."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    :cond_6
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getFgTotalSpeed()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBgTotalSpeed()I

    move-result v10

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v0

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getAvgPhySpeed()I

    move-result v1

    const-string/jumbo v12, "NetSpeedPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " avgPhySpeed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "maxFGSpeedApp uid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " speed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " maxBGSpeedApp = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " TotalSpeed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v14}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v12

    const/16 v13, 0x1e

    if-le v12, v13, :cond_7

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v12

    mul-int/lit8 v13, v0, 0x1e

    div-int/lit8 v13, v13, 0x64

    if-le v12, v13, :cond_7

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v12

    if-nez v12, :cond_7

    const/4 v3, 0x1

    const-string/jumbo v12, "CMD_BG_NET_SPEED_START_LIMIT"

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string/jumbo v12, "BG App consume bandwidth"

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    :cond_7
    :goto_0
    if-nez v3, :cond_14

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    invoke-virtual {p0, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->limitAppSpeed(I)V

    return-void

    :cond_8
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v8}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v12

    const/16 v13, 0x1e

    if-le v12, v13, :cond_9

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v12

    const/16 v13, 0x1e

    if-le v12, v13, :cond_9

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v12

    mul-int/lit8 v13, v0, 0x1e

    div-int/lit8 v13, v13, 0x64

    if-le v12, v13, :cond_9

    const/4 v3, 0x1

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "CMD_BG_NET_SPEED_START_LIMIT"

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string/jumbo v12, "FG&BG  Apps consume netowrk bandwidth"

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    :cond_9
    :goto_2
    iput v11, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    goto :goto_0

    :cond_a
    const/16 v12, 0x1e

    if-ge v11, v12, :cond_c

    const-string/jumbo v12, "NetSpeedPolicy"

    const-string/jumbo v13, "Fg app speed is too low"

    invoke-static {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v13, "FgNetspeedRelease"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string/jumbo v12, "FG App no speed"

    invoke-virtual {p0, v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    mul-int/lit8 v12, v1, 0xa

    div-int/lit8 v12, v12, 0x64

    if-ge v10, v12, :cond_e

    sub-int v12, v1, v11

    div-int/lit8 v13, v1, 0x4

    if-le v12, v13, :cond_e

    const-string/jumbo v12, "NetSpeedPolicy"

    const-string/jumbo v13, "limit is lowest"

    invoke-static {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v13, "FgNetspeedRelease"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string/jumbo v12, "Limited bg app speed too low"

    invoke-virtual {p0, v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    iget v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int v12, v11, v12

    div-int/lit8 v13, v1, 0x4

    if-le v12, v13, :cond_11

    div-int/lit8 v12, v11, 0x2

    if-le v10, v12, :cond_11

    sub-int v12, v1, v0

    div-int/lit8 v13, v1, 0x4

    if-ge v12, v13, :cond_11

    const-string/jumbo v12, "NetSpeedPolicy"

    const-string/jumbo v13, "limit increase"

    invoke-static {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v12

    if-eqz v12, :cond_f

    const/4 v3, 0x2

    const-string/jumbo v12, "CMD_BG_NET_SPEED_UP_LIMIT"

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string/jumbo v12, "Continue to enhance BG net bandwidth limit "

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    :goto_3
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_10

    return-void

    :cond_10
    const/4 v3, 0x1

    const-string/jumbo v12, "CMD_BG_NET_SPEED_START_LIMIT"

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string/jumbo v12, "Continue to enhance BG net bandwidth limit "

    iput-object v12, v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto :goto_3

    :cond_11
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {p0, v12}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->getMinSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    move-result-object v9

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int/2addr v12, v11

    div-int/lit8 v13, v1, 0x5

    if-gt v12, v13, :cond_12

    sub-int v12, v1, v0

    mul-int/lit8 v13, v1, 0x2

    div-int/lit8 v13, v13, 0x3

    if-le v12, v13, :cond_13

    :cond_12
    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v13, "BGAppDownLimit"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_13

    const-string/jumbo v12, "NetSpeedPolicy"

    const-string/jumbo v13, "limit discrease quickly"

    invoke-static {v12, v13}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    const-string/jumbo v12, "CMD_BG_NET_SPEED_DOWN_LIMIT"

    iput-object v12, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string/jumbo v12, "Fg App speed reduced  or Total bandwidth has lots of lost"

    iput-object v12, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    iget v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    div-int/lit8 v13, v1, 0xa

    if-ge v12, v13, :cond_9

    sub-int v12, v1, v0

    div-int/lit8 v13, v1, 0x4

    if-le v12, v13, :cond_9

    const/4 v3, -0x1

    iget-object v12, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v13, "TotalNetspeedLose"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v3, 0x3

    const-string/jumbo v12, "CMD_BG_NET_SPEED_DOWN_LIMIT"

    iput-object v12, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCommand:Ljava/lang/String;

    const-string/jumbo v12, "Fg App speed rise little and Total bandwidth has a little lost"

    iput-object v12, v9, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto/16 :goto_2

    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private checkTotalNetworkStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v1, "TotalNetSPeedLowest"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalSpeed()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "NetSpeedPolicy"

    const-string/jumbo v1, "total netSpeed is lower 30kb/s!"

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string/jumbo v1, "TotalNetSPeedLowest"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLastFGTotalSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "LimitAppList dump"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LimitAppList size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedLogger:Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;

    invoke-virtual {v2, v4, p1, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedLogger;->dumpNetSpeedLogger(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getMaxSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMaxSpeedBGAppExceptUsefulApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :cond_1
    if-nez v3, :cond_2

    return-object v7

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "NetSpeedPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " packagename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is music app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    goto :goto_2

    :cond_5
    return-object v3
.end method

.method public getMinSpeedApp(Ljava/util/List;)Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v2, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public isLimitedApp(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public limitAppSpeed(I)V
    .locals 11

    const/16 v10, 0x1e

    const/4 v9, 0x0

    const-string/jumbo v6, "NetSpeedPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getAvgPhySpeed()I

    move-result v1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const/16 v3, 0x32

    const/16 v6, 0x2710

    if-le v1, v6, :cond_2

    const/16 v3, 0x46

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    const/16 v6, 0x3e8

    if-ge v1, v6, :cond_0

    const/16 v3, 0x1e

    goto :goto_0

    :pswitch_0
    const-string/jumbo v6, "NetSpeedPolicy"

    const-string/jumbo v7, " first limit start."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v6

    mul-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x64

    mul-int/lit8 v6, v1, 0xa

    div-int/lit8 v6, v6, 0x64

    if-lt v4, v6, :cond_3

    if-ge v4, v10, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setLimitSpeed(I)V

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v6, v0, v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->enableLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v6, "NetSpeedPolicy"

    const-string/jumbo v7, " up limit start. "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getCurSpeed()I

    move-result v6

    mul-int/2addr v6, v3

    div-int/lit8 v2, v6, 0x64

    mul-int/lit8 v6, v1, 0xa

    div-int/lit8 v6, v6, 0x64

    if-lt v2, v6, :cond_5

    if-ge v2, v10, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v6, v0, v7, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->updateLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;I)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v6, "NetSpeedPolicy"

    const-string/jumbo v7, " down limit start. "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int v6, v1, v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v5, v6, 0x4

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getLimitSpeed()I

    move-result v6

    if-ge v5, v6, :cond_7

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v7, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v6, v0, v7, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->updateLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public releaseAllAppsLimit(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "NetSpeedPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realese All Apps Limit, mLimitAppList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iput-object p1, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseAppLimit(ILjava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "NetSpeedPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realese App Limit, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    iput-object p2, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/NetSpeedAllocation/NetSpeedAction;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedAction;->releaseLimitAction(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;Ljava/util/List;)Z

    return-void

    :cond_1
    return-void
.end method
