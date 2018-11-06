.class public Lcom/android/server/wifi/WifiConnectivityManager;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityManager$1;,
        Lcom/android/server/wifi/WifiConnectivityManager$2;,
        Lcom/android/server/wifi/WifiConnectivityManager$3;,
        Lcom/android/server/wifi/WifiConnectivityManager$4;,
        Lcom/android/server/wifi/WifiConnectivityManager$5;,
        Lcom/android/server/wifi/WifiConnectivityManager$6;,
        Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;,
        Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    }
.end annotation


# static fields
.field public static final BSSID_BLACKLIST_EXPIRE_TIME_MS:I = 0x493e0

.field public static final BSSID_BLACKLIST_THRESHOLD:I = 0x3

.field private static final CHANNEL_LIST_AGE_MS:I = 0x36ee80

.field private static final CONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x27100

.field private static final CSC_CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final CSC_ENABLE_MENU_CONNECTION_TYPE:Z

.field private static final CSC_SUPPORT_ASSOCIATED_NETWORK_SELECTION:Z

.field private static final DISCONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x4e20

.field private static final ENABLE_DISCONNECTED_PNO_SCAN:Z = false

.field private static final LOW_RSSI_NETWORK_RETRY_MAX_DELAY_MS:I = 0x13880

.field private static final LOW_RSSI_NETWORK_RETRY_START_DELAY_MS:I = 0x4e20

.field public static final MAX_CONNECTION_ATTEMPTS_RATE:I = 0x6

.field public static final MAX_CONNECTION_ATTEMPTS_TIME_INTERVAL_MS:I = 0x3a980

.field public static final MAX_PERIODIC_SCAN_INTERVAL_MS:I = 0x1f400

.field public static final MAX_PERIODIC_SCAN_INTERVAL_MS_FOR_GEOFENCE:I = 0xfa000

.field static final MAX_PERIODIC_SCAN_NON_WAKEUP_TIMER:I = 0x0

.field public static final MAX_PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Max Periodic Scan Timer"

.field static final MAX_PERIODIC_SCAN_WAKEUP_TIMER:I = 0x1

.field public static final MAX_RX_PACKET_FOR_FULL_SCANS:I = 0x10

.field public static final MAX_SCAN_RESTART_ALLOWED:I = 0x5

.field public static final MAX_SLEEP_PERIODIC_SCAN_TIMER_AUX_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Max Sleep Periodic Scan Timer Aux"

.field public static final MAX_SLEEP_PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Max Sleep Periodic Scan Timer"

.field public static final MAX_TX_PACKET_FOR_FULL_SCANS:I = 0x8

.field private static final PASSPOINT_NETWORK_EVALUATOR_PRIORITY:I = 0x2

.field public static final PERIODIC_SCAN_INTERVAL_MS:I = 0x1f40

.field public static final PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Periodic Scan Timer"

.field public static final REASON_CODE_AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field public static final RESTART_CONNECTIVITY_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Scan"

.field private static final RESTART_SCAN_DELAY_MS:I = 0x7d0

.field public static final RESTART_SINGLE_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Single Scan"

.field private static final SAVED_NETWORK_EVALUATOR_PRIORITY:I = 0x1

.field private static final SCAN_IMMEDIATELY:Z = true

.field private static final SCAN_ON_SCHEDULE:Z = false

.field private static final SCORED_NETWORK_EVALUATOR_PRIORITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityManager"

.field public static final VALID_WAKEUP_MAX_PERIODIC_SCAN_MS:I = 0x36ee80

.field private static final WATCHDOG_INTERVAL_MS:I = 0x124f80

.field public static final WATCHDOG_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Watchdog Timer"

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_DISCONNECTED:I = 0x2

.field public static final WIFI_STATE_TRANSITIONING:I = 0x3

.field public static final WIFI_STATE_UNKNOWN:I


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

.field private mBand5GHzBonus:I

.field private mBssidBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mConnectionAttemptTimeStamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

.field private final mContext:Landroid/content/Context;

.field private mCurrentConnectionBonus:I

.field private mDbg:Z

.field private mEnableAutoJoinWhenAssociated:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mFirstMaxPeriodicScanTimeStamp:J

.field private mInitialScoreMax:I

