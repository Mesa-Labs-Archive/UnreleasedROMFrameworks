.class public Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;
.super Landroid/os/Handler;
.source "WifiTransportlayerMonitor.java"


# static fields
.field private static DBG:Z = false

.field public static final NORMAL_NETWORK_CONTEXT_TRIGGER:I = 0x1

.field public static final QUICK_MONITOR_INTERVAL:J = 0x3e8L

.field public static final START_MONITOR_TCP_ACTIVITY:I = 0x1

.field public static final STOP_MONITOR_SCREEN_OFF:I = 0x2

.field public static final STOP_MONITOR_TCP_ACTIVITY:I = 0x2

.field public static final STOP_MONITOR_WIFI_DISCONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.WTM"

.field private static final sDummyWifiInfo:Landroid/net/wifi/WifiInfo;


# instance fields
.field private final CHAT_APPS:[Ljava/lang/String;

.field private mAlgorithmResult:Ljava/lang/String;

.field private mChatNumberofEstablished:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChatNumberofIteration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChatNumberofRetrans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChatlist:[Ljava/lang/String;

.field private mCloseWaitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClosingIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCumulativeRedFlagCounter:I

.field private mCurrSSID:Ljava/lang/String;

.field private mCurrentLinkSpeed:I

.field private mCurrentRssi:I

.field private mCycles:I

.field private mEstablishList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFinIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGoodAreaClosingIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGoodAreaFinIP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGoodAreaLastAckIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGoodAreaRetransList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGoodAreaSynList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIs5GHz:Z

.field private mLastAckIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastTriggerTime:J

.field private mLinkSpeed:I

.field private mLinkSpeedthreshold:I

.field private mLoss:D

.field private mLossList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLossListSum:I

.field private mNewCloseWait:Z

.field private mNewClosing:Z

.field private mNewEstablished:Z

.field private mNewFin:Z

.field private mNewLastAck:Z

.field private mNewRetransSocket:Z

.field private mNewSyn:Z

.field private mNewTimeWait:Z

.field private mPoorCount:I

.field private mPoorTxRx:Z

.field private mPrevCloseWaitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevEstablishList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevRx:J

.field private mPrevRxDiff:J

.field mPrevRxUDP:J

.field private mPrevSSID:Ljava/lang/String;

.field private mPrevSynList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevTimeWaitIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevTx:J

.field private mPrevUid:I

.field mPrevUidUDP:I

.field private mRSSI:I

.field private mRetransList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxDiff:J

.field private mStatusFlag:I

.field private mSynList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSynblockcount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeWaitIPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTxDiff:J

.field private mUidChattingAPPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesInitialised:Z

.field public mVoipTraffic:Z

.field mWifiConnectivityMonitor:Lcom/android/server/wifi/WifiConnectivityMonitor;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    sput-object v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->sDummyWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSSID:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iput-wide v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRx:J

    iput-wide v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTx:J

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mVoipTraffic:Z

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevUid:I

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mValuesInitialised:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.whatsapp"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.kakao.talk"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skype.raider"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.google.android.talk"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.facebook.orca"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.facebook.katana"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.viber.voip"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.naver.line.android"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.gm"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.snapchat.android"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mm"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqqi"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.imo.android.imoim"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->CHAT_APPS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mUidChattingAPPS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofRetrans:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofIteration:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastTriggerTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevUidUDP:I

    iput-wide v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRxUDP:J

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mStatusFlag:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLoss:D

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeedthreshold:I

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossListSum:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrSSID:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mIs5GHz:Z

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    iput-wide v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    iput-wide v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iput-object p2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiConnectivityMonitor:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iput-object p3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->initChatLists()V

    return-void
.end method

.method private checkAlgorithmResult()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    if-ne v0, v2, :cond_2

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mStatusFlag:I

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    const-string/jumbo v0, "DelayRedFlag1"

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mStatusFlag:I

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "NoDelay"

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    if-le v0, v2, :cond_0

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mStatusFlag:I

    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget-boolean v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    iget v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeedthreshold:I

    if-le v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Check Internet Connection"

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    if-lt v0, v1, :cond_4

    const-string/jumbo v0, "Switch"

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    if-ge v0, v1, :cond_5

    const-string/jumbo v0, "Sluggish"

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "PoorArea"

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkForGoodArea()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    if-eqz v2, :cond_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iput v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkUDPTraffic(I)V
    .locals 25

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mVoipTraffic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevUidUDP:I

    move/from16 v20, v0

    :goto_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mUidChattingAPPS:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    const-string/jumbo v21, "/proc/net/udp"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v16, Ljava/io/FileReader;

    const-string/jumbo v21, "/proc/net/udp6"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v21, 0x0

    :try_start_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mVoipTraffic:Z

    const-string/jumbo v12, ""

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string/jumbo v21, " +"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x4

    aget-object v21, v8, v21

    const-string/jumbo v22, "07"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x8

    aget-object v22, v8, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    move/from16 v20, p1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string/jumbo v21, " +"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x4

    aget-object v21, v8, v21

    const-string/jumbo v22, "07"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x8

    aget-object v22, v8, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRxUDP:J

    move-wide/from16 v22, v0

    sub-long v10, v18, v22

    const-wide/16 v22, 0xa

    cmp-long v21, v10, v22

    if-lez v21, :cond_4

    if-lez v17, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mVoipTraffic:Z

    :cond_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevUidUDP:I

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRxUDP:J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v14, :cond_5

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_8
    :goto_3
    move-object/from16 v15, v16

    move-object v13, v14

    move-object v6, v7

    move-object v4, v5

    :cond_9
    :goto_4
    return-void

    :catch_0
    move-exception v9

    sget-boolean v21, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v21, :cond_8

    const-string/jumbo v21, "WifiConnectivityMonitor.WTM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v9

    :goto_5
    :try_start_6
    sget-boolean v21, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v21, :cond_a

    const-string/jumbo v21, "WifiConnectivityMonitor.WTM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    if-eqz v13, :cond_b

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    :cond_b
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v9

    sget-boolean v21, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v21, :cond_9

    const-string/jumbo v21, "WifiConnectivityMonitor.WTM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v21

    :goto_6
    if-eqz v13, :cond_e

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_11
    :goto_7
    throw v21

    :catch_3
    move-exception v9

    sget-boolean v22, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v22, :cond_11

    const-string/jumbo v22, "WifiConnectivityMonitor.WTM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_1
    move-exception v21

    move-object v13, v14

    goto :goto_6

    :catchall_2
    move-exception v21

    move-object/from16 v15, v16

    move-object v13, v14

    goto :goto_6

    :catchall_3
    move-exception v21

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v4, v5

    goto :goto_6

    :catchall_4
    move-exception v21

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v6, v7

    move-object v4, v5

    goto :goto_6

    :catch_4
    move-exception v9

    move-object v13, v14

    goto/16 :goto_5

    :catch_5
    move-exception v9

    move-object/from16 v15, v16

    move-object v13, v14

    goto/16 :goto_5

    :catch_6
    move-exception v9

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v4, v5

    goto/16 :goto_5

    :catch_7
    move-exception v9

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v6, v7

    move-object v4, v5

    goto/16 :goto_5
.end method

.method private countRedFlagPoorCount(I)V
    .locals 10

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v4

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTx:J

    sub-long v6, v4, v6

    iput-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRx:J

    sub-long v6, v2, v6

    iput-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iput-wide v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTx:J

    iput-wide v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRx:J

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iput-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRxDiff:J

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->checkForGoodArea()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iget-wide v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x28

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    const/4 v1, 0x1

    :cond_0
    if-nez v0, :cond_13

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_13

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    iget-wide v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    :cond_1
    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iget-wide v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    :cond_2
    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iget-wide v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1e

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    :cond_3
    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iget-wide v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1e

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    if-eqz v6, :cond_5

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    :cond_5
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    :cond_7
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    if-eqz v6, :cond_8

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    :cond_8
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    :cond_9
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    :cond_a
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    if-eqz v6, :cond_b

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    iget-wide v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_b
    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    const/16 v7, -0x55

    if-ge v6, v7, :cond_c

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    const/16 v7, -0xc8

    if-eq v6, v7, :cond_c

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_c
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_d
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    if-eqz v6, :cond_e

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    const-wide/16 v8, 0x1e

    cmp-long v6, v6, v8

    if-gez v6, :cond_e

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_e
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    if-eqz v6, :cond_f

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_f
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget-wide v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    const-wide/16 v8, 0x1e

    cmp-long v6, v6, v8

    if-gez v6, :cond_10

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_10
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    if-eqz v6, :cond_11

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_11
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    if-eqz v6, :cond_12

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_12
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mIs5GHz:Z

    if-eqz v6, :cond_14

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_14

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    :cond_13
    :goto_0
    return-void

    :cond_14
    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mIs5GHz:Z

    if-nez v6, :cond_13

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_13

    iget-boolean v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    if-eqz v6, :cond_13

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    goto :goto_0
.end method

.method private countTCPsockets(ILjava/lang/String;)Z
    .locals 30

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v8, ""

    const/16 v17, 0x0

    const-string/jumbo v11, ""

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    :try_start_0
    new-instance v20, Ljava/io/FileReader;

    const-string/jumbo v26, "/proc/net/tcp"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v22, Ljava/io/FileReader;

    const-string/jumbo v26, "/proc/net/tcp6"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v5, Ljava/io/BufferedReader;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    const-string/jumbo v14, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mUidChattingAPPS:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    const/16 v26, -0x1

    move/from16 v0, v26

    if-le v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofRetrans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v16, v16, 0x1

    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    const-string/jumbo v26, " +"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "01"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v26, -0x1

    move/from16 v0, v26

    if-le v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v12, v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v26, 0x3

    aget-object v26, v6, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const/16 v26, 0x3

    aget-object v26, v6, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "02"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "08"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "01"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    const/16 v26, 0x7

    aget-object v26, v6, v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v26, -0x1

    move/from16 v0, v26

    if-le v13, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v23, v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofRetrans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    move-object v4, v5

    move-object v2, v3

    move-object/from16 v21, v22

    move-object/from16 v19, v20

    :goto_1
    :try_start_5
    sget-boolean v26, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v26, :cond_6

    const-string/jumbo v26, "WifiConnectivityMonitor.WTM"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Exception: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    const/4 v8, 0x0

    const/16 v17, 0x0

    if-eqz v19, :cond_7

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileReader;->close()V

    :cond_7
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileReader;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_a
    :goto_2
    return v17

    :cond_b
    const/16 v16, 0x0

    :cond_c
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v16, v16, 0x1

    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    const-string/jumbo v26, " +"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "01"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v26, -0x1

    move/from16 v0, v26

    if-le v13, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v12, v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/16 v26, 0x3

    aget-object v26, v6, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    const/16 v26, 0x3

    aget-object v26, v6, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "02"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "01"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/16 v26, 0x7

    aget-object v26, v6, v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v26, -0x1

    move/from16 v0, v26

    if-le v13, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofRetrans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v23, v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofRetrans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const/16 v26, 0x4

    aget-object v26, v6, v26

    const-string/jumbo v27, "08"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x8

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    aget-object v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v26

    move-object v4, v5

    move-object v2, v3

    move-object/from16 v21, v22

    move-object/from16 v19, v20

    :goto_4
    if-eqz v19, :cond_11

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileReader;->close()V

    :cond_11
    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileReader;->close()V

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_14
    :goto_5
    throw v26

    :cond_15
    :try_start_9
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/StringReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string/jumbo v15, ""

    :cond_16
    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1a

    const-string/jumbo v26, " +"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/16 v26, 0x3

    aget-object v26, v7, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/16 v26, 0x4

    aget-object v26, v7, v26

    const-string/jumbo v27, "04"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-object v27, v7, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const/16 v26, 0x4

    aget-object v26, v7, v26

    const-string/jumbo v27, "06"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-object v27, v7, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const/16 v26, 0x4

    aget-object v26, v7, v26

    const-string/jumbo v27, "09"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-object v27, v7, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    const/16 v26, 0x4

    aget-object v26, v7, v26

    const-string/jumbo v27, "0B"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-object v27, v7, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    :cond_1a
    const/16 v17, 0x1

    if-eqz v20, :cond_1b

    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileReader;->close()V

    :cond_1b
    if-eqz v22, :cond_1c

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileReader;->close()V

    :cond_1c
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_1d
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_1e
    :goto_7
    move-object v4, v5

    move-object v2, v3

    move-object/from16 v21, v22

    move-object/from16 v19, v20

    goto/16 :goto_2

    :catch_1
    move-exception v9

    const/4 v8, 0x0

    sget-boolean v26, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v26, :cond_1e

    const-string/jumbo v26, "WifiConnectivityMonitor.WTM"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Exception: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_2
    move-exception v9

    const/4 v8, 0x0

    sget-boolean v26, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v26, :cond_a

    const-string/jumbo v26, "WifiConnectivityMonitor.WTM"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Exception: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v9

    const/4 v8, 0x0

    sget-boolean v27, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v27, :cond_14

    const-string/jumbo v27, "WifiConnectivityMonitor.WTM"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_1
    move-exception v26

    goto/16 :goto_4

    :catchall_2
    move-exception v26

    move-object/from16 v19, v20

    goto/16 :goto_4

    :catchall_3
    move-exception v26

    move-object/from16 v21, v22

    move-object/from16 v19, v20

    goto/16 :goto_4

    :catchall_4
    move-exception v26

    move-object v2, v3

    move-object/from16 v21, v22

    move-object/from16 v19, v20

    goto/16 :goto_4

    :catch_4
    move-exception v10

    goto/16 :goto_1

    :catch_5
    move-exception v10

    move-object/from16 v19, v20

    goto/16 :goto_1

    :catch_6
    move-exception v10

    move-object/from16 v21, v22

    move-object/from16 v19, v20

    goto/16 :goto_1

    :catch_7
    move-exception v10

    move-object v2, v3

    move-object/from16 v21, v22

    move-object/from16 v19, v20

    goto/16 :goto_1
.end method

.method private isBlockingAPP(ILjava/lang/String;)Z
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    iget v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeedthreshold:I

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mUidChattingAPPS:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v5, -0x1

    if-le v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v10, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofRetrans:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofIteration:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v9, :cond_3

    const-string/jumbo v5, "Blocking/Retrans"

    iput-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    iput v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mStatusFlag:I

    const/4 v3, 0x1

    iput v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/2addr v5, v6

    const/16 v6, 0x14

    if-le v5, v6, :cond_1

    const-string/jumbo v5, "Blocking/Retrans"

    iput-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    const/4 v3, 0x1

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    :cond_2
    iget v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevUid:I

    if-ne v5, p1, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofIteration:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofIteration:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "CheckingBlocking/Retrans"

    iput-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    const/4 v3, 0x1

    iput v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    iput v8, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mStatusFlag:I

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-le v4, v8, :cond_6

    const-string/jumbo v5, "Blocking/SYN"

    iput-object v5, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    const/4 v3, 0x1

    :cond_6
    return v3
.end method

.method private resetChatIteration(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mUidChattingAPPS:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofIteration:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private resetListsActivityChange(I)V
    .locals 2

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevRx:J

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTx:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevEstablishList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaSynList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynblockcount:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevEstablishList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mValuesInitialised:Z

    return-void
.end method

.method private resetParameters()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    iput v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mStatusFlag:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    iput v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    iput v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeedthreshold:I

    iput v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossListSum:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrSSID:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mIs5GHz:Z

    iput v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    iput-boolean v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    iput-wide v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    iput-wide v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    return-void
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrentLinkSpeed:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrentRssi:I

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->sDummyWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrentLinkSpeed:I

    const/16 v2, -0x64

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrentRssi:I

    goto :goto_0
.end method

.method private updateCycleCount()V
    .locals 8

    const/16 v7, 0x14

    const/16 v6, 0xa

    const/16 v5, -0x41

    const/16 v3, -0x46

    const/16 v4, -0x50

    invoke-direct {p0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrSSID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mIs5GHz:Z

    iget-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mIs5GHz:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-lt v2, v5, :cond_1

    iput v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mIs5GHz:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x28

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeedthreshold:I

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiConnectivityMonitor:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentLoss()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLoss:D

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    iget-wide v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLoss:D

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    iget v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossListSum:I

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossListSum:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-ge v2, v5, :cond_2

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-lt v2, v3, :cond_2

    iput v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    const/16 v3, -0x4b

    if-lt v2, v3, :cond_3

    iput v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    const/16 v3, -0x4b

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-lt v2, v4, :cond_4

    const/16 v2, 0xf

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-ge v2, v4, :cond_5

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    const/16 v3, -0x54

    if-lt v2, v3, :cond_5

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-lt v2, v5, :cond_7

    const/16 v2, 0xf

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-ge v2, v5, :cond_8

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-lt v2, v3, :cond_8

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-ge v2, v3, :cond_9

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-lt v2, v4, :cond_9

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    if-ge v2, v4, :cond_a

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    const/16 v3, -0x54

    if-lt v2, v3, :cond_a

    iput v6, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    goto/16 :goto_0

    :cond_b
    iput v7, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeedthreshold:I

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLossListSum:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_e

    iget v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeedthreshold:I

    iget v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    if-lt v2, v3, :cond_e

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCycles:I

    :cond_e
    return-void
.end method

.method private updateTCPSocketStatus()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_6

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    :goto_3
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_8

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    :goto_4
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_a

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    :goto_5
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_c

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    :goto_6
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_e

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    :goto_7
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevEstablishList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    goto/16 :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    goto/16 :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaRetransList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRetransList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    goto/16 :goto_2

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaFinIP:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mFinIPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    goto/16 :goto_3

    :cond_7
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    goto/16 :goto_4

    :cond_9
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    goto/16 :goto_5

    :cond_b
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaLastAckIPList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastAckIPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    goto/16 :goto_6

    :cond_d
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    goto/16 :goto_6

    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mGoodAreaClosingIPList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mClosingIPList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    iput-boolean v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    goto/16 :goto_7

    :cond_f
    iput-boolean v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    goto/16 :goto_7
.end method


# virtual methods
.method copyList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public getAllTcpData(ILjava/lang/String;)V
    .locals 24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->resetParameters()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->updateCycleCount()V

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    const/16 v2, 0x3e8

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2717

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->countTCPsockets(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->checkUDPTraffic(I)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->isBlockingAPP(ILjava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    if-lez v2, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->resetChatIteration(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mValuesInitialised:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevUid:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_6

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->resetListsActivityChange(I)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->checkAlgorithmResult()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiConnectivityMonitor:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewClosing:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mVoipTraffic:Z

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLoss:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    move/from16 v21, v0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->accumulateTCPdata(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZJJDII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrSSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrSSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Switch"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Blocking/Retrans"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Blocking/SYN"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Check Internet Connection"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiConnectivityMonitor:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendBigDataFeatureForTCPE(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCurrSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSSID:Ljava/lang/String;

    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->DBG:Z

    if-eqz v2, :cond_4

    const/16 v22, 0x0

    const-string/jumbo v2, "Switch"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v22, "S"

    :cond_3
    :goto_2
    if-eqz v22, :cond_4

    const-string/jumbo v2, "WifiConnectivityMonitor.WTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewEstablished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewSyn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewFin:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewTimeWait:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewCloseWait:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewRetransSocket:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorTxRx:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mNewLastAck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLinkSpeed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLoss:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTxDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mRxDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCumulativeRedFlagCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPoorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mVoipTraffic:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevUid:I

    :cond_5
    return-void

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->updateTCPSocketStatus()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->countRedFlagPoorCount(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevEstablishList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mEstablishList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevEstablishList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mSynList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevSynList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mCloseWaitList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevCloseWaitList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mTimeWaitIPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mPrevTimeWaitIPList:Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "PoorArea"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v22, "P"

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v2, "Blocking/Retrans"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v22, "BR"

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v2, "Blocking/SYN"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v22, "BS"

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v2, "Check Internet Connection"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mAlgorithmResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v22, "C"

    goto/16 :goto_2
.end method

.method public getAppLable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v0, "Unknown"

    goto :goto_0
.end method

.method getAppUID(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const/4 v3, -0x1

    return v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastTriggerTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->removeMessages(I)V

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v8, v8, v4}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiConnectivityMonitor:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentUid()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mWifiConnectivityMonitor:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->getAllTcpData(ILjava/lang/String;)V

    iput-wide v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mLastTriggerTime:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->removeMessages(I)V

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v8, v8, v4}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mValuesInitialised:Z

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method initChatLists()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->CHAT_APPS:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatlist:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mUidChattingAPPS:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->resetList(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatlist:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatlist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->getAppUID(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mUidChattingAPPS:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofEstablished:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofRetrans:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->mChatNumberofIteration:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetList(Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    return-void
.end method
