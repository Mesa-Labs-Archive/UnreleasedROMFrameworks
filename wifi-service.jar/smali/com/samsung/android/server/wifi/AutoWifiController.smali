.class public Lcom/samsung/android/server/wifi/AutoWifiController;
.super Lcom/android/internal/util/StateMachine;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/AutoWifiController$1;,
        Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;,
        Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffWithScanModeState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;,
        Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-server-wifi-AutoWifiController$WifiStateSwitchesValues:[I = null

.field public static final AUTO_WIFI_PACKAGE_NAME:Ljava/lang/String; = "samsung.wifi.autowifi"

.field static final CMD_ALWAYS_ALLOW_SCANNING_OPTION_CHANGED:I = 0x3

.field static final CMD_AUTO_WIFI_MODE_OFF:I = 0x8

.field static final CMD_AUTO_WIFI_MODE_ON:I = 0x7

.field static final CMD_CHECK_FAVORITE_AP:I = 0x11

.field static final CMD_CONFIGURED_NETWORKS_CHANGED:I = 0x12

.field static final CMD_ENTER_NO_SERVICE_AREA:I = 0xf

.field static final CMD_GEOFENCE_EXIT_TIMER:I = 0xd

.field static final CMD_GEOFENCE_STATE_CHANGED:I = 0x5

.field static final CMD_LOCATION_MODE_OFF:I = 0xa

.field static final CMD_LOCATION_MODE_ON:I = 0x9

.field static final CMD_NETWORK_STATE_CHANGED:I = 0x6

.field static final CMD_PERIODIC_SCAN_POLL:I = 0xb

.field static final CMD_RESET_AUTOWIFI_SCORE:I = 0x10

.field static final CMD_SCREEN_STATE_CHANGED:I = 0xc

.field static final CMD_SIM_ABSENT:I = 0xe

.field static final CMD_WIFI_OFF_TRIGGERED:I = 0x2

.field static final CMD_WIFI_ON_TRIGGERED:I = 0x1

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z

.field private static final FAVORITE_AP_SCORE:I = 0x62

.field private static final GEOFENCE_STATE_CHANGED_DELAY:J = 0x493e0L

.field private static final GEOFENCE_STATE_CHANGED_DELAY_10:J = 0x927c0L

.field public static final GEOFENCE_STATE_ENTER:I = 0x1

.field public static final GEOFENCE_STATE_EXIT:I = 0x0

.field public static final GEOFENCE_STATE_UNKNOWN:I = 0x2

.field private static final MAX_DURATION_TIME:J = 0x927c0L

.field private static final MAX_SCAN_RECEIVER_COUNT:I = 0x5

.field private static final PERIODIC_SCAN_INTERVAL:J = 0x1f400L

.field static final RECEIVED_SCAN_RESULT:I = 0x4

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "AutoWifiController"

.field private static final UNINTENDED_AP_CONNECTION_TIME:J = 0x1d4c0L

.field private static final VERSION:Ljava/lang/String; = "v3.1.9"

.field private static final mApMaskCheckVsie:[I

.field private static final mIgnorableApMASK:[I


# instance fields
.field mActivityManager:Landroid/app/ActivityManager;

.field private mAlwaysWifiOnUser:Z

.field mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDoNotUpdateAlwaysWifiOnUserFlag:Z

.field private mDoNotUpdateGeofenceExitDelay:Z

.field private mFavoriteGeofenceEnterState:Lcom/android/internal/util/State;

.field private mGeofenceExitState:Lcom/android/internal/util/State;

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsP2pNetworkConnected:Z

.field private mLastConnectedDuration:J

.field private mLastConnectedFavoriteApKey:Ljava/lang/String;

.field private mLastConnectedNetworkId:I

.field private mLastGeofenceState:I

.field private mLastReceivedNetworkState:I

.field private mLastScreenState:Z

.field private mLastUpdatedGeofenceExitTime:J

.field private mLogMessages:Z

.field private mManualGeofenceControl:Z

.field private mMinDurationToTransitGeofenceExitState:J

.field private mMinDurationToTransitWifiOffState:J

.field private mMinScanResultCountToTransitWifiOffState:J

.field private mNextScanInterval:J

.field mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPeriodicScanMaxInterval:J

.field mReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mScanModeState:Lcom/android/internal/util/State;

.field mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

.field mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserTriggeredWifiOffState:Lcom/android/internal/util/State;

.field private mUserTriggeredWifiOnState:Lcom/android/internal/util/State;

.field private mWifiConnectedState:Lcom/android/internal/util/State;

.field private mWifiGeofenceListener:Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;

.field private mWifiOffState:Lcom/android/internal/util/State;

.field private mWifiOffWithScanModeState:Lcom/android/internal/util/State;

.field private mWifiOnState:Lcom/android/internal/util/State;

.field mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

.field mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/server/wifi/AutoWifiController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedNetworkId:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastGeofenceState:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/server/wifi/AutoWifiController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastReceivedNetworkState:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastScreenState:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/server/wifi/AutoWifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastUpdatedGeofenceExitTime:J

    return-wide v0
.end method

.method static synthetic -get15(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mManualGeofenceControl:Z

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/server/wifi/AutoWifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitGeofenceExitState:J

    return-wide v0
.end method

.method static synthetic -get17(Lcom/samsung/android/server/wifi/AutoWifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitWifiOffState:J

    return-wide v0
.end method

.method static synthetic -get18(Lcom/samsung/android/server/wifi/AutoWifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinScanResultCountToTransitWifiOffState:J

    return-wide v0
.end method

.method static synthetic -get19(Lcom/samsung/android/server/wifi/AutoWifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mNextScanInterval:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAlwaysWifiOnUser:Z

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/server/wifi/AutoWifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mPeriodicScanMaxInterval:J

    return-wide v0
.end method

.method static synthetic -get21(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mUserTriggeredWifiOffState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mUserTriggeredWifiOnState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffWithScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOnState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get3()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mApMaskCheckVsie:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDoNotUpdateAlwaysWifiOnUserFlag:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDoNotUpdateGeofenceExitDelay:Z

    return v0
.end method

.method static synthetic -get6()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mIgnorableApMASK:[I

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/server/wifi/AutoWifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedDuration:J

    return-wide v0
.end method

.method private static synthetic -getcom-samsung-android-server-wifi-AutoWifiController$WifiStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->-com-samsung-android-server-wifi-AutoWifiController$WifiStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->-com-samsung-android-server-wifi-AutoWifiController$WifiStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->values()[Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_OFF:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_ON:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->-com-samsung-android-server-wifi-AutoWifiController$WifiStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAlwaysWifiOnUser:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDoNotUpdateAlwaysWifiOnUserFlag:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/server/wifi/AutoWifiController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedDuration:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/samsung/android/server/wifi/AutoWifiController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedNetworkId:I

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/server/wifi/AutoWifiController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastReceivedNetworkState:I

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/server/wifi/AutoWifiController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastUpdatedGeofenceExitTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/samsung/android/server/wifi/AutoWifiController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitGeofenceExitState:J

    return-wide p1
.end method

.method static synthetic -set8(Lcom/samsung/android/server/wifi/AutoWifiController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mNextScanInterval:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAirplainModeEnabledFromProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAlawaysAllowScanModeFromProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/server/wifi/AutoWifiController;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->getGeofenceInternalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/net/wifi/ScanResult;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getConfigKeyFrom(Landroid/net/wifi/ScanResult;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/samsung/android/server/wifi/AutoWifiController;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/samsung/android/server/wifi/AutoWifiController;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/AutoWifiController;->forceUpdateGeofenceState(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/AutoWifiController;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainScanAlwaysAvailablePolicy(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/samsung/android/server/wifi/AutoWifiController;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->setAlwaysWifiOnUserToDb(Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/samsung/android/server/wifi/AutoWifiController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->setAutoWifiScoreForAll(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/samsung/android/server/wifi/AutoWifiController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/AutoWifiController;->setGeofenceState(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAutoWifiEnabledFromProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->setScanAlwaysAvailable(Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiStateDisableOrScanMode()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitWifiOffState(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getUltraPowerSaveEnabledFromProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->isFavoriteAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/server/wifi/AutoWifiController;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->isFavoriteAp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->isTargetAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/samsung/android/server/wifi/AutoWifiController;Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiControllerState(Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/samsung/android/server/wifi/AutoWifiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiStateScanMode()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    new-array v0, v3, [I

    const v1, 0x2ba8c0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mIgnorableApMASK:[I

    new-array v0, v3, [I

    const v1, 0xa14ac

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mApMaskCheckVsie:[I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiSettingsStore;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)V
    .locals 7

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const-string/jumbo v0, "AutoWifiController"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLogMessages:Z

    const-wide/32 v0, 0x1f400

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mPeriodicScanMaxInterval:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitWifiOffState:J

    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDoNotUpdateGeofenceExitDelay:Z

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitGeofenceExitState:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastUpdatedGeofenceExitTime:J

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinScanResultCountToTransitWifiOffState:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mNextScanInterval:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastGeofenceState:I

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastScreenState:Z

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAlwaysWifiOnUser:Z

    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDoNotUpdateAlwaysWifiOnUserFlag:Z

    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mManualGeofenceControl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedNetworkId:I

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedFavoriteApKey:Ljava/lang/String;

    iput v6, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastReceivedNetworkState:I

    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mReceivers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mInitialState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mFavoriteGeofenceEnterState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanModeState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOnState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiConnectedState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOffState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mUserTriggeredWifiOffState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mGeofenceExitState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffWithScanModeState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffWithScanModeState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffWithScanModeState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mUserTriggeredWifiOnState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$1;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiGeofenceListener:Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p5, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p6, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLogMessages:Z

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mInitialState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mFavoriteGeofenceEnterState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanModeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mFavoriteGeofenceEnterState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOnState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mFavoriteGeofenceEnterState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiConnectedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOnState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mUserTriggeredWifiOffState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mFavoriteGeofenceEnterState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mGeofenceExitState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mGeofenceExitState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffWithScanModeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mGeofenceExitState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mUserTriggeredWifiOnState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mGeofenceExitState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setInitialState(Lcom/android/internal/util/State;)V

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setLogRecSize(I)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/AutoWifiController;->setLogOnlyTransitions(Z)V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->registerReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->registerForAutoWifiModeChange()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->registerForScanModeChange()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->registerForUltraPowerSaving()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->registerForLocation()V

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private forceUpdateGeofenceState(ZLjava/lang/String;)V
    .locals 5

    const-string/jumbo v3, "AutoWifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceUpdateGeofenceState "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    const-string/jumbo v2, "enter"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getGeofenceEnterKeys()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->updateGeofenceEnterNetwork(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->hasFavoriteApInGeofenceArea()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->setGeofenceState(II)V

    return-void

    :cond_2
    const-string/jumbo v2, "exit"

    goto :goto_0
.end method

.method private getAirplainModeEnabledFromProvider()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getAlawaysAllowScanModeFromProvider()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_scan_always_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getAlwaysWifiOnUserFromDb()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sem_auto_wifi_last_user_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoWifiEnabledFromProvider()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sem_auto_wifi_control_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static getConfigKeyFrom(Landroid/net/wifi/ScanResult;)[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WAPI-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WAPI-CERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "FT/PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    return-object v1

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1

    :cond_4
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1

    :cond_5
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "FT/EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "-EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    return-object v1

    :cond_6
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1

    :cond_7
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1

    :cond_8
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    return-object v1
.end method

.method private getForegroundPackageName()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mActivityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_1
    return-object v3
.end method

.method private getGeofenceInternalState(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x2

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getGeofenceStateString(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSimState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    return v0
.end method

.method private getUltraPowerSaveEnabledFromProvider()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isFavoriteAp(I)Z
    .locals 4

    const-string/jumbo v1, "AutoWifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFavoriteAp - networkId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->isFavoriteAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isFavoriteAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFavoriteAp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/16 v1, 0x62

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLocationEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isTargetAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "it\'s vendor ap netId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "it\'s passpoint ap netId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "it\'s not allowing auto reconnect ap netId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private isWifiApEnabeldEnablingState()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLogMessages:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private obtainScanAlwaysAvailablePolicy(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiSettingsStore;->obtainScanAlwaysAvailablePolicy(Z)V

    return-void
.end method

.method private printTime()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private registerForAutoWifiModeChange()V
    .locals 4

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController$8;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sem_auto_wifi_control_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerForLocation()V
    .locals 4

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController$10;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController$7;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerForUltraPowerSaving()V
    .locals 4

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController$9;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/server/wifi/AutoWifiController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$2;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/server/wifi/AutoWifiController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$3;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/server/wifi/AutoWifiController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$4;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/server/wifi/AutoWifiController$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$5;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/server/wifi/AutoWifiController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController$6;-><init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mReceivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private setAlwaysWifiOnUserToDb(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sem_auto_wifi_last_user_state"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoWifiScoreForAll(I)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    const/16 v5, 0x3f2

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "AutoWifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "savedConfigs size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v3, "AutoWifiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAutoWifiScoreForAll : update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " prev:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setGeofenceState(II)V
    .locals 3

    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set Geofence state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastGeofenceState:I

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setScanAlwaysAvailable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiSettingsStore;->setScanAlwaysAvailable(Z)V

    return-void
.end method

.method private setWifiControllerState(Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-getcom-samsung-android-server-wifi-AutoWifiController$WifiStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v4

    :pswitch_0
    sget-object v2, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_OFF:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->setScanAlwaysAvailable(Z)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const-string/jumbo v3, "samsung.wifi.autowifi"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->setScanAlwaysAvailable(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "can\'t change Wi-Fi state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const v3, 0x26007

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiServiceImpl;->sendMessageToController(I)V

    return v4

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->isWifiApEnabeldEnablingState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiSharingEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "can\'t enable Wi-Fi state because hotspot is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v2

    if-eq v2, v4, :cond_3

    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "save Wi-Fi state to enable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    :cond_3
    return v5

    :cond_4
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const-string/jumbo v3, "samsung.wifi.autowifi"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    return v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "can\'t change Wi-Fi state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setWifiStateDisableOrScanMode()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAlawaysAllowScanModeFromProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiControllerState(Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_OFF:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiControllerState(Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    goto :goto_0
.end method

.method private setWifiStateScanMode()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiControllerState(Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "Can\'t change Wi-Fi state (policy), return state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private transitWifiOffState(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAlawaysAllowScanModeFromProvider()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiControllerState(Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffWithScanModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_OFF:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->setWifiControllerState(Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "Can\'t change Wi-Fi state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOffState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndStart()V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->start()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentGeofenceState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->getGeofenceInternalState(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->forceUpdateGeofenceState(ZLjava/lang/String;)V

    const-string/jumbo v1, "AutoWifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndStart - geofence state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastGeofenceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAlwaysWifiOnUserFromDb()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAlwaysWifiOnUser:Z

    const-string/jumbo v1, "AutoWifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndStart - last user state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAlwaysWifiOnUser:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAutoWifiEnabledFromProvider()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    const-string/jumbo v1, "AutoWifiController"

    const-string/jumbo v2, "Auto Wi-Fi initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "AutoWifiController"

    const-string/jumbo v2, "Auto Wi-Fi initialized with disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkDeviceStatusInIdle()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getSimState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAirplainModeEnabledFromProvider()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getUltraPowerSaveEnabledFromProvider()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public doQuit()V
    .locals 5

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mReceivers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->quit()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public factoryReset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->factoryReset()V

    return-void
.end method

.method public forgetNetwork(I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->removeNetwork(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->forgetNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x3e8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "FW Version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "v3.1.9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "CurrentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "LastGeofenceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastGeofenceState:I

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Geofence Control Mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mManualGeofenceControl:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "manual"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " mode\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Wi-Fi OFF Transtion Min.ScanResult Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiOnState:Lcom/android/internal/util/State;

    check-cast v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;

    iget v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mScanReceiverCount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinScanResultCountToTransitWifiOffState:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Wi-Fi OFF Transtion Min.Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitWifiOffState:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Max Scan Interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mNextScanInterval:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mPeriodicScanMaxInterval:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Geofence Exit Transition Min.Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitGeofenceExitState:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Goefnece Exit Received at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastUpdatedGeofenceExitTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastUpdatedGeofenceExitTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_1
    const-string/jumbo v1, " seconds before\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Last connected network id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastConnectedDuration:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Always On Wi-Fi User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAlwaysWifiOnUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "auto"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getGeofenceListener()Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiGeofenceListener:Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;

    return-object v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->printTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastGeofenceState:I

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " u:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAlwaysWifiOnUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const-string/jumbo v1, " geofence "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, " Wi-Fi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "connected"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "disconnected"

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, " screen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "on"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "off"

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public isAutoWifiEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAutoWifiEnabledFromProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getSimState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getAirplainModeEnabledFromProvider()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getUltraPowerSaveEnabledFromProvider()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAirplainMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method

.method public setConfigForTest(Landroid/os/Bundle;)V
    .locals 28

    const-string/jumbo v5, "manual_mode"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "manual_mode:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz v19, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_18

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mManualGeofenceControl:Z

    :cond_1
    const-string/jumbo v5, "geofence_state"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "geofence_state:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ltz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->copyFavoriteNetworksToGeofenceEnterNetworkList()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->setGeofenceState(II)V

    :cond_3
    const-string/jumbo v5, "location_state"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "location_state:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ltz v18, :cond_5

    if-nez v18, :cond_19

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->setLocationState(Z)V

    :cond_5
    const-string/jumbo v5, "airplain_mode"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "airplain_mode:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-ltz v4, :cond_7

    if-nez v4, :cond_1a

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->setAirplainMode(Z)V

    :cond_7
    const-string/jumbo v5, "ultrapowersave_mode"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "ultrapowersave_mode:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-ltz v21, :cond_9

    if-nez v21, :cond_1b

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->setUltraPowerSaveMode(Z)V

    :cond_9
    const-string/jumbo v5, "max_duration"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "max_duration:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-wide/16 v24, 0x0

    cmp-long v5, v14, v24

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitWifiOffState:J

    :cond_b
    const-string/jumbo v5, "max_geofence_exit_duration"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "max_geofence_exit_duration:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-wide/16 v24, 0x0

    cmp-long v5, v14, v24

    if-lez v5, :cond_d

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mDoNotUpdateGeofenceExitDelay:Z

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinDurationToTransitGeofenceExitState:J

    :cond_d
    const-string/jumbo v5, "scan_interval"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_e

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "scan_interval:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-wide/32 v24, 0x1f400

    cmp-long v5, v22, v24

    if-ltz v5, :cond_f

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mPeriodicScanMaxInterval:J

    :cond_f
    const-string/jumbo v5, "scan_counter"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_10

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "scan_counter:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-lez v20, :cond_11

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mMinScanResultCountToTransitWifiOffState:J

    :cond_11
    const-string/jumbo v5, "init_score"

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-ltz v17, :cond_12

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "init_score : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x10

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    :cond_12
    const-string/jumbo v5, "dur_score_1"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_13

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "duration score 1:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string/jumbo v5, "dur_score_2"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_14

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "duration score 2:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string/jumbo v5, "dur_minus"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_15

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "duration minus:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string/jumbo v5, "dur_recovery"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    sget-boolean v5, Lcom/samsung/android/server/wifi/AutoWifiController;->DBG:Z

    if-eqz v5, :cond_16

    const-string/jumbo v5, "AutoWifiController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "duration recovery:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    add-long v24, v6, v8

    add-long v24, v24, v10

    add-long v24, v24, v12

    const-wide/16 v26, 0x0

    cmp-long v5, v24, v26

    if-lez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual/range {v5 .. v13}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setConfigForTest(JJJJ)V

    :cond_17
    return-void

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_19
    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_1a
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_3
.end method

.method public setLocationState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method

.method public setPhoneServiceAvailable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method

.method public setScreenState(Z)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mLastScreenState:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setSimState(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method

.method public setUltraPowerSaveMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWifiEnabledTriggered(ZLjava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "samsung.wifi.autowifi"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutoWifiController"

    const-string/jumbo v2, "setWifiEnabled called by Auto Wi-Fi Controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, v3, v3}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setNetworkState(ZZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "unknown"

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CMD_WIFI_ON_TRIGGERED"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "CMD_WIFI_OFF_TRIGGERED"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "CMD_ALWAYS_ALLOW_SCANNING_OPTION_CHANGED"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "RECEIVED_SCAN_RESULT"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "CMD_GEOFENCE_STATE_CHANGED"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "CMD_GEOFENCE_EXIT_TIMER"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "CMD_NETWORK_STATE_CHANGED"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "CMD_AUTO_WIFI_MODE_ON"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "CMD_AUTO_WIFI_MODE_OFF"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "CMD_LOCATION_MODE_ON"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "CMD_LOCATION_MODE_OFF"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "CMD_PERIODIC_SCAN_POLL"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "CMD_SCREEN_STATE_CHANGED"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "CMD_SIM_ABSENT"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "CMD_ENTER_NO_SERVICE_AREA"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "CMD_RESET_AUTOWIFI_SCORE"

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "CMD_CHECK_FAVORITE_AP"

    goto :goto_0

    :pswitch_11
    const-string/jumbo v0, "CMD_CONFIGURED_NETWORKS_CHANGED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
