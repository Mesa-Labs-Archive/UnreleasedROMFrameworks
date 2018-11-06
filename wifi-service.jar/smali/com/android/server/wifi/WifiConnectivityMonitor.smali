.class public Lcom/android/server/wifi/WifiConnectivityMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityMonitor$1;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$BIG_DATA_DETECTION;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$BIG_DATA_RESULT;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;,
        Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_POLL:I = 0x21035

.field private static final ACTIVITY_CHECK_START:I = 0x21033

.field private static final ACTIVITY_CHECK_STOP:I = 0x21034

.field private static final ACTIVITY_RESTART_AGGRESSIVE_MODE:I = 0x21036

.field public static final AUTO_NETWORK_SWITCH_TURNED_ON_SCAN_DEFER_DURATION:J = 0x2ee0L

.field private static final BASE:I = 0x21000

.field public static final BASE_WCM_PATCHER:I = 0x213e8

.field private static final BIG_DATA_CAPTIVE_PORTAL_APP_FINISHED_INTENT:Ljava/lang/String; = "com.samsung.android.captiveportallogin.APP_FINISHED"

.field private static final BIG_DATA_SNS_SCNT_INTENT:Ljava/lang/String; = "com.samsung.android.server.wifi.SCNT"

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field static final CAPTIVE_PORTAL_EVENT_AUTHENTICATED:I = 0x2101b

.field static final CAPTIVE_PORTAL_EVENT_DETECTED:I = 0x2101a

.field static final CAPTIVE_PORTAL_EVENT_DISABLED:I = 0x2101c

.field private static final CAPTIVE_PORTAL_RESULT_DETECTED:I = 0x1

.field private static final CAPTIVE_PORTAL_RESULT_DISCONNECTED:I = 0x5

.field private static final CAPTIVE_PORTAL_RESULT_DNS_TIMEOUT:I = 0x3

.field private static final CAPTIVE_PORTAL_RESULT_NONE:I = 0x0

.field private static final CAPTIVE_PORTAL_RESULT_NO_INTERNET:I = 0x2

.field private static final CAPTIVE_PORTAL_RESULT_TIMEOUT:I = 0x4

.field private static final CAPTIVE_PORTAL_RESULT_TIMEOUT_ON_SCAN:I = 0x6

.field static final CAPTIVE_PORTAL_STATE_EVENT:I = 0x21019

.field private static final CHECK_CONNECTION_POLL:I = 0x2106f

.field private static final CMD_DELAY_NETSTATS_SESSION_INIT:I = 0x2100f

.field private static final CMD_ICMP_ECHO_REQUEST:I = 0x21065

.field private static final CMD_INTERNET_CHECK:I = 0x2100d

.field static final CMD_INVALID_FW_DUMP:I = 0x21071

.field private static final CMD_QUALITY_CHECK:I = 0x21020

.field private static final CMD_QUALITY_RECHECK:I = 0x2100c

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static final CMD_SET_FMC:I = 0x2100e

.field private static final CMD_TRIGGER_WFSN_DATA:I = 0x21070

.field private static final CMD_USER_SELECTION:I = 0x21060

.field private static final CONNECT_CAPTIVE_PORTAL:I = 0x2102b

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DAY_IN_MILLS:J = 0x5265c00L

.field private static DBG:Z = false

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_HTTP_URL_CHINA:Ljava/lang/String; = "http://connectivity.samsung.com.cn/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

.field private static final DELAYED_QUALITY_CHECK:I = 0x2101f

.field private static final DHCP_TIMEOUT:I = 0x7530

.field private static final ENABLE_TCP_MONITOR_BIGDATA:Z = false

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_DHCP_SESSION_COMPLETE:I = 0x21045

.field private static final EVENT_DHCP_SESSION_STARTED:I = 0x21044

.field private static final EVENT_DHCP_TIMEOUT:I = 0x21052

.field private static final EVENT_INET_CONDITION_ACTION:I = 0x2104d

.field private static final EVENT_INTERMEDIATE_CHECK_TRIGGER:I = 0x2100a

.field private static final EVENT_LINK_DETECTION_DISABLED:I = 0x2104f

.field private static final EVENT_MOBILE_CONNECTED:I = 0x2103f

.field private static final EVENT_MOBILE_HIPRI_CONNECTED:I = 0x21040

.field private static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x21043

.field private static final EVENT_NETWORK_REMOVED:I = 0x2104c

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_PARALLEL_CP_CHECK_RESULT:I = 0x2104e

.field private static final EVENT_QC_PARAMETER_UPDATE:I = 0x21048

.field private static final EVENT_ROAM_COMPLETE:I = 0x2104a

.field private static final EVENT_ROAM_STARTED:I = 0x21049

.field private static final EVENT_ROAM_TIMEOUT:I = 0x21051

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCANNING_SERVICE_SCAN_STARTED:I = 0x21053

.field private static final EVENT_SCAN_COMPLETE:I = 0x2103e

.field private static final EVENT_SCAN_STARTED:I = 0x2103d

.field private static final EVENT_SCAN_TIMEOUT:I = 0x21046

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EVENT_WIFI_TOGGLED:I = 0x2104b

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x5

.field private static final GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;

.field private static final HYBRID_QC_HTTP_GET:I = 0x1

.field private static final HYBRID_QC_ICMP_ECHO_REQUEST:I = 0x2

.field private static final HYBRID_QC_ICMP_HTTP_BOTH:I = 0x3

.field private static final IMS_REGISTRATION:Ljava/lang/String; = "com.samsung.ims.action.IMS_REGISTRATION"

.field static final INITIAL_CONNECTION_FINISHED:I = 0x21062

.field static final INITIAL_CONNECTION_STARTED:I = 0x21061

.field static final LINK_DETECTION_DISABLED:I = 0x21017

.field private static final LINK_MONITORING_SAMPLING_INTERVAL_MS:J = 0x1f4L

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static LINK_SAMPLING_INTERVAL_MS:J = 0x0L

.field public static final LINK_STATUS_EXTRA_INFO_NONE:I = 0x0

.field public static final LINK_STATUS_EXTRA_INFO_NO_INTERNET:I = 0x2

.field public static final LINK_STATUS_EXTRA_INFO_POOR_LINK:I = 0x1

.field private static final MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;

.field private static final MAX_FRAGMENTED_PING_CHECK:I = 0xf

.field private static final MAX_TIME_AVOID_LIMIT:I = 0xa

.field private static final MODE_AGG:I = 0x3

.field private static final MODE_NON_SWITCHABLE:I = 0x1

.field private static final MODE_NORMAL:I = 0x2

.field private static final MODE_NO_CHECK:I = 0x0

.field private static final MONITORING_TIMEOUT:I = 0x1e

.field static final NEED_FETCH_RSSI_AND_LINKSPEED:I = 0x21018

.field static final NEED_TO_ROAM_IN_VALID:I = 0x2105f

.field private static final NETWISE_CONTENT_URL:Ljava/lang/String; = "content://com.smithmicro.netwise.director.comcast.oem.apiprovider/managed_networks"

.field private static final NETWORK_STAT_CHECK_DNS:I = 0x21037

.field private static NETWORK_STAT_HISTORY_COUNT_MAX:I = 0x0

.field private static final NETWORK_STAT_SET_GOOD_RX_STATE_NOW:I = 0x21038

.field public static final NUM_LOG_RECS_DBG:I = 0x3e8

.field public static final NUM_LOG_RECS_NORMAL:I = 0x1f4

.field private static final POLICY_AFTER_CONNECTION:I = 0x2

.field private static final POLICY_BEFORE_CONNECTION:I = 0x1

.field private static final POLICY_DISABLED:I = 0x0

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static final QC_CHECK_CP:I = 0x1

.field private static final QC_CHECK_HTTP:I = 0x2

.field private static final QC_CHECK_PING:I = 0x3

.field private static final QC_CHECK_PING_HTTP:I = 0x4

.field private static final QC_FAILED_BY_HIGH_LOSS:I = 0x2102f

.field private static final QC_FAIL_CAPTIVE_PORTAL:I = 0x9

.field private static final QC_FAIL_DNS_CAPTIVE_PORTAL:I = 0x6

.field private static final QC_FAIL_DNS_CHECK_FAIL:I = 0x5

.field private static final QC_FAIL_DNS_NO_DNS_LIST:I = 0x3

.field private static final QC_FAIL_DNS_NO_RESOLVED_URL:I = 0x1

.field private static final QC_FAIL_DNS_PRIVATE_IP:I = 0x2

.field private static final QC_FAIL_DNS_RESOLVED_IP_NOT_IPV4:I = 0x4

.field private static final QC_FAIL_DNS_TIMEOUT:I = 0x7

.field private static final QC_FAIL_FAST_DISCONNECTION:I = 0xd

.field private static final QC_FAIL_ICMP_ECHO_FAILURE:I = 0xe

.field private static final QC_FAIL_ICMP_ECHO_TIMEOUT:I = 0xf

.field private static final QC_FAIL_TIMEOUT_SCAN_ON_QC:I = 0x10

.field private static final QC_FAIL_TRAFFIC_HIGH_LOSS:I = 0xc

.field private static final QC_FAIL_TRAFFIC_NO_INTERNET:I = 0xa

.field private static final QC_FAIL_TRAFFIC_POOR_LINK:I = 0xb

.field private static final QC_GET_TIMEOUT:I = 0x2105e

.field private static final QC_GOOD_RX_DETECTED:I = 0x21026

.field private static final QC_HISTORY_COUNT_MAX:I = 0x1e

.field private static final QC_REDIRECT:I = 0x21027

.field private static final QC_RESET_204_CHECK_INTERVAL:I = 0x21028

.field private static final QC_RESOLVE_HOSTNAME_TIMEOUT:I = 0x2105c

.field private static final QC_RESULT_RECEIVED:I = 0x21025

.field private static final QC_SOCKET_TIMEOUT:I = 0x2105d

.field private static final QC_STEP_CP_DNS:I = 0x3

.field private static final QC_STEP_CP_READ_RESULT:I = 0x6

.field private static final QC_STEP_CP_SOCKET_CONNECTION:I = 0x4

.field private static final QC_STEP_CP_SOCKET_FLUSH:I = 0x5

.field private static final QC_STEP_DEFAULT_DNS:I = 0x2

.field private static final QC_STEP_GOOGLE_DNS:I = 0x1

.field private static final QC_STEP_QC_DNS:I = 0x7

.field private static final QC_STEP_QC_ICMP_ECHO:I = 0xb

.field private static final QC_STEP_QC_SOCKET_CONNECTION:I = 0x8

.field private static final QC_STEP_QC_SOCKET_FLUSH:I = 0x9

.field private static final QC_TRIGGER_AGG_CONTINUOUS_LOSS_VALID:I = 0x18

.field private static final QC_TRIGGER_AGG_ONE_MORE_QC:I = 0x6

.field private static final QC_TRIGGER_AGG_POOR_RX:I = 0x26

.field private static final QC_TRIGGER_AGG_RSSI_DEFAULT_CONDITION:I = 0x29

.field private static final QC_TRIGGER_AGG_RSSI_OPTIONAL_CONDITION:I = 0x2a

.field private static final QC_TRIGGER_AT_NETWORK_PROPERTIES_UPDATE:I = 0x34

.field private static final QC_TRIGGER_CONTINUOUS_POOR_RX:I = 0x24

.field private static final QC_TRIGGER_CP_AUTH_POLL:I = 0x3

.field private static final QC_TRIGGER_CP_CHECK_CONNECTION_POLL:I = 0x4

.field private static final QC_TRIGGER_DELAYED_QUALITY_CHECK_INVALID:I = 0xf

.field private static final QC_TRIGGER_DNS_ABNORMAL_RESPONSE:I = 0x20

.field private static final QC_TRIGGER_FIRST_CP_CHECK_AT_CONNECTION:I = 0x1

.field private static final QC_TRIGGER_FIRST_QC_AT_CONNECTION:I = 0x2

.field private static final QC_TRIGGER_GOOD_RSSI_INVALID:I = 0xc

.field private static final QC_TRIGGER_LINK_DETECTION_DISABLED_INVALID:I = 0x10

.field private static final QC_TRIGGER_LOSS_VALID:I = 0x19

.field private static final QC_TRIGGER_LOSS_WEAK_SIGNAL_VALID:I = 0x1a

.field private static final QC_TRIGGER_MAX_AVOID_TIME_INVALID:I = 0xd

.field private static final QC_TRIGGER_NO_RX_DURING_STREAMING:I = 0x23

.field private static final QC_TRIGGER_NO_SYNACK:I = 0x22

.field private static final QC_TRIGGER_PERIODIC_DNS_CHECK_FAIL:I = 0x2c

.field private static final QC_TRIGGER_PULL_OUT_LINE:I = 0x1f

.field private static final QC_TRIGGER_RESUME_CANCELED_QC_BY_SCAN_INVALID:I = 0xe

.field private static final QC_TRIGGER_RESUME_CANCELED_QC_BY_SCAN_NSA:I = 0x2b

.field private static final QC_TRIGGER_RSSI_LEVEL0_VALID:I = 0x15

.field private static final QC_TRIGGER_RX_VISIBLE_INVALID:I = 0xb

.field private static final QC_TRIGGER_SING_DNS_CHECK_FAILURE:I = 0x2d

.field private static final QC_TRIGGER_STAYING_LAST_POOR_RSSI_VALID:I = 0x16

.field private static final QC_TRIGGER_STAYING_LOW_MCS_DURING_STREAMING:I = 0x28

.field private static final QC_TRIGGER_STOPPED_CONTINUOUS_STREAMING:I = 0x27

.field private static final QC_TRIGGER_SUSPICIOUS_NO_RX_STATE:I = 0x21

.field private static final QC_TRIGGER_SUSPICIOUS_POOR_RX_STATE:I = 0x25

.field private static final QC_TRIGGER_WCM_REQUEST_NETWORK_TEST:I = 0x33

.field static final QC_UPDATE_SKIP_INTERNET_CHECK_VALUE:I = 0x21012

.field private static final QUALITY_CHECK_RESULT_DISCONNECTED:I = -0x1

