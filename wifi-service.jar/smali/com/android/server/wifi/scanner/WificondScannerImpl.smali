.class public Lcom/android/server/wifi/scanner/WificondScannerImpl;
.super Lcom/android/server/wifi/scanner/WifiScannerImpl;
.source "WificondScannerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WificondScannerImpl$1;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$2;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$3;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;
    }
.end annotation


# static fields
.field public static final BACKGROUND_PERIOD_ALARM_TAG:Ljava/lang/String; = "WificondScannerImpl Background Scan Period"

.field private static final DBG:Z

.field private static final MAX_APS_PER_SCAN:I = 0x20

.field public static final MAX_HIDDEN_NETWORK_IDS_PER_SCAN:I = 0x10

.field private static final MAX_SCAN_BUCKETS:I = 0x10

.field private static final RETURN_CACHED_SCAN_RESULTS_EVENT:I = 0x1

.field private static final SCAN_BUFFER_CAPACITY:I = 0xa

.field private static final SCAN_TIMEOUT_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "WificondScannerImpl"

.field public static final TIMEOUT_ALARM_TAG:Ljava/lang/String; = "WificondScannerImpl Scan Timeout"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

.field private mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mBackgroundScanPaused:Z

.field private mBackgroundScanPeriodPending:Z

.field private mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mHwPnoDebouncer:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

.field private final mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

.field private final mHwPnoScanSupported:Z