.field private mLastConnectionAttemptBssid:Ljava/lang/String;

.field private mLastPeriodicSingleScanTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mMaxPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mMaxPeriodicScanTimerSet:Z

.field private final mMaxSleepPeriodicScanTimerAuxListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mMaxSleepPeriodicScanTimerAuxSet:Z

.field private final mMaxSleepPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mMaxSleepPeriodicScanTimerSet:Z

.field private mMin24GHzRssi:I

.field private mMin5GHzRssi:I

.field private final mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

.field private mOneShotScan:Z

.field private mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private final mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPeriodicScanTimerSet:Z

.field private mPeriodicSingleScanInterval:I

.field private final mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

.field private mPnoScanStarted:Z

.field private final mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSameNetworkBonus:I

.field private mScanRestartCount:I

.field private final mScanner:Landroid/net/wifi/WifiScanner;

.field private mScreenOn:Z

.field private mSecureBonus:I

.field private mSingleScanRestartCount:I

.field private final mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mTotalConnectivityAttemptsRateLimited:I

.field private mUntrustedConnectionAllowed:Z

.field private mWaitForFullBandScanResults:Z

.field private final mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWifiConnectivityManagerEnabled:Z

.field private mWifiEnabled:Z

.field private mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiState:I

.field private mWpsCompleted:Z