.field private static final QUALITY_CHECK_RESULT_ICMP_ECHO_FAILED:I = 0x4

.field private static final QUALITY_CHECK_RESULT_ICMP_ECHO_SUCCESS:I = 0x96b43f

.field private static final QUALITY_CHECK_RESULT_ICMP_ECHO_TIMEOUT:I = 0x3

.field private static final QUALITY_CHECK_RESULT_NO_INTERNET:I = 0x0

.field private static final QUALITY_CHECK_RESULT_TIMEOUT:I = 0x1

.field private static final QUALITY_CHECK_RESULT_TIMEOUT_ON_SCAN:I = 0x5

.field private static final QUALITY_CHECK_START:I = 0x21024

.field private static final QUALITY_CHECK_TIMEOUT:I = 0x2105b

.field private static final REPORT_QC_RESULT:I = 0x21023

.field static final REQUEST_POWER_SAVE_OFF:I = 0x21013

.field static final REQUEST_POWER_SAVE_ON:I = 0x21014

.field private static final RESULT_CAPTIVE_PORTAL:I = 0x2102a

.field private static final RESULT_TIMEOUT_CAPTIVE_PORTAL_CHECK:I = 0x2

.field private static final RESULT_TIMEOUT_CAPTIVE_PORTAL_EXCEPTION:I = 0x3

.field private static final RESULT_TIMEOUT_CAPTIVE_PORTAL_GET:I = 0x1

.field private static final RESULT_TIMEOUT_CAPTIVE_PORTAL_SOCKET:I = 0x0

.field private static final RESUME_CAPTIVE_PORTAL_CHECK:I = 0x2102e

.field private static final ROAM_TIMEOUT:I = 0x7530

.field private static final RSSI_PATCH_HISTORY_COUNT_MAX:I = 0x4650

.field private static final SCAN_TIMEOUT:I = 0x1388

.field static final SET_NEXT_TARGET_RSSI:I = 0x2101e

.field private static SMARTCM_DBG:Z = false

.field public static final SNS_FW_VERSION:I = 0x1

.field public static SNS_VERSION:I = 0x0

.field private static final START_CHECK_CAPTIVE_PORTAL:I = 0x21029

.field private static final STATUS_CODE_CAPTIVE_PORTAL:I = 0x2102c

.field private static final STOP_MONITOR_OTHER:I = 0x2

.field private static final STOP_MONITOR_WIFI_DISCONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor"

.field private static TCP_STAT_LOGGING_FIRST:I = 0x0

.field private static TCP_STAT_LOGGING_RESET:I = 0x0

.field private static TCP_STAT_LOGGING_SECOND:I = 0x0

.field private static final TIMEOUT_CAPTIVE_PORTAL:I = 0x2102d

.field private static final USE_PUBLIC_DNS:Z = false

.field private static final VERSION:I = 0x1

.field private static lock:Ljava/lang/Object;

.field private static final mAggressiveModeSupported:Ljava/lang/String;

.field private static mBigDataQualityCheckCycle:J

.field private static mCurrentApDefault:Z

.field private static mCurrentBssidLock:Ljava/lang/Object;

.field private static final mEnableAutoConnectHotspot:Ljava/lang/String;

.field private static mEverQualityTested:Z

.field private static mIsComcastWifiSupported:Z

.field private static mIsValidState:Z

.field private static mLastPingResultLock:Ljava/lang/Object;

.field private static mMaxBigDataQualityCheckLogging:I

.field private static mNetworkRequestAndUidLock:Ljava/lang/Object;

.field public static mPoorNetworkAvoidanceEnabledTime:J

.field private static mRawRssiEMA:D

.field private static mStartQcScreenOn:Z

.field private static mTCPEdatalock:Ljava/lang/Object;

.field private static final sDummyWifiInfo:Landroid/net/wifi/WifiInfo;

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z


# instance fields
.field private final ADD_NETREQUEST_FOR_MULTI:I

.field private final CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

.field private final DEL_NETREQUEST_FOR_MULTI:I

.field private final INVALID_AT_GOOD_SIGNAL_AREA:I

.field private final ISSUE_TRACKER_ONOFF_ACTION:Ljava/lang/String;

.field private final ISSUE_TRACKER_REPORT_ACTION:Ljava/lang/String;

.field private final REMATCH_COMPLETED:I

.field private final REMATCH_NOT_TRIGGERED:I

.field private final REMATCH_ON_GOING:I

.field private URL_MODE:I

.field private bSetQcResult:Z

.field private dailyWifiConnectionCount:I

.field private dailyWifiConnectionWithOptionOnCount:I

.field private isQCExceptionSummary:Ljava/lang/String;

.field private loggingStartTime:J

.field private m407ResponseReceived:Z

.field private mAggressiveModeEnabled:Z

.field private final mAlarmMgr:Landroid/app/AlarmManager;

.field private mAlgorithmResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApOui:Ljava/lang/String;

.field private mBigDataQualityCheckLoggingCount:I

.field private mBigDataQualityCheckStartOfCycle:J

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mCPResultHoldMsgWhileRematch:Landroid/os/Message;