.field private mLastNativeResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastRssiDiff:[I

.field private mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

.field private mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMaxNumScanSsids:I

.field private mNextBackgroundScanId:I

.field private mNextBackgroundScanPeriod:I

.field private mNextHiddenNetworkScanId:I

.field private mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field private mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

.field mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

.field mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mSettingsLock:Ljava/lang/Object;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WificondScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/scanner/WificondScannerImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/WificondScannerImpl;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/scanner/WificondScannerImpl;Lcom/android/server/wifi/WifiNative$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->handleScanPeriod()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->handleScanTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportPnoScanFailure()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 7

    new-instance v4, Lcom/android/server/wifi/scanner/NoBandChannelHelper;

    invoke-direct {v4}, Lcom/android/server/wifi/scanner/NoBandChannelHelper;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WificondScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iput v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanPeriod:I

    iput v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanId:I

    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPeriodPending:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPaused:Z

    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    new-array v1, v2, [Landroid/net/wifi/ScanResult;

    invoke-direct {v0, v2, v2, v1}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iput v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLocalLog:Landroid/util/LocalLog;

    iput-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$3;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    filled-new-array {v2, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastRssiDiff:[I

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/app/AlarmManager;Landroid/os/Handler;Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoScanSupported:Z

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24011

    invoke-virtual {p3, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24012

    invoke-virtual {p3, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24005

    invoke-virtual {p3, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    return-void
.end method

.method private handleScanPeriod()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPeriodPending:Z

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleScanTimeout()V
    .locals 2

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "Timed out waiting for scan result from wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V

    return-void
.end method

.method private isDifferentPnoScanSettings(Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHwPnoScanRequired()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->isConnected:Z

    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v0

    return v0
.end method

.method private isHwPnoScanRequired(Z)Z
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    iget-boolean v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoScanSupported:Z

    and-int/2addr v0, v1

    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private pauseHwPnoScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->forceStopPnoScan()V

    return-void
.end method

.method private pollLatestScanData()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v18

    return-void

    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WificondScannerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Polling scan data for scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v4, v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->scanId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastNativeResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->useCachedScan:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastNativeResults:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->updateTimeStampForCachedScanResult(Ljava/util/ArrayList;)V

    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastNativeResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastNativeResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v11

    iget-wide v2, v11, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long v16, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-wide v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    cmp-long v2, v16, v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    if-eqz v2, :cond_2

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    iget v3, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getScanResults()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastNativeResults:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v18

    throw v2

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    if-eqz v10, :cond_7

    :try_start_2
    const-string/jumbo v2, "WificondScannerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filtering out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " scan results."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v12, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/android/server/wifi/scanner/WificondScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->maxAps:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v14, v2, [Landroid/net/wifi/ScanResult;

    const/4 v9, 0x0

    :goto_4
    array-length v2, v14

    if-ge v9, v2, :cond_9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    aput-object v2, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    new-instance v3, Landroid/net/wifi/WifiScanner$ScanData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v4, v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->scanId:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v14}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;->add(Landroid/net/wifi/WifiScanner$ScanData;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    if-eqz v2, :cond_e

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v12, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportEvents:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;->capacity()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v4, v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportPercentThreshold:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    if-ge v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v3, v3, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    if-lt v2, v3, :cond_c

    goto :goto_5

    :cond_e
    sget-object v2, Lcom/android/server/wifi/scanner/WificondScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v15, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Landroid/net/wifi/WifiScanner$ScanData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget v3, v3, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->scanId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isAllChannels()Z

    move-result v6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/ScanResult;

    invoke-interface {v15, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/wifi/ScanResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v18

    return-void
.end method

.method private pollLatestScanDataForPno()V
    .locals 14

    iget-object v9, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_0

    monitor-exit v9

    return-void

    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->getScanResults()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    iget-wide v10, v5, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-wide v10, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    cmp-long v8, v6, v10

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    if-eqz v8, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v8, "WificondScannerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Filtering out "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pno scan results."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v8, [Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    :goto_2
    array-length v8, v4

    if-ge v1, v8, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v8, v4}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v8, :cond_7

    const-string/jumbo v8, "WificondScannerImpl"

    const-string/jumbo v10, "Polling pno scan result when single scan is active, reporting single scan failure"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v10, 0x3

    invoke-interface {v8, v10}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    :cond_7
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private processPendingScans()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v3, v3, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->hwPnoScanActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    monitor-exit v28

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v13

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;-><init>(J)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPaused:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanPeriod:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPeriodPending:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPeriodPending:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v3, :cond_8

    const/4 v5, 0x4

    const/16 v16, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v14, v3, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanPeriod:I

    iget v4, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    div-int/2addr v4, v6

    rem-int/2addr v3, v4

    if-nez v3, :cond_5

    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    or-int/lit8 v5, v5, 0x1

    :cond_2
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v5, v5, 0x2

    :cond_3
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_4

    and-int/lit8 v5, v5, -0x5

    :cond_4
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanId:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v7, v7, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->setBackgroundScan(IIIII)V

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanPeriod:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextBackgroundScanPeriod:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPeriodPending:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    int-to-long v10, v3

    add-long/2addr v8, v10

    const-string/jumbo v10, "WificondScannerImpl Background Scan Period"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v3, :cond_14

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v24

    const/16 v20, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v15, v3, v20

    iget v3, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    const/16 v23, 0x1

    :cond_9
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    invoke-virtual {v13, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->use_cached_scan:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->useCachedScan:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v0, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getMaxNumScanSsids()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_10

    const-string/jumbo v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "driver supported max scan ssids num is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ". so reset to zero"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    :cond_b
    :goto_3
    move-object/from16 v0, v19

    array-length v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v22

    sget-boolean v3, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hiddenNetworks length = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", next HiddenNetwork scanId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", numHiddenNetworks = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processPendingScans: hiddenNetworks length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", next HiddenNetwork scanId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", numHiddenNetworks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->localLog(Ljava/lang/String;)V

    move-object/from16 v0, v19

    array-length v3, v0

    move/from16 v0, v22

    if-eq v0, v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I

    move-object/from16 v0, v19

    array-length v4, v0

    if-lt v3, v4, :cond_e

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, v19

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_11

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    aget-object v3, v19, v21

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    const-string/jumbo v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "max hidden network ids per scan is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mMaxNumScanSsids:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v28

    throw v3

    :cond_11
    :try_start_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    move-object/from16 v0, v19

    array-length v3, v0

    move/from16 v0, v21

    if-lt v0, v3, :cond_12

    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    aget-object v3, v19, v21

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    :cond_12
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    :cond_14
    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    if-nez v3, :cond_15

    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v3, :cond_1b

    :cond_15
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->pauseHwPnoScan()V

    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getScanFreqs()Ljava/util/Set;

    move-result-object v17

    const/16 v27, 0x0

    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->useCachedScan:Z

    if-eqz v3, :cond_18

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_6
    if-eqz v27, :cond_1a

    sget-boolean v3, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->useCachedScan:Z

    if-eqz v3, :cond_19

    const-string/jumbo v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Use cached wifi scan for freqs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "background="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", single="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3a98

    add-long/2addr v8, v10

    const-string/jumbo v10, "WificondScannerImpl Scan Timeout"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_17
    :goto_8
    monitor-exit v28

    return-void

    :cond_18
    :try_start_3
    const-string/jumbo v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hNetworkSSIDSet = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processPendingScans: freqs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hNetworkSSIDSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->localLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wifi/WifiNative;->scan(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v27

    goto/16 :goto_6

    :cond_19
    const-string/jumbo v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting wifi scan for freqs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", background="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", single="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1a
    const-string/jumbo v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to start scan, freqs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/android/server/wifi/scanner/WificondScannerImpl$4;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoScanRequired()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->setHwPnoScan([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isDifferentPnoScanSettings(Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->restartHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v26

    :goto_9
    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->startHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v26

    goto :goto_9

    :cond_1d
    const-string/jumbo v3, "WificondScannerImpl"

    const-string/jumbo v4, "Failed to start PNO scan"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$5;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_8
.end method

.method private reportPnoScanFailure()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reportScanFailure()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private restartHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->forceStopPnoScan()V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->startPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;)Z

    move-result v0

    return v0
.end method

.method private startHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->startPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer$Listener;)Z

    move-result v0

    return v0
.end method

.method private stopHwPnoScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl$HwPnoDebouncer;->stopPnoScan()V

    return-void
.end method

.method private unscheduleScansLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopHwPnoScan()V

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopBatchedScan()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNextHiddenNetworkScanId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WificondScannerImpl - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v0, "WificondScannerImpl - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method public getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;->get()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$ScanBuffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1

    const v0, 0x7fffffff

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    const/16 v0, 0x10

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    const/16 v0, 0x20

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    const/16 v0, 0x8

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    const/16 v0, 0xa

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "Scan failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->pollLatestScanDataForPno()V

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->pollLatestScanData()V

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x24005 -> :sswitch_2
        0x24011 -> :sswitch_0
        0x24012 -> :sswitch_1
    .end sparse-switch
.end method

.method public isHwPnoSupported(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v0

    return v0
.end method

.method public pauseBatchedScan()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WificondScannerImpl"

    const-string/jumbo v3, "Pausing scan"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPeriodPending:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPaused:Z

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->unscheduleScansLocked()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public resetHwPnoList()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    if-nez v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v2, "No PNO scan running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopHwPnoScan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restartBatchedScan()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v2, "Restarting scan"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPaused:Z

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->handleScanPeriod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v2, "Already running a PNO scan"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shouldScheduleBackgroundScanForHwPno()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v2, "WificondScannerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid arguments for startBatched: settings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",eventHandler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-ltz v2, :cond_2

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    :cond_2
    return v5

    :cond_3
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ltz v2, :cond_4

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_5

    :cond_4
    return v5

    :cond_5
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    if-ltz v2, :cond_6

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_7

    :cond_6
    return v5

    :cond_7
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    if-ltz v2, :cond_8

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_9

    :cond_8
    return v5

    :cond_9
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    if-gtz v2, :cond_a

    return v5

    :cond_a
    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v1, v2, :cond_c

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v0, v2, v1

    iget v2, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_b

    return v5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopBatchedScan()V

    sget-boolean v2, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting scan num_buckets="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", base_period="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->handleScanPeriod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "WificondScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid arguments for startSingleScan: settings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",eventHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v0, v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v1, "A single scan is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopBatchedScan()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WificondScannerImpl"

    const-string/jumbo v2, "Stopping scan"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mBackgroundScanPeriodPending:Z

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->unscheduleScansLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->processPendingScans()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateTimeStampForCachedScanResult(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x320

    add-long v0, v8, v10

    const-wide/16 v8, 0x7

    rem-long v8, v0, v8

    long-to-int v8, v8

    add-int/lit8 v6, v8, -0x3

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastRssiDiff:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v6, v8, :cond_0

    add-int/lit8 v6, v6, -0x1

    :cond_0
    const-wide/16 v8, 0x2

    div-long v8, v0, v8

    const-wide/16 v10, 0x7

    rem-long/2addr v8, v10

    long-to-int v8, v8

    add-int/lit8 v7, v8, -0x3

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastRssiDiff:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, v5, Landroid/net/wifi/ScanResult;->seen:J

    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_3

    iget v8, v5, Landroid/net/wifi/ScanResult;->level:I

    iget-object v9, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastRssiDiff:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    add-int/2addr v8, v6

    iput v8, v5, Landroid/net/wifi/ScanResult;->level:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v8, v5, Landroid/net/wifi/ScanResult;->level:I

    iget-object v9, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastRssiDiff:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    add-int/2addr v8, v7

    iput v8, v5, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastRssiDiff:[I

    const/4 v9, 0x0

    aput v6, v8, v9

    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastRssiDiff:[I

    const/4 v9, 0x1

    aput v7, v8, v9

    return-void
.end method