.field private semBluetoothConnected:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScanResults(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->maxPeriodicScanTimerHandler()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->periodicScanTimerHandler()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiConnectivityManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedConnectivityScan(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedSingleScan(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->watchdogHandler()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityManager;->CSC_CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConnectivityManager;->CSC_ENABLE_MENU_CONNECTION_TYPE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_SupportAssociatedNetworkSelection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConnectivityManager;->CSC_SUPPORT_ASSOCIATED_NETWORK_SELECTION:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFirstMaxPeriodicScanTimeStamp:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    const/16 v4, 0x1f40

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxPeriodicScanTimerSet:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerSet:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerAuxSet:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOneShotScan:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->semBluetoothConnected:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWpsCompleted:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiConnectivityManager$1;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$2;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiConnectivityManager$2;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$3;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiConnectivityManager$3;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$4;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiConnectivityManager$4;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$5;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiConnectivityManager$5;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$6;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiConnectivityManager$6;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerAuxListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iput-object p4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iput-object p5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-object p6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    iput-object p7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    iput-object p8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    const-string/jumbo v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v4, Landroid/os/Handler;

    move-object/from16 v0, p10

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityManager;->CSC_SUPPORT_ASSOCIATED_NETWORK_SELECTION:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEnableAutoJoinWhenAssociated:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PNO settings: min5GHzRssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " min24GHzRssi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " currentConnectionBonus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sameNetworkBonus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " secureNetworkBonus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " initialScoreMax "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Passpoint is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_1

    const-string/jumbo v4, "enabled"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v5, 0x1

    move-object/from16 v0, p15

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v5, 0x2

    move-object/from16 v0, p17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    const/4 v5, 0x3

    move-object/from16 v0, p16

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wifi/WifiNetworkSelector;->registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->setOnSavedNetworkUpdateListener(Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;)V

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ConnectivityScanManager initialized and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p13, :cond_2

    const-string/jumbo v4, "enabled"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v4, "disabled"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "disabled"

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/WifiGeofenceManager;)V
    .locals 1

    invoke-direct/range {p0 .. p17}, Lcom/android/server/wifi/WifiConnectivityManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;)V

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    return-void
.end method

.method private buildBssidBlacklist()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->isBssidDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private cancelMaxPeriodicScanTimer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxPeriodicScanTimerSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxPeriodicScanTimerSet:Z

    :cond_0
    return-void
.end method

.method private cancelMaxSleepPeriodicScanTimer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerSet:Z

    :cond_0
    return-void
.end method

.method private cancelMaxSleepPeriodicScanTimerAux()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerAuxSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerAuxListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerAuxSet:Z

    :cond_0
    return-void
.end method

.method private cancelPeriodicScanTimer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    :cond_0
    return-void
.end method

.method private clearBssidBlacklist()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    return-void
.end method

.method private clearConnectionAttemptTimeStamps()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: bad candidate - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " scanResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Either already connected or is connecting to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v7, "any"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connecToNetwork: target BSSID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not match the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "config specified BSSID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Drop it!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldSkipConnectionAttempt(Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "connectToNetwork: Too many connection attempts. Skipping this attempt!"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    return-void

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->noteConnectionAttempt(Ljava/lang/Long;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    const-string/jumbo v0, "Disconnected"

    :goto_0
    if-eqz v1, :cond_7

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v7, :cond_7

    :goto_1
    return-void

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->startConnectToNetwork(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private getMaxPeriodicScanInterval()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiGeofenceManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiGeofenceManager;->isInRange()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0xfa000

    return v0

    :cond_0
    const v0, 0x1f400

    return v0
.end method

.method private getScanBand()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v0

    return v0
.end method

.method private getScanBand(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleScanResults(Ljava/util/List;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->refreshBssidBlacklist()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isLinkDebouncing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " onResults: No network selection because linkDebouncing is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isLinkDebouncing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and supplicantTransient is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return v10

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v0, v11, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEnableAutoJoinWhenAssociated:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " onResults: No network selection because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Wifi is connected. And auto roaming is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return v10

    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityManager;->CSC_ENABLE_MENU_CONNECTION_TYPE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getNetworkAutoConnectEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " onResults: No network selection because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "getNetworkAutoConnectEnabled() is false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return v10

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getAutomaticConnectionToWifi()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " onResults: No network selection because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "getAutomaticConnectionToWifi() is false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return v10

    :cond_4
    const-string/jumbo v0, "KTT"

    sget-object v1, Lcom/android/server/wifi/WifiConnectivityManager;->CSC_CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getNetworkAutoConnectEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getHotspot20State()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " onResults: [KTT] No network selection because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNetworkAutoConnectEnabled is false. And Passpoint is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return v10

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " onResults: start network selection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->buildBssidBlacklist()Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isDisconnected()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->semBluetoothConnected:Z

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWpsCompleted:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wifi/WifiNetworkSelector;->selectNetwork(Ljava/util/List;Ljava/util/HashSet;Landroid/net/wifi/WifiInfo;ZZZZZ)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNetworkSelector;->getFilteredScanDetails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateAvailableNetworks(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->countScanResults(Ljava/util/List;)V

    if-eqz v9, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":  WNS candidate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return v11

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    return v10
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private maxPeriodicScanTimerHandler()V
    .locals 8

    const-string/jumbo v4, "maxPeriodicScanTimerHandler"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "WifiConnectivityManager"

    const-string/jumbo v5, "start a single scan from maxPeriodicScanTimerHandler"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isRfTestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxPeriodicScanTimer()V

    :goto_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldMaxPeriodicScanOnSleep()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFirstMaxPeriodicScanTimeStamp:J

    sub-long v2, v0, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxPeriodicScanTimer()V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "since first max periodic scan timer is triggered before 1 hour, change to max periodic scanner"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetFirstMaxPeriodicSingleScanTimeStamp()V

    const-string/jumbo v4, "paranoid! forcely set mImsCallEstablished as false"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setImsCallEstablished(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "mLastPeriodicSingleScanTimeStamp is not set"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxSleepPeriodicScanTimer()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxSleepPeriodicScanTimerAux()V

    goto :goto_0
.end method

.method private noteConnectionAttempt(Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private periodicScanTimerHandler()V
    .locals 1

    const-string/jumbo v0, "periodicScanTimerHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    :cond_0
    return-void
.end method

.method private refreshBssidBlacklist()V
    .locals 8

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    iget-boolean v4, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    :cond_3
    return-void
.end method

.method private resetFirstMaxPeriodicSingleScanTimeStamp()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFirstMaxPeriodicScanTimeStamp:J

    return-void
.end method

.method private resetLastPeriodicSingleScanTimeStamp()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    return-void
.end method

.method private scheduleDelayedConnectivityScan(I)V
    .locals 7

    const-string/jumbo v0, "scheduleDelayedConnectivityScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    const-string/jumbo v4, "WifiConnectivityManager Restart Scan"

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private scheduleDelayedSingleScan(Z)V
    .locals 8

    const-string/jumbo v0, "scheduleDelayedSingleScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x7d0

    add-long/2addr v2, v6

    const-string/jumbo v4, "WifiConnectivityManager Restart Single Scan"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private scheduleMaxPeriodicScanTimer()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getMaxPeriodicScanInterval()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-string/jumbo v4, "WifiConnectivityManager Schedule Max Periodic Scan Timer"

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxPeriodicScanTimerSet:Z

    return-void
.end method

.method private scheduleMaxSleepPeriodicScanTimer()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getMaxPeriodicScanInterval()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-string/jumbo v4, "WifiConnectivityManager Schedule Max Sleep Periodic Scan Timer"

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerSet:Z

    return-void
.end method

.method private scheduleMaxSleepPeriodicScanTimerAux()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getMaxPeriodicScanInterval()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5

    sub-long/2addr v2, v4

    const-string/jumbo v4, "WifiConnectivityManager Schedule Max Sleep Periodic Scan Timer Aux"

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerAuxListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMaxSleepPeriodicScanTimerAuxSet:Z

    return-void
.end method

.method private schedulePeriodicScanTimer(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    const-string/jumbo v4, "WifiConnectivityManager Schedule Periodic Scan Timer"

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    return-void
.end method

.method private scheduleWatchdogTimer()V
    .locals 7

    const-string/jumbo v0, "scheduleWatchdogTimer"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    add-long/2addr v2, v4

    const-string/jumbo v4, "WifiConnectivityManager Schedule Watchdog Timer"

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setFirstMaxPeriodicSingleScanTimeStamp()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mFirstMaxPeriodicScanTimeStamp:J

    return-void
.end method

.method private setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v11

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-wide/32 v8, 0x36ee80

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigManager;->fetchChannelSetForNetworkForPartialScan(IJI)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v5, v4, 0x1

    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v6, v4

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    return v6

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No scan channels for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Perform full band scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return v11
.end method

.method private shouldMaxPeriodicScanOnSleep()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isRfTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isImsCallEstablished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldSkipConnectionAttempt(Ljava/lang/Long;)Z
    .locals 6

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x3a980

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private start()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityHelper;->getFirmwareRoamingInfo()Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method private startConnectivityScan(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startConnectivityScan: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " wifiState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " scanImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " wifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " wifiConnectivityManagerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " oneShotScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOneShotScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getHotspot20State()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getHotspot20State()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->getProviderConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "skip startPeriodicScan due to no savedNetworks"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-eq v0, v4, :cond_4

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicScan(Z)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOneShotScan:Z

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOneShotScan:Z

    const-string/jumbo v0, "start a single scan from oneShotScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiGeofenceManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getMaxPeriodicScanInterval()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiGeofenceManager;->setScanInterval(II)V

    :cond_8
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldMaxPeriodicScanOnSleep()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->setFirstMaxPeriodicSingleScanTimeStamp()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxPeriodicScanTimer()V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxSleepPeriodicScanTimer()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxSleepPeriodicScanTimerAux()V

    goto :goto_0
.end method

.method private startDisconnectedPnoScan()V
    .locals 0

    return-void
.end method

.method private startPeriodicScan(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEnableAutoJoinWhenAssociated:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    :cond_1
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    return-void
.end method

.method private startPeriodicSingleScan()V
    .locals 12

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v7}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startPeriodicSingleScan mPeriodicSingleScanInterval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiGeofenceManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    div-int/lit16 v8, v8, 0x3e8

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getMaxPeriodicScanInterval()I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiGeofenceManager;->setScanInterval(II)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ", isInRange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiGeofenceManager;->isInRange()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    const-string/jumbo v7, "WifiConnectivityManager"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    sub-long v4, v0, v8

    const-wide/16 v8, 0x1f40

    cmp-long v7, v4, v8

    if-gez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Last periodic single scan started "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms ago, defer this new scan request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    long-to-int v7, v4

    rsub-int v7, v7, 0x1f40

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v8, v7, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    cmpl-double v7, v8, v10

    if-gtz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v8, v7, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_3

    :cond_2
    const-string/jumbo v7, "No full band scan due to ongoing traffic"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getMaxPeriodicScanInterval()I

    move-result v3

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    if-le v7, v3, :cond_4

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    :cond_4
    return-void
.end method

.method private startSingleScan(Z)V
    .locals 5

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->semGetConcurrentEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "semConcurrentEnabled is true. Skipping this SingleScan!"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    new-instance v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    if-nez p1, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 p1, 0x1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v3

    iput v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v3, 0x3

    iput v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigManager;->retrieveHiddenNetworkList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    const-string/jumbo v3, "WifiConnectivityManager"

    iput-object v3, v1, Landroid/net/wifi/WifiScanner$ScanSettings;->semPackageName:Ljava/lang/String;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    sget-object v4, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-virtual {v3, v1, v2, v4}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "connected"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "disconnected"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "transitioning"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stop()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return-void
.end method

.method private stopConnectivityScan()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelPeriodicScanTimer()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelMaxPeriodicScanTimer()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelMaxSleepPeriodicScanTimer()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelMaxSleepPeriodicScanTimerAux()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopPnoScan()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return-void
.end method

.method private stopPnoScan()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    return-void
.end method

.method private updateBssidBlacklist(Ljava/lang/String;ZI)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;-><init>(Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    iget v3, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-nez v3, :cond_4

    iget v3, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->counter:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    const/16 v3, 0x11

    if-ne p3, v3, :cond_4

    :cond_3
    iput-boolean v1, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    return v1

    :cond_4
    return v2
.end method

.method private updateFirmwareRoamingConfiguration()V
    .locals 0

    return-void
.end method

.method private updateRunningState()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Starting up WifiConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->start()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Stopping WifiConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stop()V

    goto :goto_0
.end method

.method private watchdogHandler()V
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "start a single scan from watchdogHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeMaxPeriodicScanMode(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "change MaxPeriodScan mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldMaxPeriodicScanOnSleep()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxSleepPeriodicScanTimer()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxSleepPeriodicScanTimerAux()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->setFirstMaxPeriodicSingleScanTimeStamp()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleMaxPeriodicScanTimer()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "Dump of WifiConnectivityManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "WifiConnectivityManager - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v0, "WifiConnectivityManager - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semBluetoothConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->semBluetoothConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set WiFiConnectivityManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateRunningState()V

    return-void

    :cond_0
    const-string/jumbo v0, "disabled"

    goto :goto_0
.end method

.method public enableVerboseLogging(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    return-void
.end method

.method public forceConnectivityScan()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "forceConnectivityScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    return-void
.end method

.method getLastPeriodicSingleScanTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    return-wide v0
.end method

.method getLowRssiNetworkRetryDelay()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->getLowRssiNetworkRetryDelay()I

    move-result v0

    return v0
.end method

.method getPeriodicSingleScanInterval()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    return v0
.end method

.method public handleConnectionStateChanged(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleConnectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wifi/WifiConnectivityManager;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->setWpsCompleted(Z)V

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_0
.end method

.method public handleScreenStateChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleScreenStateChanged: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    goto :goto_0
.end method

.method public prepareForForcedConnection(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareForForcedConnection: netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearConnectionAttemptTimeStamps()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearBssidBlacklist()V

    return-void
.end method

.method public resetPeriodicScanTime()V
    .locals 1

    const-string/jumbo v0, "resetPeriodicScanTime"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method semSetBluetoothConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->semBluetoothConnected:Z

    return-void
.end method

.method public setUntrustedConnectionAllowed(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUntrustedConnectionAllowed: allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    :cond_0
    return-void
.end method

.method public setUserConnectChoice(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserConnectChoice: netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNetworkSelector;->setUserConnectChoice(I)Z

    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set WiFi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mOneShotScan:Z

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateRunningState()V

    return-void

    :cond_0
    const-string/jumbo v0, "disabled"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setWpsCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWpsCompleted:Z

    return-void
.end method

.method public trackBssid(Ljava/lang/String;ZI)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackBssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "enable "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reason code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    if-nez p1, :cond_1

    return v2

    :cond_0
    const-string/jumbo v0, "disable "

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityManager;->updateBssidBlacklist(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->updateFirmwareRoamingConfiguration()V

    if-nez p2, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    :cond_3
    return v3
.end method