.field public mCaptivePortalFallbackUrls:[Ljava/net/URL;

.field private mCaptivePortalHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

.field private mCaptivePortalSocket:Ljava/net/Socket;

.field private mCaptivePortalState:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

.field private mCaptivePortalUrls:Landroid/os/Bundle;

.field private mCheckRoamedNetwork:Z

.field private mClosewaitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClosingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmedPingableBytes:I

.field private mConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCouldNotIdentifiedCaptivePortal:Z

.field private mCountryIso:Ljava/lang/String;

.field private mCpConnectedTime:I

.field private mCpDetectedTime:J

.field private mCpOptionSelection:I

.field private mCpPageCount:I

.field private mCpRedirectUrl:I

.field private mCpResult:I

.field private mCpUnauthenticatedTime:I

.field private mCurrSSIDTCPE:Ljava/lang/String;

.field private mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

.field private mCurrentLinkSpeed:I

.field private mCurrentLoss:Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

.field private mCurrentMode:I

.field private mCurrentPackageName:Ljava/lang/String;

.field private mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

.field private mCurrentRssi:I

.field private mCurrentSignalLevel:I

.field private mCurrentState:Ljava/lang/String;

.field private mCurrentUid:I

.field public mDefaultFallbackUrl:Ljava/lang/String;

.field public mDefaultHttpUrl:Ljava/lang/String;

.field public mDefaultHttpsUrl:Ljava/lang/String;

.field private mDefaultState:Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;

.field public mDefaultUserAgent:Ljava/lang/String;

.field private mDeviceCountryCode:Ljava/lang/String;

.field private mDnsServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmptyBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

.field private mEstablishList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLogged:Ljava/lang/String;

.field private mFirstRequest:Z

.field private mFirstTCPLoggedTime:Ljava/lang/String;

.field private mFragmentedPingCheckCount:I

.field private mFrontAppAppearedTime:J

.field private mGatewayIp:Ljava/net/InetAddress;

.field private mGoodTargetCount:I

.field private mIgnoreCPResult:Z

.field private mImsRegistered:Z

.field private mInAggGoodStateNow:Z

.field private mInitQcHybridMode:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInvalidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

.field private mInvalidLastRssi:I

.field private mInvalidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

.field private mInvalidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

.field private mInvalidStartTime:J

.field private mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

.field private mInvalidatedTime:I

.field private mIsFmcNetwork:Z

.field private mIsFragmentedPingableNetwork:Z

.field private mIsInDhcpSession:Z

.field private mIsInRoamSession:Z

.field private mIsMobileActiveNetwork:Z

.field private mIsMobileHipriConnected:Z

.field private mIsPingableNetwork:Z

.field private mIsScannedOnQC:Z

.field private mIsScanning:Z

.field private mIsScreenOn:Z

.field private mIsUsingProxy:Z

.field private mIsWifiEnabled:Z

.field private mIssueTrackerRunning:Z

.field private mLastAckList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCheckedMobileHotspotNetworkId:I

.field private mLastCheckedMobileHotspotValue:Z

.field private mLastLogged:Ljava/lang/String;

.field mLastPingResult:Landroid/os/Bundle;

.field mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

.field private mLastQualityCheckTimeByActivity:J

.field private mLastTCPLoggedTime:Ljava/lang/String;

.field mLastTearDownRequest:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mLinkLossOccurred:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkSpeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLossHasGone:I

.field private mLossList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mLossSampleCount:I

.field private mMaxAvoidCount:I

.field private mMobilePolicyDataEnable:Z

.field private mMptcpEnabled:Z

.field private mMultiNetworkRequestDump:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToUsePreviousIP:Z

.field private mNetwork:Landroid/net/Network;

.field private mNetworkMonitorChannel:Lcom/android/internal/util/AsyncChannel;

.field private mNetworkMonitorMessenger:Landroid/os/Messenger;

.field private mNetworkRequestAndUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkRequested:Z

.field private mNetworkStatHistory:[Ljava/lang/String;

.field private mNetworkStatHistoryIndex:I

.field private mNetworkStatHistoryUpdate:Z

.field private mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

.field private mNextFallbackUrlIndex:I

.field private mNotConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotifyNoInternetState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;

.field private mPackagenameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

.field private mPoorConnectionDisconnectedNetId:I

.field private mPoorNetworkAvoidanceSummary:Ljava/lang/String;

.field private mPoorNetworkDetectionEnabled:Z

.field private mPoorNetworkDetectionSummary:Ljava/lang/String;

.field private mPrevAppAppearedTime:J

.field private mPrevSSIDTCPE:Ljava/lang/String;

.field private mPreviousLoss:D

.field private mPreviousPackageName:Ljava/lang/String;

.field private mPreviousStatusStartedTime:J

.field private mPreviousUid:I

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mPublicDnsAvailable:Z

.field private mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

.field private mQCSocket:Ljava/net/Socket;

.field private mQcDumpHistory:[Ljava/lang/String;

.field private mQcDumpVer:Ljava/lang/String;

.field private mQcHistory:[Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

.field private mQcHistoryHead:I

.field private mQcHistoryTotal:I

.field private mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

.field private mQualitySocketHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

.field mRawRssi:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRecoveryCanceledByScan:Z

.field private mRematchStatus:I

.field private mRetrasmissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRssiFetchToken:I

.field private mRssiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRssiPatchHistory:[Ljava/lang/String;

.field private mRssiPatchHistoryHead:I

.field private mRssiPatchHistoryTotal:I

.field private mRxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipReportInvalidResult:Z

.field private mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

.field private mSnsBigDataSCNT:Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

.field private mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

.field private mStateTime:J

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStayingPoorRssi:I

.field private mSynList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTCPDetection:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempLogged:Ljava/lang/String;

.field private mTempTCPLoggedTime:Ljava/lang/String;

.field private mTimeWaitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUIEnabled:Z

.field private mUserOwner:Z

.field private final mUsingSecSettings2:Z

.field private mValidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

.field private mValidLastRssi:I

.field private mValidNoCheckState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

.field private mValidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

.field private mValidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

.field private mValidStartTime:J

.field private mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

.field private mValidatedTime:I

.field private mVoipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

.field private mWaitAuthCompleteState:Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWfsnLockObj:Ljava/lang/Object;

.field mWfsnMsg:Landroid/os/Message;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiTransportlayerMonitor:Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    return v0
.end method

.method static synthetic -get1()J
    .locals 2

    sget-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->LINK_SAMPLING_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    return-object v0
.end method

.method static synthetic -get100(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get101(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    return v0
.end method

.method static synthetic -get102(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    return-object v0
.end method

.method static synthetic -get103(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidLastRssi:I

    return v0
.end method

.method static synthetic -get104(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNoCheckState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    return-object v0
.end method

.method static synthetic -get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    return-object v0
.end method

.method static synthetic -get106(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    return-object v0
.end method

.method static synthetic -get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    return-object v0
.end method

.method static synthetic -get108(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWaitAuthCompleteState:Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    return-object v0
.end method

.method static synthetic -get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic -get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic -get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get112()[D
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic -get113()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->sWifiOnly:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalState:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCheckRoamedNetwork:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCouldNotIdentifiedCaptivePortal:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpConnectedTime:I

    return v0
.end method

.method static synthetic -get2()D
    .locals 2

    sget-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->POOR_LINK_MIN_VOLUME:D

    return-wide v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/WifiConnectivityMonitor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpDetectedTime:J

    return-wide v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpOptionSelection:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpPageCount:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpRedirectUrl:I

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpResult:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpUnauthenticatedTime:I

    return v0
.end method

.method static synthetic -get26()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentApDefault:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDnsServerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEmptyBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    return-object v0
.end method

.method static synthetic -get35()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEnableAutoConnectHotspot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get36()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstRequest:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFragmentedPingCheckCount:I

    return v0
.end method

.method static synthetic -get39(Lcom/android/server/wifi/WifiConnectivityMonitor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    return-wide v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_FIRST:I

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGatewayIp:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGoodTargetCount:I

    return v0
.end method

.method static synthetic -get42(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIgnoreCPResult:Z

    return v0
.end method

.method static synthetic -get43(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mImsRegistered:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInAggGoodStateNow:Z

    return v0
.end method

.method static synthetic -get45(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidLastRssi:I

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_RESET:I

    return v0
.end method

.method static synthetic -get50(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    return v0
.end method

.method static synthetic -get51(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInDhcpSession:Z

    return v0
.end method

.method static synthetic -get52(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInRoamSession:Z

    return v0
.end method

.method static synthetic -get53(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsMobileActiveNetwork:Z

    return v0
.end method

.method static synthetic -get54(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsPingableNetwork:Z

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScannedOnQC:Z

    return v0
.end method

.method static synthetic -get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScanning:Z

    return v0
.end method

.method static synthetic -get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic -get58(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsUsingProxy:Z

    return v0
.end method

.method static synthetic -get59()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsValidState:Z

    return v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_SECOND:I

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic -get61(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTxBad:I

    return v0
.end method

.method static synthetic -get62(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTxGood:I

    return v0
.end method

.method static synthetic -get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkLossOccurred:I

    return v0
.end method

.method static synthetic -get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get65(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossHasGone:I

    return v0
.end method

.method static synthetic -get66(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossSampleCount:I

    return v0
.end method

.method static synthetic -get67(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMaxAvoidCount:I

    return v0
.end method

.method static synthetic -get68(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMptcpEnabled:Z

    return v0
.end method

.method static synthetic -get69(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNeedToUsePreviousIP:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->URL_MODE:I

    return v0
.end method

.method static synthetic -get70(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -get71(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get72(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUid:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get74()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequested:Z

    return v0
.end method

.method static synthetic -get76(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryUpdate:Z

    return v0
.end method

.method static synthetic -get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    return-object v0
.end method

.method static synthetic -get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    return-object v0
.end method

.method static synthetic -get79(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotiManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get80(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotifyNoInternetState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;

    return-object v0
.end method

.method static synthetic -get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    return-object v0
.end method

.method static synthetic -get82(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorConnectionDisconnectedNetId:I

    return v0
.end method

.method static synthetic -get83(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic -get84(Lcom/android/server/wifi/WifiConnectivityMonitor;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousLoss:D

    return-wide v0
.end method

.method static synthetic -get85(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get86(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProxyPort:I

    return v0
.end method

.method static synthetic -get87(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPublicDnsAvailable:Z

    return v0
.end method

.method static synthetic -get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic -get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQCSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCPResultHoldMsgWhileRematch:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    return-object v0
.end method

.method static synthetic -get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualitySocketHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    return-object v0
.end method

.method static synthetic -get92(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRematchStatus:I

    return v0
.end method

.method static synthetic -get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic -get94(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSkipReportInvalidResult:Z

    return v0
.end method

.method static synthetic -get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    return-object v0
.end method

.method static synthetic -get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataSCNT:Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    return-object v0
.end method

.method static synthetic -get97()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStartQcScreenOn:Z

    return v0
.end method

.method static synthetic -get98(Lcom/android/server/wifi/WifiConnectivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStayingPoorRssi:I

    return v0
.end method

.method static synthetic -get99(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTCPDetection:Z

    return v0
.end method

.method static synthetic -set0(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->LINK_SAMPLING_INTERVAL_MS:J

    return-wide p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    return p0
.end method

.method static synthetic -set10(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCouldNotIdentifiedCaptivePortal:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpConnectedTime:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpDetectedTime:J

    return-wide p1
.end method

.method static synthetic -set14(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpOptionSelection:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpPageCount:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpRedirectUrl:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpResult:I

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpUnauthenticatedTime:I

    return p1
.end method

.method static synthetic -set19(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentApDefault:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->URL_MODE:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic -set21(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    return p1
.end method

.method static synthetic -set22(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set23(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDnsServerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set26(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    return p0
.end method

.method static synthetic -set27(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstRequest:Z

    return p1
.end method

.method static synthetic -set28(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFragmentedPingCheckCount:I

    return p1
.end method

.method static synthetic -set29(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->bSetQcResult:Z

    return p1
.end method

.method static synthetic -set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGoodTargetCount:I

    return p1
.end method

.method static synthetic -set31(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIgnoreCPResult:Z

    return p1
.end method

.method static synthetic -set32(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mImsRegistered:Z

    return p1
.end method

.method static synthetic -set33(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInAggGoodStateNow:Z

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidLastRssi:I

    return p1
.end method

.method static synthetic -set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidStartTime:J

    return-wide p1
.end method

.method static synthetic -set36(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidatedTime:I

    return p1
.end method

.method static synthetic -set37(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFragmentedPingableNetwork:Z

    return p1
.end method

.method static synthetic -set38(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInDhcpSession:Z

    return p1
.end method

.method static synthetic -set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInRoamSession:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->m407ResponseReceived:Z

    return p1
.end method

.method static synthetic -set40(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsMobileActiveNetwork:Z

    return p1
.end method

.method static synthetic -set41(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsPingableNetwork:Z

    return p1
.end method

.method static synthetic -set42(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScannedOnQC:Z

    return p1
.end method

.method static synthetic -set43(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScanning:Z

    return p1
.end method

.method static synthetic -set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsUsingProxy:Z

    return p1
.end method

.method static synthetic -set46(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsValidState:Z

    return p0
.end method

.method static synthetic -set47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic -set48(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIssueTrackerRunning:Z

    return p1
.end method

.method static synthetic -set49(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastQualityCheckTimeByActivity:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mApOui:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set50(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTxBad:I

    return p1
.end method

.method static synthetic -set51(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTxGood:I

    return p1
.end method

.method static synthetic -set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkLossOccurred:I

    return p1
.end method

.method static synthetic -set53(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic -set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossHasGone:I

    return p1
.end method

.method static synthetic -set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossSampleCount:I

    return p1
.end method

.method static synthetic -set56(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMaxAvoidCount:I

    return p1
.end method

.method static synthetic -set57(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMptcpEnabled:Z

    return p1
.end method

.method static synthetic -set58(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNeedToUsePreviousIP:Z

    return p1
.end method

.method static synthetic -set59(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCPResultHoldMsgWhileRematch:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic -set60(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set61(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set62(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUid:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set63(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequested:Z

    return p1
.end method

.method static synthetic -set64(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryUpdate:Z

    return p1
.end method

.method static synthetic -set65(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotiManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic -set66(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorConnectionDisconnectedNetId:I

    return p1
.end method

.method static synthetic -set67(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevAppAppearedTime:J

    return-wide p1
.end method

.method static synthetic -set68(Lcom/android/server/wifi/WifiConnectivityMonitor;D)D
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousLoss:D

    return-wide p1
.end method

.method static synthetic -set69(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic -set70(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    return p1
.end method

.method static synthetic -set71(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProxyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set72(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProxyPort:I

    return p1
.end method

.method static synthetic -set73(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPublicDnsAvailable:Z

    return p1
.end method

.method static synthetic -set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method

.method static synthetic -set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQCSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic -set76(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRecoveryCanceledByScan:Z

    return p1
.end method

.method static synthetic -set77(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRematchStatus:I

    return p1
.end method

.method static synthetic -set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiFetchToken:I

    return p1
.end method

.method static synthetic -set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSkipReportInvalidResult:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalUrls:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set80(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStartQcScreenOn:Z

    return p0
.end method

.method static synthetic -set81(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStayingPoorRssi:I

    return p1
.end method

.method static synthetic -set82(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUserOwner:Z

    return p1
.end method

.method static synthetic -set83(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidLastRssi:I

    return p1
.end method

.method static synthetic -set84(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidStartTime:J

    return-wide p1
.end method

.method static synthetic -set85(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidatedTime:I

    return p1
.end method

.method static synthetic -set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic -set87([D)[D
    .locals 0

    sput-object p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic -set9(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCheckRoamedNetwork:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getBroadcastNotificationMessage(IZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isConnectedState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isInvalidState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isKTCMWifiSettingScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isMobileHotspot()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->skipPoorConnectionReport()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncUpdateCaptivePortalValues(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCaptivePortalServerFallbackUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap19(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap21(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap22(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addNetworkStatHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->determineMode()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->dumpArpTable()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->initCurrentQcFailRecord()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->initNetworkStatHistory()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->canUseCaptivePortalParallelCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->qualityCheckRequest(IZ)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->qualityCheckRequest(I)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/wifi/WifiConnectivityMonitor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->qualityCheckRequest(IIZ)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->qualityCheckRequest(II)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->registerForMptcpChange()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->registerForSettingsChanges()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->registerForWatchdogToggle()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->reportQCResult(II)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->reportTestResult(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiConnectivityMonitor;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->determineDataUsageForWFSN(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestInternetCheck()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendBigDataFeatureForSCNT()V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendBroadcastFromWWSMForCurrentUser(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/wifi/WifiConnectivityMonitor;IILcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendParallelResultMessage(IILcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setBigDataQCandNS(Z)V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setBigDataQualityCheck(Z)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLoggingForTCPStat(I)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setPoorConnectionDisconnectNotificationVisible(Z)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setQcFailHistory()V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/server/wifi/WifiConnectivityMonitor;IIJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setRssiPatchHistory(IIJ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->inChinaNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setStateForWFSN(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setupNetworkReceiver()V

    return-void
.end method

.method static synthetic -wrap52(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateCountryIsoCode()V

    return-void
.end method

.method static synthetic -wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateCurrentBssid(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateDnsLinkProperty()V

    return-void
.end method

.method static synthetic -wrap55(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updatePoorNetworkParameters()V

    return-void
.end method

.method static synthetic -wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap57(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateTargetRssiForCurrentAP(Z)V

    return-void
.end method

.method static synthetic -wrap58(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateWNICBigdata(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->initDataUsage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiConnectivityMonitor;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAppRunning(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isChineseIso(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUidLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    const-wide/high16 v0, -0x3f97000000000000L    # -200.0

    sput-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssiEMA:D

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->LINK_SAMPLING_INTERVAL_MS:J

    sget-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->LINK_SAMPLING_INTERVAL_MS:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->POOR_LINK_MIN_VOLUME:D

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEnableAutoConnectHotspot:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigSnsAggressiveModeStatus"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeSupported:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;

    const v2, 0x1b7740

    invoke-direct {v1, v4, v6, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;

    const/4 v2, 0x5

    const v3, 0x493e0

    invoke-direct {v1, v6, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;

    const/4 v2, 0x6

    const v3, 0xea60

    invoke-direct {v1, v2, v8, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;

    const/16 v2, 0x9

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiConnectivityMonitor$GoodLinkTarget;

    new-array v0, v6, [Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;

    const v2, 0x1b7740

    const/16 v3, -0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;

    const v2, 0x493e0

    const/16 v3, -0x46

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;

    const/16 v2, -0x37

    invoke-direct {v1, v4, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiConnectivityMonitor$MaxAvoidTime;

    sput v5, Lcom/android/server/wifi/WifiConnectivityMonitor;->SNS_VERSION:I

    sput-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsValidState:Z

    sput-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->sWifiOnly:Z

    sput-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentApDefault:Z

    sput-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    sput v8, Lcom/android/server/wifi/WifiConnectivityMonitor;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    sput-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStartQcScreenOn:Z

    sput-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->sDummyWifiInfo:Landroid/net/wifi/WifiInfo;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkAvoidanceEnabledTime:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckCycle:J

    sput v8, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMaxBigDataQualityCheckLogging:I

    sput v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_RESET:I

    sput v5, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_FIRST:I

    sput v7, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_SECOND:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTCPEdatalock:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsComcastWifiSupported:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 19

    const-string/jumbo v2, "WifiConnectivityMonitor"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUsingSecSettings2:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUserOwner:Z

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorMessenger:Landroid/os/Messenger;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpDetectedTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpUnauthenticatedTime:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpConnectedTime:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpOptionSelection:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpRedirectUrl:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpPageCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpResult:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->URL_MODE:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidStartTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidatedTime:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidStartTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidatedTime:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mApOui:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScanning:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInDhcpSession:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInRoamSession:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCheckRoamedNetwork:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMptcpEnabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRecoveryCanceledByScan:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mImsRegistered:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScannedOnQC:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIssueTrackerRunning:Z

    const-string/jumbo v2, "com.sec.android.ISSUE_TRACKER_ONOFF"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->ISSUE_TRACKER_ONOFF_ACTION:Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->ISSUE_TRACKER_REPORT_ACTION:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->INVALID_AT_GOOD_SIGNAL_AREA:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsUsingProxy:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProxyAddress:Ljava/lang/String;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProxyPort:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTCPDetection:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMobilePolicyDataEnable:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDnsServerList:Ljava/util/List;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->m407ResponseReceived:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPublicDnsAvailable:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsMobileActiveNetwork:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsMobileHipriConnected:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQCSocket:Ljava/net/Socket;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastQualityCheckTimeByActivity:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDeviceCountryCode:Ljava/lang/String;

    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiFetchToken:I

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    const-string/jumbo v3, "00:00:00:00:00:00"

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEmptyBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScreenOn:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorConnectionDisconnectedNetId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsPingableNetwork:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFragmentedPingableNetwork:Z

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFragmentedPingCheckCount:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCouldNotIdentifiedCaptivePortal:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultState:Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalState:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWaitAuthCompleteState:Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotifyNoInternetState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNoCheckState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMaxAvoidCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiTransportlayerMonitor:Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;

    const-string/jumbo v2, "2.1"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcDumpVer:Ljava/lang/String;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryTotal:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->bSetQcResult:Z

    const/16 v2, 0x1e

    new-array v2, v2, [Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistory:[Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/16 v2, 0x1e

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    invoke-direct {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->ADD_NETREQUEST_FOR_MULTI:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DEL_NETREQUEST_FOR_MULTI:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequested:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRematchStatus:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->REMATCH_NOT_TRIGGERED:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->REMATCH_ON_GOING:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->REMATCH_COMPLETED:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCPResultHoldMsgWhileRematch:Landroid/os/Message;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotNetworkId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotValue:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSkipReportInvalidResult:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTearDownRequest:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkLossOccurred:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossHasGone:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousLoss:D

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpsUrl:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpUrl:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultFallbackUrl:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultUserAgent:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNextFallbackUrlIndex:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalUrls:Landroid/os/Bundle;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNeedToUsePreviousIP:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstRequest:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInAggGoodStateNow:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStayingPoorRssi:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalSocket:Ljava/net/Socket;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIgnoreCPResult:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInitQcHybridMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResult:Landroid/os/Bundle;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGatewayIp:Ljava/net/InetAddress;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionWithOptionOnCount:I

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->loggingStartTime:J

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryTotal:I

    const/16 v2, 0x4650

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistory:[Ljava/lang/String;

    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckStartOfCycle:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckLoggingCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPackagenameList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEstablishList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSynList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFinList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosewaitList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRetrasmissionList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosingList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastAckList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mVoipList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTxList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRxList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkSpeedList:Ljava/util/ArrayList;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrSSIDTCPE:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevSSIDTCPE:Ljava/lang/String;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousStatusStartedTime:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStateTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentState:Ljava/lang/String;

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$1;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnMsg:Landroid/os/Message;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnLockObj:Ljava/lang/Object;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstLogged:Ljava/lang/String;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastLogged:Ljava/lang/String;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempLogged:Ljava/lang/String;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstTCPLoggedTime:Ljava/lang/String;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTCPLoggedTime:Ljava/lang/String;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempTCPLoggedTime:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlarmMgr:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousStatusStartedTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultState:Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultState:Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultState:Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalState:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWaitAuthCompleteState:Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalState:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotifyNoInternetState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalState:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNoCheckState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    sget-boolean v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x3e8

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogRecSize(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateCountryIsoCode()V

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    sget-object v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->sDummyWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    new-instance v15, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NetworkStatsThread"

    invoke-direct {v15, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    new-instance v17, Landroid/os/HandlerThread;

    const-string/jumbo v2, "QualityResultHandlerThread_0"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    new-instance v18, Landroid/os/HandlerThread;

    const-string/jumbo v2, "QualitySocketHandlerThread"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualitySocketHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    new-instance v11, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CaptivePortalHandlerThread"

    invoke-direct {v11, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    new-instance v9, Landroid/os/HandlerThread;

    const-string/jumbo v2, "WWSMPatcherThread"

    invoke-direct {v9, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/wifi/WWSMPatcher;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroid/os/Messenger;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/wifi/WWSMPatcher;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Messenger;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

    const/4 v13, 0x0

    :goto_1
    const/16 v2, 0x1e

    if-ge v13, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistory:[Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    new-instance v3, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    invoke-direct {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;-><init>()V

    aput-object v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    const/16 v2, 0x1f4

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    const-string/jumbo v2, "default"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    const-string/jumbo v2, "default"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsWifiEnabled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v3, "SSMA"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataSCNT:Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.server.wifi.SCNT"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v14, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v3, "TCPE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    const/16 v3, 0x37

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const-string/jumbo v2, "FINISH"

    const-string/jumbo v3, "persist.sys.setupwizard"

    const-string/jumbo v4, "NOTSET"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "DEFAULT_ON"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v12

    const-string/jumbo v2, "WifiConnectivityMonitor"

    const-string/jumbo v3, "RemoteException - registerProcessObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method private addNetworkStatHistory(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistory:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryIndex:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryIndex:I

    sget v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryIndex:I

    :cond_1
    return-void
.end method

.method private calculateSignalLevel(I)I
    .locals 4

    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RSSI current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private canUseCaptivePortalParallelCheck()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canUseCaptivePortalParallelCheck: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->inChinaNetwork()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMptcpEnabled:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->inChinaNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMptcpEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_watchdog_version"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/high16 v7, -0x10000

    and-int/2addr v7, v3

    ushr-int/lit8 v5, v7, 0x10

    const/4 v6, 0x0

    const-string/jumbo v7, "ro.build.version.release"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    shl-int/lit8 v7, v6, 0x4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    add-int v6, v7, v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "Cannot retrieve version info from SystemProperties."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v7, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkVersion - Current version: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", New version: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    shl-int/lit8 v9, v6, 0x10

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_watchdog_poor_network_test_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v7, "DEFAULT_ON"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    :cond_4
    shl-int/lit8 v7, v6, 0x10

    add-int/lit8 v7, v7, 0x1

    if-eq v3, v7, :cond_5

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "Version chaged. Updating the version..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_watchdog_version"

    shl-int/lit8 v9, v6, 0x10

    add-int/lit8 v9, v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "checkVersion - failed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->initDataUsage()Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    return-object v6
.end method

.method private convertMiliSecondToSecond(JZ)I
    .locals 5

    const v0, 0x15180

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v1

    if-eqz p3, :cond_0

    const v2, 0x15180

    if-le v1, v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private determineDataUsageForWFSN(II)Z
    .locals 13

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v6

    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNmf"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNwf"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNmp"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNwp"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNmf"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNwf"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNmp"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFSN"

    const-string/jumbo v11, "SNwp"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    return v1
.end method

.method private determineMode()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequested:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRematchStatus:I

    if-ne v0, v1, :cond_1

    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "current mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->logi(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isIgnorableNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequested:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRematchStatus:I

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCpResult:I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isQCExceptionOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "isQCExceptionOnly"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->logi(Ljava/lang/String;)V

    :cond_3
    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->inChinaNetwork()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getChnKeepConnection()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "CHN keep connection"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->logi(Ljava/lang/String;)V

    :cond_5
    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "mAggressiveModeEnabled"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->logi(Ljava/lang/String;)V

    :cond_7
    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    goto :goto_0

    :cond_9
    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    goto :goto_0
.end method

.method private dumpArpTable()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/proc/net/arp"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->bSetQcResult:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->bSetQcResult:Z

    const/16 v7, 0xa

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setQcFailHistory(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->bSetQcResult:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v0, 0x0

    :cond_3
    :goto_5
    throw v7

    :catch_3
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v0, v1

    goto :goto_3
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v4

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountEmail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private getBroadcastNotificationMessage(IZ)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "info_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    sget-object v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->sDummyWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "targetSSID"

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "netId"

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private getCaptivePortalServerFallbackUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultFallbackUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "captive_portal_fallback_url"

    const-string/jumbo v2, "http://www.google.com/gen_204"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultFallbackUrl:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->makeCaptivePortalFallbackUrls(Landroid/content/Context;)[Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultFallbackUrl:Ljava/lang/String;

    return-object v1
.end method

.method private getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->inChinaNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "captive_portal_http_url"

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpUrl:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpUrl:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, "http://connectivity.samsung.com.cn/generate_204"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpsUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "captive_portal_https_url"

    const-string/jumbo v1, "https://www.google.com/generate_204"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpsUrl:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpsUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "captive_portal_user_agent"

    const-string/jumbo v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultUserAgent:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getEverQualityTested()I
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->sWifiOnly:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getKernelTime()Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    long-to-double v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v2, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getNetworkStatHistory()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistory:[Ljava/lang/String;

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const-string/jumbo v2, ""

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryIndex:I

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistory:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    rem-int v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method private getSubscriberId(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public static getValidateState()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsValidState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private inChinaNetwork()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateCountryIsoCode()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isChineseIso(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Need to skip captive portal check. CISO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized initCurrentQcFailRecord()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "initCurrentQcFailRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initDataUsage()Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/State;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isValidState()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNoCheckState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    if-eq v2, v6, :cond_3

    move v6, v7

    :goto_2
    if-nez v6, :cond_4

    xor-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v6, :cond_4

    return v7

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    if-nez v6, :cond_5

    const-string/jumbo v6, "netstats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_6

    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v6}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_3
    return v7

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v8

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private initNetworkStatHistory()V
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistory:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryUpdate:Z

    return-void
.end method

.method private isAggressiveModeEnabled()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "KTT"

    sget-object v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMptcpEnabled:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    :cond_3
    return v0
.end method

.method private isAggressiveModeEnabled(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAggressiveModeSupported()Z
    .locals 2

    const-string/jumbo v0, "NONE"

    sget-object v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeSupported:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isAppRunning(I)Z
    .locals 6

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private isChineseIso(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "cn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isComcastSsid(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsComcastWifiSupported:Z

    if-nez v0, :cond_0

    return v8

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v8

    :cond_1
    const-string/jumbo v0, "\""

    const-string/jumbo v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "content://com.smithmicro.netwise.director.comcast.oem.apiprovider/managed_networks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v7, 0x0

    :cond_2
    const-string/jumbo v0, "network"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "netwiseSsid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    return v8

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private isConnectedState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNotConnectedState:Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isExceptionPackage(I)Z
    .locals 10

    const/4 v7, 0x0

    move v2, p1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v0, v4, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7

    :catch_0
    move-exception v3

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "Unable to resolve UID."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7

    :cond_2
    return v7
.end method

.method private isInvalidState()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "In Invalid state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return v1
.end method

.method private isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKTCMWifiSettingScreen: top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.kt.wificm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v7

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private isMobileHotspot()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "SalesCode"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "vzw"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v8

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotNetworkId:I

    if-ne v3, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotValue:Z

    return v5

    :cond_1
    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotNetworkId:I

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotValue:Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iput-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotValue:Z

    return v7

    :cond_2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    :cond_3
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastCheckedMobileHotspotValue:Z

    return v7

    :cond_4
    return v8
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPackageExists - matched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NameNotFoundException + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5
.end method

.method private isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPackageRunning - top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v8

    :cond_2
    return v7
.end method

.method private isQCExceptionOnly()Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isSpecificPackageOnScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "isQCExceptionOnly - reason #"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "\"gogoinflight\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "\"Carnival-WiFi\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "\"orange\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "\"ChinaNet\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->m407ResponseReceived:Z

    if-eqz v3, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "QCEO #"

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "None"

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    const/4 v3, 0x0

    return v3
.end method

.method private isSimCheck()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSpecificPackageOnScreen(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSpecificPackageOnScreen: top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.akazam.android.wlandialer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, " Specific Package(com.akazam.android.wlandialer) is on SCREEN! "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v7

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private isSpecificPackageOnScreen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v7

    :cond_1
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSpecificPackageOnScreen: top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Specific Package("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") is on SCREEN! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v8

    :cond_5
    return v7
.end method

.method private isValidState()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "In Valid state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNoCheckState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return v1
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

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

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private loggingforTCPalgorithm()Ljava/lang/String;
    .locals 6

    sget-object v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTCPEdatalock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x5

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "Iteration "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " TCPAlgorithmResult "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " PackageName "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPackagenameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newEstablished "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newSyn "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newFin "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFinList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newTimeWait "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newCloseWait "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosewaitList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newRetransmission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRetrasmissionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newClosing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newLastAck "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastAckList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " UDPTraffic "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mVoipList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ReceivedPackets "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRxList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " TransmittedPackets "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTxList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Loss "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " TCPRSSI "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Frequency "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " LinkSpeed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_2
    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private makeCaptivePortalFallbackUrls(Landroid/content/Context;)[Ljava/net/URL;
    .locals 10

    const/4 v7, 0x0

    const-string/jumbo v3, ","

    const-string/jumbo v6, "captive_portal_fallback_url"

    const-string/jumbo v8, "http://www.google.com/gen_204"

    invoke-direct {p0, p1, v6, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "captive_portal_other_fallback_urls"

    const-string/jumbo v9, "http://play.googleapis.com/generate_204"

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v2, v8, v6

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v8, "could not create any url from %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/net/URL;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/net/URL;

    return-object v6
.end method

.method private makeIssueTrackerSysDump(I)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIssueTrackerRunning:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeIssueTrackerSysDump reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ERRPKG"

    const-string/jumbo v2, "WifiConnectivityMonitor"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "ERRCODE"

    const/16 v2, -0x71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ERRNAME"

    const-string/jumbo v2, "INVALID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ERRMSG"

    const-string/jumbo v2, "Invalid at good signal area"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v4
.end method

.method public static makeWifiConnectivityMonitor(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityMonitor;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v3, "ro.radio.noril"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->sWifiOnly:Z

    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->sWifiOnly:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "REMOVED"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    new-instance v2, Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->start()V

    invoke-static {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->checkVersion(Landroid/content/Context;)V

    return-object v2

    :cond_1
    const-string/jumbo v3, "wifi_watchdog_on"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v2, v2

    rem-int v0, v1, v2

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNextFallbackUrlIndex:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNextFallbackUrlIndex:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qualityCheckRequest(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->qualityCheckRequest(II)V

    return-void
.end method

.method private qualityCheckRequest(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->qualityCheckRequest(IIZ)V

    return-void
.end method

.method private qualityCheckRequest(IIZ)V
    .locals 9

    const v8, 0x21020

    const/4 v7, 0x3

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScreenOn:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isMobileHotspot()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    if-le p1, v1, :cond_4

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    if-ne v1, v7, :cond_2

    if-le p1, v7, :cond_4

    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "QC already requested as much as mQCSets!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v0

    if-lez v0, :cond_6

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The previous evaluation set - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] isn\'t finished!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInDhcpSession:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsInRoamSession:Z

    if-eqz v1, :cond_9

    :cond_7
    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "qualityCheckRequest is called during scan or DHCP session -> Cancel and reschedule the request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScanning:Z

    if-eqz v1, :cond_a

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScannedOnQC:Z

    :cond_a
    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[qualityCheckRequest] id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", hybridQcMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isValidState()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v6, :cond_c

    sget v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_FIRST:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLoggingForTCPStat(I)V

    :cond_c
    if-ge p2, v6, :cond_d

    if-le p2, v7, :cond_d

    const/4 p2, 0x3

    :cond_d
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v6, :cond_e

    iput p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInitQcHybridMode:I

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsPingableNetwork:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInitQcHybridMode:I

    invoke-static {v1, v8, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v1, v8, p1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private qualityCheckRequest(IZ)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isMobileHotspot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->qualityCheckRequest(IIZ)V

    return-void
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    if-ltz v0, :cond_2

    if-gt v0, v3, :cond_2

    if-ne v0, v3, :cond_0

    const-string/jumbo v3, "com.google"

    invoke-static {p0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag : Activated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - exception occured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerForMptcpChange()V
    .locals 4

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$5;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$5;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mptcp_value_internal"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$4;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$4;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$3;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$3;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private reportQCResult(II)V
    .locals 6

    const v5, 0x21023

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScannedOnQC:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const v0, 0x2105b

    if-eq p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    if-ne v0, v4, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    if-ge p2, v0, :cond_4

    :cond_1
    :goto_0
    const/4 p2, 0x5

    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportQCResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatHistoryUpdate:Z

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScannedOnQC:Z

    return-void

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    if-ge p2, v0, :cond_2

    goto :goto_0
.end method

.method private reportTestResult(I)V
    .locals 5

    const v4, 0x25067

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21062

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    if-ne p1, v2, :cond_0

    sput-boolean v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStartQcScreenOn:Z

    :cond_0
    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "Test result is reported. Start Scan."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-boolean v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalUrls:Landroid/os/Bundle;

    invoke-direct {p0, v4, p1, v3, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageToNetworkMonitor(IIILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalUrls:Landroid/os/Bundle;

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v4, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageToNetworkMonitor(II)V

    goto :goto_0
.end method

.method private requestDataUsage(II)J
    .locals 8

    if-nez p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    :goto_0
    const/4 v3, -0x1

    :try_start_0
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->collectHistoryForUid(Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " :: [uid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] getTotalBytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x1

    return-wide v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private requestInternetCheck()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEverQualityTested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x2100d

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method

.method private resetBigDataFeatureForSCNT()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->URL_MODE:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataSCNT:Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->initialize()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "SSMA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    return-void
.end method

.method private resetBigDataFeatureForTCPE()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->initialize()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "TCPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    return-void
.end method

.method private sendBigDataFeatureForSCNT()V
    .locals 4

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "Sns Big Data SCNT logging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "SSMA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureAllValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "SSMA"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;J)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->resetBigDataFeatureForSCNT()V

    return-void

    :cond_0
    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "error on Loging Big Data for SCNT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastFromWWSMForCurrentUser(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "sendBroadcastFromWWSMForCurrentUser()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequested:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "visible"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "info_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "Skip Notification by MN : NOTIFICATION_FOR_SNS_NO_INTERNET_HUN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send broadcast before boot - action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMessageToNetworkMonitor(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageToNetworkMonitor(IIILjava/lang/Object;)V

    return-void
.end method

.method private sendMessageToNetworkMonitor(IIILjava/lang/Object;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMessageToNetworkMonitor exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "WifiConnectivityMonitor"

    const-string/jumbo v3, "sendMessageToNetworkMonitor - mNetworkMonitorChannel is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiConnectivityMonitor"

    const-string/jumbo v3, "sendMessageToNetworkMonitor - reconnect to NetworkMonitor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkMonitorMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0
.end method

.method private sendParallelResultMessage(IILcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;)V
    .locals 1

    const v0, 0x2104e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setBigDataNetworkSwitched()V
    .locals 14

    const-wide/16 v10, 0x3e8

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v12, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v3, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    if-ne v3, v12, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v2, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isValidState()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiConnectivityMonitor"

    const-string/jumbo v6, "BigData Network Switch, Valid > Invalid"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidStartTime:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v10

    long-to-int v3, v6

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidatedTime:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VTYP"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VSTE"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VTRI"

    invoke-virtual {v3, v6, v7, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VFRN"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VCBT"

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VTPG"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VTPD"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    sub-long/2addr v8, v10

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VTPM"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VTPW"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-direct {p0, v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VSPG"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VSPD"

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevAppAppearedTime:J

    sub-long/2addr v8, v10

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VSPM"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VSPW"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    invoke-direct {p0, v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VBYT"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VSTA"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VISO"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VUID"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VRSS"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentRssi:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VLSP"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLinkSpeed:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v7, "SSVI"

    const-string/jumbo v8, "VPDE"

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v7, v8, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v7, "SSVI"

    const-string/jumbo v8, "VUIE"

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v7, v8, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSVI"

    const-string/jumbo v7, "VAME"

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {v3, v6, v7, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPRE"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "pass"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPTI"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "attemptNum"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPTY"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPTO"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "timeoutMillis"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPRT"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "rtt"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPBS"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "payloadSize"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPBR"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "recvBytes"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPPS"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "sentPkt"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VPPR"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "recvPkt"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VGLT"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VCST"

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidatedTime:I

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    const-string/jumbo v6, "VAPO"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mApOui:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSVI"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidStartTime:J

    :goto_4
    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidatedTime:I

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidatedTime:I

    iput-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v2, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    goto/16 :goto_0

    :cond_3
    move v3, v5

    goto/16 :goto_1

    :cond_4
    move v3, v5

    goto/16 :goto_2

    :cond_5
    move v4, v5

    goto/16 :goto_3

    :cond_6
    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "WifiConnectivityMonitor"

    const-string/jumbo v6, "BigData Network Switch, Invalid > Valid"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidStartTime:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v10

    long-to-int v3, v6

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidatedTime:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ITYP"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ISTE"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ITRI"

    invoke-virtual {v3, v6, v7, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "IFRN"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ICBT"

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ITPG"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ITPD"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    sub-long/2addr v8, v10

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ITPM"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ITPW"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-direct {p0, v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ISPG"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ISPD"

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevAppAppearedTime:J

    sub-long/2addr v8, v10

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ISPM"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ISPW"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    invoke-direct {p0, v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "IBYT"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ISTA"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "IISO"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "IUID"

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "IRSS"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentRssi:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "ILSP"

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLinkSpeed:I

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v7, "SSIV"

    const-string/jumbo v8, "IPDE"

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_5
    invoke-virtual {v6, v7, v8, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v7, "SSIV"

    const-string/jumbo v8, "IUIE"

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_6
    invoke-virtual {v6, v7, v8, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v6, "SSIV"

    const-string/jumbo v7, "IAME"

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-eqz v8, :cond_a

    :goto_7
    invoke-virtual {v3, v6, v7, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPRE"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "pass"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPTI"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "attemptNum"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPTY"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPTO"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "timeoutMillis"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPRT"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "rtt"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPBS"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "payloadSize"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPBR"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "recvBytes"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPPS"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "sentPkt"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IPPR"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const-string/jumbo v8, "recvPkt"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IGLT"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "ICST"

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mInvalidatedTime:I

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    const-string/jumbo v6, "IAPO"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mApOui:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v4, "SSIV"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidStartTime:J

    goto/16 :goto_4

    :cond_8
    move v3, v5

    goto/16 :goto_5

    :cond_9
    move v3, v5

    goto/16 :goto_6

    :cond_a
    move v4, v5

    goto/16 :goto_7
.end method

.method private setBigDataQCandNS(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setBigDataQualityCheck(ZZ)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setBigDataNetworkSwitched()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->initCurrentQcFailRecord()V

    return-void
.end method

.method private setBigDataQualityCheck(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setBigDataQualityCheck(ZZ)V

    return-void
.end method

.method private setBigDataQualityCheck(ZZ)V
    .locals 18

    const/4 v6, 0x0

    sget-object v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResult:Landroid/os/Bundle;

    if-eqz v11, :cond_0

    new-instance v7, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResult:Landroid/os/Bundle;

    invoke-direct {v7, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResult:Landroid/os/Bundle;

    invoke-direct {v11, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultOnNetworkSwitched:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResult:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    :cond_0
    monitor-exit v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckStartOfCycle:J

    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8, v4, v5}, Ljava/util/Random;-><init>(J)V

    sget-wide v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckCycle:J

    long-to-int v11, v12

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-long v12, v11

    sub-long v12, v4, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckStartOfCycle:J

    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckStartOfCycle:J

    sub-long v12, v4, v12

    sget-wide v14, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckCycle:J

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    sget-wide v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckCycle:J

    div-long v12, v4, v12

    sget-wide v14, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckCycle:J

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckStartOfCycle:J

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckLoggingCount:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v11, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v10, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    :goto_0
    const-string/jumbo v9, "setBigDataQualityCheck - "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", COUNT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckLoggingCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", pass: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [i]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [type]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [s]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [t]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [e]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [b]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [u]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", RSSI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentRssi:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", SPEED:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLinkSpeed:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v6, :cond_6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckLoggingCount:I

    sget v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMaxBigDataQualityCheckLogging:I

    if-ge v11, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WFQC"

    const-string/jumbo v14, "QRES"

    if-eqz p1, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v13, v14, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QTYP"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QSTE"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QTRI"

    invoke-virtual {v11, v12, v13, v10}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QFRN"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QCBT"

    invoke-virtual {v11, v12, v13, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QTPG"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QTPD"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QTPM"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QTPW"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QSPG"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QSPD"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevAppAppearedTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QSPM"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QSPW"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestDataUsage(II)J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QBYT"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QSTA"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QISO"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QUID"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QRSS"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentRssi:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QLSP"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLinkSpeed:I

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WFQC"

    const-string/jumbo v14, "QPDE"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v13, v14, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WFQC"

    const-string/jumbo v14, "QUIE"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v13, v14, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WFQC"

    const-string/jumbo v14, "QAME"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v13, v14, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPRE"

    const-string/jumbo v14, "pass"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPTI"

    const-string/jumbo v14, "attemptNum"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPTY"

    const-string/jumbo v14, "type"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPTO"

    const-string/jumbo v14, "timeoutMillis"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPRT"

    const-string/jumbo v14, "rtt"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPBS"

    const-string/jumbo v14, "payloadSize"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPBR"

    const-string/jumbo v14, "recvBytes"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPPS"

    const-string/jumbo v14, "sentPkt"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    const-string/jumbo v13, "QPPR"

    const-string/jumbo v14, "recvPkt"

    const/4 v15, -0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    invoke-virtual {v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v12, "WFQC"

    invoke-virtual {v11, v12}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    :goto_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckLoggingCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBigDataQualityCheckLoggingCount:I

    sget-boolean v11, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "WifiConnectivityMonitor"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->initCurrentQcFailRecord()V

    :cond_4
    return-void

    :catchall_0
    move-exception v11

    :goto_7
    monitor-exit v12

    throw v11

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v10, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    goto/16 :goto_0

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", [[[ ping_pass: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "pass"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_attemptNum: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "attemptNum"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_type :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "type"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_timeoutMillis: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "timeoutMillis"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_rtt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "rtt"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_payloadSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "payloadSize"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_recvBytes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "recvBytes"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_sentPkt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "sentPkt"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ping_recvPkt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "recvPkt"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ]]]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "**"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    :catchall_1
    move-exception v11

    move-object v6, v7

    goto/16 :goto_7
.end method

.method private setLoggingForTCPStat(I)V
    .locals 18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v11, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v12, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v11, v12}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    :goto_0
    sget v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_RESET:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempLogged:Ljava/lang/String;

    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempTCPLoggedTime:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v7, ""

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    const/4 v4, 0x0

    :try_start_2
    const-string/jumbo v12, "netstat -tlpanW"

    invoke-virtual {v9, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    sget v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_FIRST:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempTCPLoggedTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempLogged:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    const/4 v4, 0x0

    :cond_3
    :goto_4
    return-void

    :cond_4
    :try_start_5
    sget v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->TCP_STAT_LOGGING_SECOND:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempTCPLoggedTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstTCPLoggedTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTCPLoggedTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTempLogged:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstLogged:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastLogged:Ljava/lang/String;

    sget-boolean v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "WifiConnectivityMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "1.TCP stat\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstLogged:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "WifiConnectivityMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "2.TCP stat\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastLogged:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v4, v5

    :goto_5
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_4

    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v4, 0x0

    :cond_5
    :goto_7
    :try_start_8
    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v3

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_7

    :catchall_1
    move-exception v12

    move-object v4, v5

    goto :goto_6

    :catch_5
    move-exception v3

    goto :goto_5

    :catch_6
    move-exception v10

    goto/16 :goto_0

    :cond_6
    move-object v4, v5

    goto/16 :goto_4
.end method

.method private setPoorConnectionDisconnectNotificationVisible(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_poor_connection_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "Ignore msg from WWSM because of WIFI_POOR_CONNECTION_WARNING(DoNotShow flag is true)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorConnectionDisconnectedNetId:I

    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getBroadcastNotificationMessage(IZ)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendBroadcastFromWWSMForCurrentUser(Landroid/content/Intent;)V

    return-void
.end method

.method private declared-synchronized setQcFailHistory()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setQcFailHistory(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setQcFailHistory(Ljava/lang/String;)V
    .locals 18

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->bSetQcResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    :try_start_2
    new-instance v10, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v13, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v13}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v13}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :goto_1
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_7

    const-string/jumbo v13, ", [i]"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", [s]"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", [t]"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", [e]"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", [b]"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", [u]"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/server/wifi/WifiConnectivityMonitor;->SNS_VERSION:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentRssi:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLinkSpeed:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getAggressiveModeFeatureStatus()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v7, v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    rem-int/lit8 v13, v13, 0x1e

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    :cond_3
    :try_start_5
    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x10

    if-le v13, v14, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v13, 0xc

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v13, 0xd

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v13, 0x10

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v14, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNormalState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    if-eq v13, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidAggressiveState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    if-ne v13, v14, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentQcFail:Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    const-string/jumbo v13, ", [ns]"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getNetworkStatHistory()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_3
    :try_start_6
    const-string/jumbo v13, "WifiConnectivityMonitor"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->bSetQcResult:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryTotal:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryTotal:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    const-string/jumbo v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", ex"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method private setRssiPatchHistory(IIJ)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setRssiPatchHistory(Ljava/lang/String;IIJ)V

    return-void
.end method

.method private setRssiPatchHistory(Ljava/lang/String;IIJ)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v3, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistory:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryTotal:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryTotal:I

    return-void

    :cond_0
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    rem-int/lit16 v4, v4, 0x4650

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    goto :goto_0

    :cond_1
    :try_start_2
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private setStateForWFSN(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStateTime:J

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentState:Ljava/lang/String;

    return-void
.end method

.method private setupNetworkReceiver()V
    .locals 3

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$2;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.captiveportallogin.APP_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.server.wifi.SCNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private skipPoorConnectionReport()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, -0x50

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isRoamingNetwork()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "skipPoorConnectionReport - Condition satisfied."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_2
    return v2
.end method

.method private syncGetCurrentNetwork()Landroid/net/Network;
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncGetNetworkId result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

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

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLinkSpeed:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentRssi:I

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "WifiConnectivityMonitor"

    const-string/jumbo v3, "WifiInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->sDummyWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLinkSpeed:I

    const/16 v2, -0x64

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentRssi:I

    goto :goto_0
.end method

.method private syncUpdateCaptivePortalValues(I)I
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x21019

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    iget v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CP value result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private updateCountryIsoCode()V
    .locals 8

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCountryIsoCode() via TelephonyManager : mCountryIso: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v7, :cond_5

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CountryISO"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_4

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-boolean v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCountryIsoCode() via Property(CSC) : mCountryIso: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CountryISO"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDeviceCountryCode:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "Exception occured at updateCountryIsoCode(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string/jumbo v4, " "

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_sns_visited_country_iso"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_sns_visited_country_iso"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WIFI_SNS_VISITED_COUNTRY_ISO is null, putString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v4, "LGU"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_sns_visited_country_iso"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WIFI_SNS_VISITED_COUNTRY_ISO need to be updated from/to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_sns_visited_country_iso"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Initialize WIFI_POOR_CONNECTION_WARNING to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_poor_connection_warning"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_sns_visited_country_iso"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCountryIso:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_7
    :try_start_4
    const-string/jumbo v4, " "

    iput-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDeviceCountryCode:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v3

    goto/16 :goto_3
.end method

.method private updateCurrentBssid(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update current BSSID to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssidLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEmptyBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v2, "BSSID changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    const v0, 0x21007

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit v1

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mBssidCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentBssid:Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    invoke-virtual {v0, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v2, "BSSID changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mValidNonSwitchableState:Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    const v0, 0x21007

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateDnsLinkProperty()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "updateDnsLinkProperty: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateGatewayIp()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get2(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-get2(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDnsServerList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;)Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;)Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsPingableNetwork:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFragmentedPingableNetwork:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFragmentedPingCheckCount:I

    return-void
.end method

.method private updateGatewayIp()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0.0.0.0/0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGatewayIp:Ljava/net/InetAddress;

    return-void

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGatewayIp:Ljava/net/InetAddress;

    return-void
.end method

.method private updatePoorNetworkParameters()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->semIsMobilePolicyDataEnabled()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMobilePolicyDataEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    const/4 v6, 0x0

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    const/4 v6, 0x1

    :cond_2
    :goto_1
    if-nez v18, :cond_f

    const/4 v12, 0x0

    :cond_3
    :goto_2
    const-string/jumbo v19, "DEFAULT_ON"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "wifi_watchdog_poor_network_test_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_19

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v7, :cond_5

    sget-boolean v19, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[@_ON] : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateTargetRssiForCurrentAP(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "mobile_data"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_1a

    const/4 v9, 0x1

    :goto_6
    const-string/jumbo v19, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDeviceCountryCode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    xor-int/lit8 v19, v9, 0x1

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.samsung.android.settings.wifi.WifiConnectionHandlerActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isSpecificPackageOnScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    sget-boolean v19, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v19, :cond_6

    const-string/jumbo v19, "WifiConnectivityMonitor"

    const-string/jumbo v20, "CN-CHM - MOBILE_DATA disabled temporarily by WifiConnectionHandlerActivity. - IGNORE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v9, 0x1

    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "airplane_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_1c

    if-eqz v9, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    :goto_8
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isSimCheck()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v12, v0, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMobilePolicyDataEnable:Z

    move/from16 v19, v0

    :goto_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "wifi_wwsm_patch_remove_sns_menu_from_settings"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_1e

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUserOwner:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mImsRegistered:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_1f

    move/from16 v19, v17

    :goto_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    move/from16 v19, v0

    :goto_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sput-wide v20, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkAvoidanceEnabledTime:J

    const-string/jumbo v19, "WifiConnectivityMonitor"

    const-string/jumbo v20, "ANS turned on. Do not start scan for a while."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v21, "wifi_watchdog_poor_network_test_enabled"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_21

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v21, "airplane_mode_on"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_22

    const/16 v19, 0x1

    :goto_e
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v12, v0, :cond_23

    const/16 v19, 0x1

    :goto_f
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMobilePolicyDataEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUserOwner:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mImsRegistered:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setUrlList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnLockObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnMsg:Landroid/os/Message;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v8, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v7, :cond_c

    :cond_a
    sget-boolean v19, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v19, :cond_b

    const-string/jumbo v19, "WifiConnectivityMonitor"

    const-string/jumbo v21, "writing status on WFSN for sns bigdata - updatePoorNetworkParameters"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_24

    const/4 v4, 0x0

    :goto_10
    if-eqz v8, :cond_27

    if-nez v7, :cond_26

    const/4 v10, 0x0

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousStatusStartedTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousStatusStartedTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-object/from16 v19, v0

    const-string/jumbo v21, "WFSN"

    const-string/jumbo v22, "Sput"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-object/from16 v19, v0

    const-string/jumbo v21, "WFSN"

    const-string/jumbo v22, "Spst"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v10}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-object/from16 v19, v0

    const-string/jumbo v21, "WFSN"

    const-string/jumbo v22, "Scst"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnMsg:Landroid/os/Message;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnMsg:Landroid/os/Message;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->recycle()V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnMsg:Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    monitor-exit v20

    sget-boolean v19, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v19, :cond_d

    const-string/jumbo v20, "WifiConnectivityMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updatePoorNetworkAvoidance - Poor Network Test Enabled / !mIsFmcNetwork : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v21, " - mUIEnabled:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_28

    const-string/jumbo v19, "enabled"

    :goto_12
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "WifiConnectivityMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updatePoorNetworkDetection - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / MobilePolicyDataDisabled / !mIsFmcNetwork / mUserOwner / !mImsRegistered / snsDisabled: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v21, " - mPoorNetworkDetectionEnabled: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_29

    const-string/jumbo v19, "enabled"

    :goto_13
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v19

    if-eqz v19, :cond_d

    const-string/jumbo v20, "WifiConnectivityMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v22, "wifi_watchdog_poor_network_test_enabled"

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_2a

    const/16 v19, 0x1

    :goto_14
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v21, " - mAggressiveModeEnabled:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    const-string/jumbo v19, "enabled"

    :goto_15
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getAggressiveModeFeatureStatus()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v19, "WifiConnectivityMonitor"

    const-string/jumbo v20, "updatePoorNetworkParameters - Exception while retrieving ConnectionManager"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_10

    if-eqz v6, :cond_15

    :cond_10
    const-string/jumbo v19, "gsm.sim.state"

    const-string/jumbo v20, "-1,-1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v19, "READY"

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/4 v13, 0x5

    :cond_11
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_12

    const-string/jumbo v19, "READY"

    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/4 v14, 0x5

    :cond_12
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v13, v0, :cond_13

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v14, v0, :cond_14

    :cond_13
    const/4 v12, 0x5

    :goto_16
    sget-boolean v19, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v19, :cond_3

    const-string/jumbo v19, "WifiConnectivityMonitor"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "simState1 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "simState2 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "simState = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_14
    const/4 v12, 0x0

    goto :goto_16

    :cond_15
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    goto/16 :goto_2

    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "wifi_watchdog_poor_network_test_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    :goto_17
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    goto/16 :goto_4

    :cond_18
    const/16 v19, 0x0

    goto :goto_17

    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_1b
    sget-boolean v19, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v19, :cond_7

    const-string/jumbo v19, "WifiConnectivityMonitor"

    const-string/jumbo v20, "CN-CHM - MOBILE_DATA disabled manually."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_b

    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_d

    :cond_22
    const/16 v19, 0x0

    goto/16 :goto_e

    :cond_23
    const/16 v19, 0x0

    goto/16 :goto_f

    :cond_24
    const/4 v4, 0x1

    goto/16 :goto_10

    :cond_25
    const/4 v4, 0x2

    goto/16 :goto_10

    :cond_26
    const/4 v10, 0x1

    goto/16 :goto_11

    :cond_27
    const/4 v10, 0x2

    goto/16 :goto_11

    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_28
    const-string/jumbo v19, "disabled"

    goto/16 :goto_12

    :cond_29
    const-string/jumbo v19, "disabled"

    goto/16 :goto_13

    :cond_2a
    const/16 v19, 0x0

    goto/16 :goto_14

    :cond_2b
    const-string/jumbo v19, "disabled"

    goto/16 :goto_15
.end method

.method private updateSettings()V
    .locals 5

    const v4, 0x21017

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "Updating secure settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->sWifiOnly:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "Disabling poor network avoidance for wi-fi only device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating secure settings - mPoorNetworkDetectionEnabled/mUIEnabled/mAggressiveModeEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getAggressiveModeFeatureStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updatePoorNetworkParameters()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isConnectedState()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isQCExceptionOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "updatePoorNetworkDetection = false because it is an QCExceptionOnly"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setEvaluationParameters()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_2

    :cond_7
    const v1, 0x2104f

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating secure settings - mPoorNetworkDetectionEnabled/mUIEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateTargetRssiForCurrentAP(Z)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode2G:I

    add-int/lit8 v6, v6, 0x3

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor"

    const-string/jumbo v6, "updateTargetRssiForCurrentAP - mWifiManager == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v5, "WifiConnectivityMonitor"

    const-string/jumbo v6, "updateTargetRssiForCurrentAP - config == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    const/16 v6, 0xfa0

    if-le v5, v6, :cond_4

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v5, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode5G:I

    :goto_1
    add-int/lit8 v1, v5, 0x3

    if-ge v4, v1, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iput v4, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    :goto_2
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    const v6, 0x21036

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    :cond_2
    sget-boolean v5, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTargetRssiForCurrentAP - SSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", frequency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", is5G: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mParam.mRssiThreshold@CurrentAP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v5, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode2G:I

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iput v1, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    goto :goto_2
.end method

.method private updateWNICBigdata(I)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateWNICBigdata(IJ)V

    return-void
.end method

.method private updateWNICBigdata(IJ)V
    .locals 18

    sget-object v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mLock:Ljava/lang/Object;

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    sput-object v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mLock:Ljava/lang/Object;

    :cond_0
    sget-object v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUidLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUid:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    sget-object v12, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-wide v16, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->frontAppearedTime:J

    sub-long v14, v14, v16

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v5

    sget-wide v14, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->frontAppearedTime:J

    sget-wide v16, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->prevAppearedTime:J

    sub-long v14, v14, v16

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wnie_i"

    move/from16 v0, p1

    invoke-virtual {v11, v13, v14, v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wpht_i"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wfpn"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wpfp"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousPackageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wfut_i"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wput_i"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v14, "WNIC"

    const-string/jumbo v15, "Wfci_i"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v13, v14, v15, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v14, "WNIC"

    const-string/jumbo v15, "Wftw_i"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v13, v14, v15, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v14, "WNIC"

    const-string/jumbo v15, "Wpci_i"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v13, v14, v15, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v14, "WNIC"

    const-string/jumbo v15, "Wptw_i"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v13, v14, v15, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wrsi_i"

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->isManualConnection()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v4, 0x1

    :goto_4
    add-int/lit8 v11, v4, 0x1

    rem-int/lit8 v4, v11, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Wimc_i"

    invoke-virtual {v11, v13, v14, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x8

    if-le v11, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    const-string/jumbo v14, "Woui"

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    invoke-virtual {v11, v13}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v13, "WNIC"

    invoke-virtual {v11, v13}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v12

    return-void

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/4 v4, 0x2

    goto :goto_4

    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11
.end method


# virtual methods
.method public accumulateTCPdata(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZJJDII)V
    .locals 6

    sget-object v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTCPEdatalock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPackagenameList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEstablishList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSynList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFinList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosewaitList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRetrasmissionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosingList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastAckList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mVoipList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTxList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRxList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkSpeedList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPackagenameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosewaitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRetrasmissionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastAckList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mVoipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPackagenameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFinList:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosewaitList:Ljava/util/ArrayList;

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRetrasmissionList:Ljava/util/ArrayList;

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosingList:Ljava/util/ArrayList;

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastAckList:Ljava/util/ArrayList;

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mVoipList:Ljava/util/ArrayList;

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTxList:Ljava/util/ArrayList;

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRxList:Ljava/util/ArrayList;

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiList:Ljava/util/ArrayList;

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-static/range {p16 .. p17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkSpeedList:Ljava/util/ArrayList;

    invoke-static/range {p19 .. p19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Check accumulateTCPdata Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public checkDnsQuery()V
    .locals 2

    const v0, 0x2100c

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(II)V

    return-void
.end method

.method public checkForMaliciousHotspotAddress(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->checkForMaliciousHotspotAddress(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public doPingTest(I)I
    .locals 38

    const-string/jumbo v4, "WifiConnectivityMonitor:doPingTest"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v29

    const/4 v10, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingCount:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingFailCount:I

    move/from16 v34, v0

    sub-int v13, v33, v34

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v33

    const/16 v34, 0xfa0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_c

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5GAgg:I

    move/from16 v19, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytesOverride:I

    move/from16 v33, v0

    if-eqz v33, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytesOverride:I

    move/from16 v19, v0

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5GAgg:I

    move/from16 v20, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeoutOverride:I

    move/from16 v33, v0

    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeoutOverride:I

    move/from16 v20, v0

    :cond_1
    const/16 v33, 0x2

    move/from16 v0, p1

    move/from16 v1, v33

    if-lt v0, v1, :cond_2

    const/16 v19, 0x0

    const/16 v20, 0x3e8

    :cond_2
    const-string/jumbo v17, "|"

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v33, :cond_14

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Enter doPingTest - pingCount : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingCount:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", pingTimeOut : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", pingReqBytes : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " (@mode:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    move/from16 v33, v0

    const/16 v35, 0x3

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    const/16 v33, 0x1

    :goto_3
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", is5G:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    const-string/jumbo v33, "0.0.0.0"

    invoke-static/range {v33 .. v33}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGatewayIp:Ljava/net/InetAddress;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mGatewayIp:Ljava/net/InetAddress;

    :cond_4
    const/16 v32, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_2f

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v33, :cond_16

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "PING - pingReqBytes: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "mConfirmedPingableBytes: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", pingTimeOut: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", ipAddr: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_6
    const/16 v16, 0x0

    const-wide/16 v6, 0x0

    const/16 v21, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-string/jumbo v33, "wlan0"

    invoke-static/range {v33 .. v33}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v14

    new-instance v18, Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11}, Lcom/android/server/wifi/IcmpEchoPeer;-><init>(Landroid/net/LinkProperties;Ljava/net/InetAddress;)V

    const/4 v5, 0x0

    move/from16 v8, v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFragmentedPingableNetwork:Z

    move/from16 v33, v0

    if-nez v33, :cond_6

    if-nez v19, :cond_17

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_7

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Checking with confirmed ping size: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    :cond_8
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/android/server/wifi/IcmpEchoPeer;->doPingPipeLine(II)Landroid/os/Bundle;

    move-result-object v5

    :goto_7
    const-string/jumbo v33, "rtt"

    const/16 v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    const-string/jumbo v33, "truncated"

    const/16 v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_19

    const/16 v21, 0x1

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v30, v34, v26

    const-string/jumbo v33, "wlan0"

    invoke-static/range {v33 .. v33}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v34

    sub-long v6, v34, v14

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/IcmpEchoPeer;->close()V

    sget-object v34, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResultLock:Ljava/lang/Object;

    monitor-enter v34
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResult:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastPingResult:Landroid/os/Bundle;

    move-object/from16 v33, v0

    const-string/jumbo v35, "attemptNum"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v34
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v24, :cond_1c

    const/16 v16, 0x1

    :cond_9
    :goto_9
    if-eqz v16, :cond_22

    add-int/lit8 v25, v25, 0x1

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v21, :cond_21

    const-string/jumbo v33, "O[Truncated]|"

    :goto_a
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v33, :cond_a

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "doPing Logging, trial#"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", successCounter "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , wifirssi, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , Freq, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , Received "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move/from16 v0, v25

    if-lt v0, v13, :cond_2e

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_b

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " -> PASS !!!!!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const v33, 0x96b43f

    return v33

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2GAgg:I

    move/from16 v19, v0

    goto/16 :goto_1

    :cond_e
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5G:I

    move/from16 v19, v0

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2G:I

    move/from16 v19, v0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2GAgg:I

    move/from16 v20, v0

    goto/16 :goto_2

    :cond_11
    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5G:I

    move/from16 v20, v0

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2G:I

    move/from16 v20, v0

    goto/16 :goto_2

    :cond_13
    const/16 v33, 0x0

    goto/16 :goto_3

    :cond_14
    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_3

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Enter doPingTest - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingCount:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    move/from16 v33, v0

    const/16 v35, 0x3

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    const/16 v33, 0x1

    :goto_b
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_15
    const/16 v33, 0x0

    goto :goto_b

    :cond_16
    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_5

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "PING - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "B/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mConfirmedPingableBytes:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "B/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "ms/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/net/InetAddress;->hashCode()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_17
    :try_start_3
    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_18

    const-string/jumbo v33, "checkSinglePacketPing"

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v33, 0x3e8

    const/16 v34, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/IcmpEchoPeer;->doPingPipeLine(II)Landroid/os/Bundle;

    move-result-object v5

    goto/16 :goto_7

    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_8

    :catchall_0
    move-exception v33

    monitor-exit v34

    throw v33
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v9

    :try_start_4
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "doPingTest Exception"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v16, :cond_26

    add-int/lit8 v25, v25, 0x1

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    if-eqz v21, :cond_25

    const-string/jumbo v33, "O[Truncated]|"

    :goto_c
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v33, :cond_1a

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "doPing Logging, trial#"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", successCounter "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , wifirssi, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , Freq, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , Received "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move/from16 v0, v25

    if-lt v0, v13, :cond_2e

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_1b

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " -> PASS !!!!!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const v33, 0x96b43f

    return v33

    :cond_1c
    const-wide/16 v34, 0x0

    cmp-long v33, v30, v34

    if-lez v33, :cond_9

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    mul-long v34, v34, v6

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    :try_start_5
    div-long v22, v34, v36

    if-nez v19, :cond_1f

    const/16 v28, 0x5c8

    :goto_d
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v33, v22, v34

    if-lez v33, :cond_20

    const/16 v16, 0x1

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_9

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " [ICMP PING REPLY TIME-OUT] - Received "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " bytes (Normalized)"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_9

    :catchall_1
    move-exception v33

    if-eqz v16, :cond_2a

    add-int/lit8 v25, v25, 0x1

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    if-eqz v21, :cond_29

    const-string/jumbo v34, "O[Truncated]|"

    :goto_e
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-boolean v34, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v34, :cond_1d

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "doPing Logging, trial#"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", successCounter "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " , wifirssi, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " , Freq, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " , Received "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " bytes"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move/from16 v0, v25

    if-lt v0, v13, :cond_2d

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_1e

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " -> PASS !!!!!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const v33, 0x96b43f

    return v33

    :cond_1f
    move/from16 v28, v19

    goto/16 :goto_d

    :cond_20
    const/16 v16, 0x0

    goto/16 :goto_9

    :cond_21
    const-string/jumbo v33, "O|"

    goto/16 :goto_a

    :cond_22
    add-int/lit8 v10, v10, 0x1

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "X|"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v33, :cond_23

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "doPing Logging, trial#"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", failCounter"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", wifirssi, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", Freq, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , Received "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingFailCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v10, v0, :cond_2e

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_24

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " -> FAIL !!!!!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    const/16 v33, 0x3

    return v33

    :cond_24
    const-string/jumbo v33, "WifiConnectivityMonitor"

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_25
    const-string/jumbo v33, "O|"

    goto/16 :goto_c

    :cond_26
    add-int/lit8 v10, v10, 0x1

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "X|"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v33, :cond_27

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "doPing Logging, trial#"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", failCounter"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", wifirssi, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", Freq, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " , Received "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingFailCount:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-lt v10, v0, :cond_2e

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_28

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " -> FAIL !!!!!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    const/16 v33, 0x3

    return v33

    :cond_28
    const-string/jumbo v33, "WifiConnectivityMonitor"

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_29
    const-string/jumbo v34, "O|"

    goto/16 :goto_e

    :cond_2a
    add-int/lit8 v10, v10, 0x1

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "X|"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-boolean v34, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v34, :cond_2b

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "doPing Logging, trial#"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", failCounter"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", wifirssi, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", Freq, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " , Received "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " bytes"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingFailCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-lt v10, v0, :cond_2d

    sget-boolean v33, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v33, :cond_2c

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " -> FAIL !!!!!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const/16 v33, 0x3

    return v33

    :cond_2c
    const-string/jumbo v33, "WifiConnectivityMonitor"

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_2d
    throw v33

    :cond_2e
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    :cond_2f
    const/16 v33, 0x4

    return v33
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x4650

    const/16 v9, 0x1e

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWifiInfo: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mLinkProperties: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCurrentSignalLevel: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentSignalLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionSummary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUIEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mUIEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkAvoidanceSummary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isAggressiveModeSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAggressiveModeEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAggressiveModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getAggressiveModeFeatureStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMptcpEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMptcpEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isQCExceptionSummary: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->isQCExceptionSummary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mQcHistoryTotal: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], mQcDumpVer: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcDumpVer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "info: l2"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "info: fd"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDnsServerList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDnsServerList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWWSMP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

    invoke-virtual {v7}, Lcom/android/server/wifi/WWSMPatcher;->getDumpMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMHD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getDumpMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v6, "========MN History========"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "None"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v6, " "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryTotal:I

    if-lez v6, :cond_9

    sget-object v7, Lcom/android/server/wifi/WifiConnectivityMonitor;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v9, :cond_6

    const/4 v2, 0x0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_8

    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    aget-object v6, v6, v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :try_start_2
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcHistoryHead:I

    rem-int/lit8 v2, v6, 0x1e
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "]: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQcDumpHistory:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    add-int/lit8 v6, v2, 0x1

    :try_start_4
    rem-int/lit8 v2, v6, 0x1e

    goto :goto_3

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "]: ex"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_8
    monitor-exit v7

    const-string/jumbo v6, " "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v6, "========TCP STAT========"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[1] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstTCPLoggedTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFirstLogged:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[2] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTCPLoggedTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastLogged:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "========PKTCNT_POLL========"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryTotal:I

    if-ge v6, v10, :cond_a

    const/4 v4, 0x0

    :goto_5
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v10, :cond_c

    :try_start_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistory:[Ljava/lang/String;

    aget-object v6, v6, v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v6, :cond_b

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistoryHead:I

    rem-int/lit16 v4, v6, 0x4650

    goto :goto_5

    :cond_b
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiPatchHistory:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_8
    add-int/lit8 v6, v4, 0x1

    rem-int/lit16 v4, v6, 0x4650

    goto :goto_7

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: ex"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    return-void
.end method

.method public fastDisconnectClear()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x3f97000000000000L    # -200.0

    sput-wide v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssiEMA:D

    return-void
.end method

.method public fastDisconnectEvaluate()Z
    .locals 24

    const/4 v4, 0x0

    const-wide/high16 v16, -0x8000000000000000L

    const-wide/high16 v14, -0x3f97000000000000L    # -200.0

    const-wide/high16 v12, -0x3f97000000000000L    # -200.0

    const-wide/high16 v6, -0x3f97000000000000L    # -200.0

    const-wide/high16 v8, -0x3f97000000000000L    # -200.0

    sget-boolean v11, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v18, "fastDisconnectEvaluate: Enter."

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RAW_RSSI_SIZE:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    sget-boolean v11, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v18, "Not enough data to evaluate FD."

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v11, 0x0

    return v11

    :cond_2
    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVALUATE_COUNT:I

    if-ge v5, v11, :cond_6

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    if-ge v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    add-int v18, v10, v4

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v6, v16, v18

    if-nez v5, :cond_5

    move-wide v12, v6

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v16, 0x0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVALUATE_COUNT:I

    add-int/lit8 v11, v11, -0x1

    if-ne v5, v11, :cond_4

    move-wide v14, v6

    goto :goto_2

    :cond_6
    sub-double v8, v14, v12

    sget-boolean v11, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v11, :cond_7

    const-string/jumbo v11, "WifiConnectivityMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "fastDisconnectEvaluate: oldest="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", latest="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", diff="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-double v20, v14, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-wide v18, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssiEMA:D

    const-wide/high16 v20, -0x3f97000000000000L    # -200.0

    cmpl-double v11, v18, v20

    if-nez v11, :cond_9

    sput-wide v8, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssiEMA:D

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget-wide v0, v11, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    move-wide/from16 v18, v0

    cmpl-double v11, v8, v18

    if-lez v11, :cond_a

    sget-boolean v11, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v11, :cond_8

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v18, "A sharp fall! Disconnect!"

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v11, 0x1

    return v11

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v18, 0x3fc999999999999aL    # 0.2

    mul-double v18, v18, v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v20, 0x3fe999999999999aL    # 0.8

    sget-wide v22, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssiEMA:D

    mul-double v20, v20, v22

    add-double v18, v18, v20

    sput-wide v18, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssiEMA:D

    goto :goto_3

    :cond_a
    sget-wide v18, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssiEMA:D

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    cmpl-double v11, v18, v20

    if-ltz v11, :cond_c

    sget-boolean v11, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v11, :cond_b

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v18, "A sharp fall trend! Disconnect!"

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v11, 0x1

    return v11

    :cond_c
    const/4 v11, 0x0

    return v11
.end method

.method public fastDisconnectUpdateRssi(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fastDisconnectUpdateRssi: Enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RAW_RSSI_SIZE:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRawRssi:Ljava/util/LinkedList;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public getChinaUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWaitAuthCompleteState:Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "http://www.qq.com"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChinaUrlHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWaitAuthCompleteState:Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    if-ne v2, v3, :cond_1

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiConnectivityMonitor"

    const-string/jumbo v3, "Cannot get Host of CaptvePortal URL on WaitAuth State in China"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "www.qq.com"

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWaitAuthCompleteState:Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "www.qq.com"

    :cond_2
    return-object p1
.end method

.method public getCurrentLoss()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentLoss:Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentMode:I

    return v0
.end method

.method public getCurrentPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xff

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->smToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_0
    const-string/jumbo v3, " result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, " result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, " keepConnection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, " enable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, " id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, " param:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, " networkType :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " valid :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;

    const-string/jumbo v3, " type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " latency : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string/jumbo v3, " result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " url : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalProbeResult;->mRedirectUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2100e -> :sswitch_3
        0x21023 -> :sswitch_4
        0x2102a -> :sswitch_0
        0x2104d -> :sswitch_6
        0x2104e -> :sswitch_7
        0x21060 -> :sswitch_2
        0x25068 -> :sswitch_1
        0x25069 -> :sswitch_5
    .end sparse-switch
.end method

.method public getNetworkClass()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "Unknown"

    :goto_0
    sget-boolean v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current network class is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "3G"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "4G"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getWcmMessenger()Landroid/os/Messenger;
    .locals 2

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "getWcmMessenger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public intToIp(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCaptivePortalExceptionOnly()Z
    .locals 9

    const/4 v8, -0x1

    const/4 v2, -0x1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    const-string/jumbo v5, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCaptivePortalExceptionOnly, isWeChatAp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v4, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v8, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_1
    const-string/jumbo v5, "CCT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Wifi_CaptivePortalException"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "com.smithmicro.netwise.director.comcast.oem"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isComcastSsid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eq v2, v8, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v5, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v5, :cond_12

    const-string/jumbo v5, "isCaptivePortalExceptionOnly - reason #"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->logd(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "\"attwifi\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "FINISH"

    const-string/jumbo v6, "persist.sys.setupwizard"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "AIO"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Wifi_CaptivePortalException"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x3

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "\"SFR WiFi\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "\"SFR WiFi Public\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "\"SFR WiFi Gares\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "\"SFR WiFi FON\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "\"WiFi Partenaires\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "FINISH"

    const-string/jumbo v6, "persist.sys.setupwizard"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v2, 0x5

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v5, "\"CelcomWifi\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v2, 0x6

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "\"O2 Wifi\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v2, 0x7

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "\"UL Mobile\""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_c
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    if-eqz v5, :cond_d

    if-eqz v0, :cond_d

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v5, :cond_d

    const/16 v2, 0x9

    goto/16 :goto_1

    :cond_d
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    if-eqz v5, :cond_e

    const/16 v2, 0xa

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.tencent.mm"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    if-eqz v4, :cond_11

    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    if-eqz v5, :cond_11

    :cond_10
    const/16 v2, 0xb

    goto/16 :goto_1

    :cond_11
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->inChinaNetwork()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getChnKeepConnection()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v2, 0xc

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v5, "CPEO #"

    goto/16 :goto_2

    :cond_13
    const/4 v5, 0x0

    return v5
.end method

.method public isIgnorableNetwork()Z
    .locals 5

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "ATT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Wifi_CaptivePortalException"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.synchronoss.dcs.att.r2g"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isIgnorableNetwork - No need to check connectivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v2, "DIRECT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, ":NEX-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "de.telekom.hotspotlogin"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.belgacom.fon"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "CHM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Wifi_CaptivePortalException"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.chinamobile.cmccwifi"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.chinamobile.cmccwifi.WelcomeActivity"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.chinamobile.cmccwifi.MainActivity"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings.wifi.CMCCChargeWarningDialog"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v0, 0x6

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "\"au_Wi-Fi\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "\"Wi2\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "\"Wi2premium\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "\"Wi2premium_club\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "\"UQ_Wi-Fi\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "\"wifi_square\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    const-string/jumbo v2, "com.kddi.android.au_wifi_connect"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "com.kddi.android.au_wifi_connect2"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v0, 0x7

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    return v2
.end method

.method public isRelatedWithSystem(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x3e8

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isExceptionPackage(I)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isSystemApp(I)Z

    move-result v1

    sget-boolean v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isSystemApp(I)Z
    .locals 16

    move/from16 v1, p1

    const/16 v10, 0x2710

    move/from16 v0, p1

    if-ge v0, v10, :cond_0

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    const/4 v9, 0x0

    if-eqz v7, :cond_4

    const/4 v10, 0x0

    array-length v11, v7

    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v5, v7, v10

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v8, v5, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    iget-object v12, v12, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkAllowingSystemPackages:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-boolean v12, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "WifiConnectivityMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SystemAPP that allowed to use MultiNetwork - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const/4 v10, 0x0

    return v10

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit16 v12, v12, 0x81

    if-eqz v12, :cond_3

    const/4 v9, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v12, "WifiConnectivityMonitor"

    const-string/jumbo v13, "Could not find package NullPointException"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v2

    const-string/jumbo v12, "WifiConnectivityMonitor"

    const-string/jumbo v13, "Could not find package [%s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "WifiConnectivityMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No known packages with uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v9
.end method

.method isUsingStaticIp()Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method multiNetworkDump(III)V
    .locals 8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUidLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : REQ ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUid:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mMultiNetworkRequestDump:Ljava/util/Queue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : DEL ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequestAndUid:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public networkRemoved(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x2104c

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public requestQualityCheck()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestQualityCheck(I)V

    return-void
.end method

.method public requestQualityCheck(I)V
    .locals 1

    const v0, 0x2100c

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(II)V

    return-void
.end method

.method requestWakeLock(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    sget-boolean v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestWakeLock - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string/jumbo v2, "acquire"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v2, "release"

    goto :goto_0

    :cond_4
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public resetSpecialSsid()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->resetSpecialSsid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public resetTCPdata()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPackagenameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosewaitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRetrasmissionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastAckList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mVoipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public resetWatchdogSettings()V
    .locals 1

    const v0, 0x21006

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method

.method public scanStarted()V
    .locals 6

    const-wide/16 v4, 0x1388

    const v2, 0x2103d

    const v1, 0x21046

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->sWifiOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScanning:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "startScan but already in scanning state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsScanning:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->removeMessages(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mQualityResultHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public sendBigDataFeatureForTCPE(Z)V
    .locals 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v10, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTCPEdatalock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrSSIDTCPE:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_3

    const/4 v6, 0x1

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_10

    if-eqz v6, :cond_10

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x5

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_f

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iput-wide v4, v7, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPTime:J

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iput v2, v7, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPIndex:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    if-eqz p1, :cond_5

    move v7, v8

    :goto_3
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPQCResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mAlgorithmResultList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPAlgorithmResult:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPackagenameList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mEstablishList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_4
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewEstablished:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSynList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_5
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewSyn:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFinList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_6
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewFin:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_7
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewTimeWait:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTimeWaitList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    :goto_8
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewCloseWait:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRetrasmissionList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v8

    :goto_9
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewRetransmission:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mClosingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v8

    :goto_a
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewClosing:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastAckList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v8

    :goto_b
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewLastAck:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mVoipList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v8

    :goto_c
    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPUDPTraffic:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRxList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPReceivedPackets:J

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mTxList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPTransmittedPackets:J

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLossList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPLoss:D

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mRssiList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPRSSI:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iput v1, v7, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPFrequency:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLinkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v11, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPLinkSpeed:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataTCPE:Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    iput-object v0, v7, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPWifiState:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v11, "TCPE"

    invoke-virtual {v7, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureAllValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v11, "TCPE"

    invoke-virtual {v7, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrSSIDTCPE:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevSSIDTCPE:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrSSIDTCPE:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevSSIDTCPE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7

    :cond_4
    const/4 v1, 0x2

    goto/16 :goto_1

    :cond_5
    move v7, v9

    goto/16 :goto_3

    :cond_6
    move v7, v9

    goto/16 :goto_4

    :cond_7
    move v7, v9

    goto/16 :goto_5

    :cond_8
    move v7, v9

    goto/16 :goto_6

    :cond_9
    move v7, v9

    goto/16 :goto_7

    :cond_a
    move v7, v9

    goto/16 :goto_8

    :cond_b
    move v7, v9

    goto/16 :goto_9

    :cond_c
    move v7, v9

    goto/16 :goto_a

    :cond_d
    move v7, v9

    goto/16 :goto_b

    :cond_e
    move v7, v9

    goto/16 :goto_c

    :cond_f
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->resetBigDataFeatureForTCPE()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->resetTCPdata()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    monitor-exit v10

    return-void
.end method

.method public sendScanEventFromScanningService()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "EVENT_SCANNING_SERVICE_SCAN_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x21053

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method

.method public sendUserSelection(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUserSelection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const v1, 0x21060

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(II)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChangingMethod(Landroid/os/Message;)I
    .locals 9

    const/4 v8, 0x1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WFSN) changing Method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/ new Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnLockObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentUid:I

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousUid:I

    const v3, 0x21070

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWfsnMsg:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "WFSN"

    const-string/jumbo v2, "SNsi"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "WFSN"

    const-string/jumbo v2, "SNst"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mStateTime:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "WFSN"

    const-string/jumbo v2, "SNfu"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "WFSN"

    const-string/jumbo v2, "SNpu"

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mFrontAppAppearedTime:J

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPrevAppAppearedTime:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->convertMiliSecondToSecond(JZ)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "WFSN"

    const-string/jumbo v2, "SNpf"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "WFSN"

    const-string/jumbo v2, "SNpp"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mPreviousPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v1, "WFSN"

    const-string/jumbo v2, "Sscm"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataSCNT:Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    iget v1, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOff:I

    :cond_1
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataSCNT:Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    iget v1, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnAGG:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnAGG:I

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mSnsBigDataSCNT:Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    iget v1, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnNormal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnNormal:I

    goto :goto_0
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mIsFmcNetwork:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updatePoorNetworkParameters()V

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const v4, 0x2100e

    invoke-virtual {p0, v4, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "setIsFmcNetwork - Exception while setting isFmcNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public setWifiEnabled(ZLjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x2104b

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(IIILjava/lang/Object;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "unknown"

    sparse-switch p1, :sswitch_data_0

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getKernelTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "CMD_CHANNEL_HALF_CONNECTED"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "CMD_CHANNEL_DISCONNECTED"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "CMD_CHANNEL_FULL_CONNECTION"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "WWSM_NETWORK_CONNECTED"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "WWSM_NETWORK_DISCONNECTED"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "WWSM_REQUEST_NETWORK_TEST"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "WWSM_REPORT_APP_RESULT"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "WWSM_REPORT_CP_BIG_DATA"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "WWSM_NETWORK_REQUEST_LIST"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "WWSM_NETWORK_REMATCH_RESULT"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "CMD_NETWORK_PROPERTIES_UPDATED"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "CMD_DHCP_START_COMPLETE"

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "CMD_ROAM_START_COMPLETE"

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "EVENT_NETWORK_STATE_CHANGE"

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "EVENT_WATCHDOG_TOGGLED"

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "EVENT_RSSI_CHANGE"

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "CMD_RSSI_FETCH"

    goto :goto_0

    :sswitch_11
    const-string/jumbo v0, "EVENT_SUPPLICANT_STATE_CHANGE"

    goto :goto_0

    :sswitch_12
    const-string/jumbo v0, "EVENT_WIFI_RADIO_STATE_CHANGE"

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "EVENT_WATCHDOG_SETTINGS_CHANGE"

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "EVENT_BSSID_CHANGE"

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "EVENT_SCREEN_ON"

    goto :goto_0

    :sswitch_16
    const-string/jumbo v0, "EVENT_SCREEN_OFF"

    goto :goto_0

    :sswitch_17
    const-string/jumbo v0, "CMD_USER_SELECTION"

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v0, "RESULT_CAPTIVE_PORTAL"

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v0, "CMD_QUALITY_RECHECK"

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v0, "CMD_INTERNET_CHECK"

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v0, "CMD_SET_FMC"

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v0, "EVENT_SCAN_STARTED"

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v0, "EVENT_SCAN_COMPLETE"

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v0, "EVENT_MOBILE_CONNECTED"

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v0, "EVENT_NETWORK_PROPERTIES_CHANGED"

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v0, "EVENT_DHCP_SESSION_STARTED"

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v0, "EVENT_DHCP_SESSION_COMPLETE"

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v0, "EVENT_SCAN_TIMEOUT"

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v0, "EVENT_INTERMEDIATE_CHECK_TRIGGER"

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v0, "CHECK_CONNECTION_POLL"

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v0, "EVENT_WIFI_TOGGLED"

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v0, "QC_RESET_204_CHECK_INTERVAL"

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v0, "REPORT_QC_RESULT"

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v0, "DELAYED_QUALITY_CHECK"

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v0, "EVENT_NETWORK_REMOVED"

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v0, "EVENT_ROAM_TIMEOUT"

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v0, "EVENT_DHCP_TIMEOUT"

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v0, "EVENT_INET_CONDITION_ACTION"

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v0, "EVENT_SCANNING_SERVICE_SCAN_STARTED"

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v0, "EVENT_PARALLEL_CP_CHECK_RESULT"

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v0, "EVENT_LINK_DETECTION_DISALBED"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x200ea -> :sswitch_a
        0x200eb -> :sswitch_b
        0x200ed -> :sswitch_c
        0x21001 -> :sswitch_e
        0x21002 -> :sswitch_d
        0x21003 -> :sswitch_f
        0x21004 -> :sswitch_11
        0x21005 -> :sswitch_12
        0x21006 -> :sswitch_13
        0x21007 -> :sswitch_14
        0x21008 -> :sswitch_15
        0x21009 -> :sswitch_16
        0x2100a -> :sswitch_23
        0x2100b -> :sswitch_10
        0x2100c -> :sswitch_19
        0x2100d -> :sswitch_1a
        0x2100e -> :sswitch_1b
        0x2101f -> :sswitch_28
        0x21023 -> :sswitch_27
        0x21028 -> :sswitch_26
        0x2102a -> :sswitch_18
        0x2103d -> :sswitch_1c
        0x2103e -> :sswitch_1d
        0x2103f -> :sswitch_1e
        0x21043 -> :sswitch_1f
        0x21044 -> :sswitch_20
        0x21045 -> :sswitch_21
        0x21046 -> :sswitch_22
        0x2104b -> :sswitch_25
        0x2104c -> :sswitch_29
        0x2104d -> :sswitch_2c
        0x2104e -> :sswitch_2e
        0x2104f -> :sswitch_2f
        0x21051 -> :sswitch_2a
        0x21052 -> :sswitch_2b
        0x21053 -> :sswitch_2d
        0x21060 -> :sswitch_17
        0x2106f -> :sswitch_24
        0x25064 -> :sswitch_3
        0x25065 -> :sswitch_4
        0x25066 -> :sswitch_5
        0x25068 -> :sswitch_6
        0x25069 -> :sswitch_7
        0x2506b -> :sswitch_8
        0x2506c -> :sswitch_9
    .end sparse-switch
.end method

.method public startTCPMonitoring(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTCPMonitoring : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiTransportlayerMonitor:Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiTransportlayerMonitor:Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->hasMessages(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiTransportlayerMonitor:Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public stopTCPMonitoring(I)V
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiTransportlayerMonitor:Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/wifi/WifiConnectivityMonitor;->SMARTCM_DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "stopTCPMonitoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mWifiTransportlayerMonitor:Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/wifiwcmutilities/WifiTransportlayerMonitor;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :pswitch_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :pswitch_1
    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method teardownMobileData(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mNetworkRequested:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    const-string/jumbo v1, "Multi Network, so ignore tear dwon mobile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTearDownRequest:I

    if-eq v0, p1, :cond_3

    const v0, 0x82012

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageToNetworkMonitor(II)V

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTearDownRequest:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v0, Lcom/android/server/wifi/WifiConnectivityMonitor;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicated teardown, so ignore CMD_ACCEPT_UNVALIDATED_WIFI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEvaluationParameters(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "EVENT_WATCHDOG_SETTINGS_CHANGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x21006

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->createSmartCMFile(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->mParam:Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setEvaluationParameters()V

    :cond_1
    return v0
.end method

.method updateSNSCResult(Z)V
    .locals 12

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->loggingStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->loggingStartTime:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->loggingStartTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    const-wide/16 v6, 0x0

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionCount:I

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionWithOptionOnCount:I

    int-to-long v8, v8

    const-wide/32 v10, 0x186a0

    mul-long/2addr v8, v10

    iget v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionCount:I

    int-to-long v10, v10

    div-long v6, v8, v10

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    mul-long v4, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    rem-long v0, v8, v10

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->loggingStartTime:J

    const-wide/32 v10, 0x5265c00

    rem-long v2, v8, v10

    cmp-long v8, v0, v2

    if-gez v8, :cond_4

    add-long v8, v4, v0

    iput-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->loggingStartTime:J

    :goto_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionCount:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionWithOptionOnCount:I

    :cond_2
    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionCount:I

    if-eqz p1, :cond_3

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionWithOptionOnCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->dailyWifiConnectionWithOptionOnCount:I

    :cond_3
    return-void

    :cond_4
    add-long v8, v4, v2

    iput-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor;->loggingStartTime:J

    goto :goto_0
.end method

.method public updateWNICBigdata(Landroid/os/Message;)I
    .locals 5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v4, "event"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "time"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateWNICBigdata(IJ)V

    return v0
.end method
