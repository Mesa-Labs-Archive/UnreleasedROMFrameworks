.class Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParameterManager"
.end annotation


# instance fields
.field public final AGG_LIST:[Ljava/lang/String;

.field public final AggressiveModeHigherPassBytes:I

.field public final AggressiveModeMonitorLinkLoss:I

.field public final AggressiveModeQCTriggerByRssi:I

.field public final CP_FALLBACK_CHECK_TIMEOUT_SEC:I

.field public final DATA_RATE_THRESHOLD:I

.field public final DATA_RATE_THRESHOLD_AGG_MODE:I

.field public final DEFAULT_DNS_PING_TIMEOUT_MS:I

.field public final DEFAULT_ENHANCED_QC_SETS:I

.field public final DEFAULT_ENHANCED_TARGET_RSSI:I

.field public final DEFAULT_GOOD_RX_PACKETS_BASE:I

.field public final DEFAULT_MIN_DNS_RESPONSES:I

.field public final DEFAULT_MSS:I

.field public final DEFAULT_NO_RX_PACKETS_LIMIT:I

.field public final DEFAULT_NUM_DNS_PINGS:I

.field public final DEFAULT_PACKET_SIZE:I

.field public final DEFAULT_PASS_PACKETS:I

.field public final DEFAULT_POOR_RX_PACKETS_LIMIT:I

.field public final DEFAULT_QC_PASS_BYTES_FOR_IPV6:I

.field public final DEFAULT_QC_REPEAT:I

.field public final DEFAULT_QC_SETS:I

.field public final DEFAULT_QC_TIMEOUT_SEC:I

.field public final DEFAULT_RESTORE_TARGET_RSSI_SEC:I

.field public final DEFAULT_SINGLE_DNS_PING_TIMEOUT_MS:I

.field public final DEFAULT_URL:Ljava/lang/String;

.field public final DEFAULT_URL_CHINA:Ljava/lang/String;

.field public DEFAULT_URL_STRING:Ljava/lang/String;

.field public final DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

.field public final DNS_INTRATEST_PING_INTERVAL_MS:I

.field public final DNS_START_DELAY_MS:I

.field public final ENHANCED_QC_INTERVAL_SEC:I

.field public final FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

.field public FD_DISCONNECT_THRESHOLD:D

.field public FD_EMA_ALPHA:I

.field public FD_EVALUATE_COUNT:I

.field public FD_EVAL_LEAD_TIME:I

.field public FD_MA_UNIT:I

.field public FD_MA_UNIT_SAMPLE_COUNT:I

.field public final FD_RAW_RSSI_SIZE:I

.field public FD_RSSI_LOW_THRESHOLD:I

.field public final FD_RSSI_SLOPE_EXP_COEFFICIENT:D

.field public final LIST1:[Ljava/lang/String;

.field public final LIST2:[Ljava/lang/String;

.field public final LIST3:[Ljava/lang/String;

.field public final MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:[Ljava/lang/String;

.field public final MULTINETWORK_EXCEPTION_PACKAGE_LIST:[Ljava/lang/String;

.field public final PATH_OF_RESULT:Ljava/lang/String;

.field public PING_COUNT:I

.field public PING_FAIL_COUNT:I

.field public PING_REQ_BYTES_2G:I

.field public PING_REQ_BYTES_2G_AGG:I

.field public PING_REQ_BYTES_5G:I

.field public PING_REQ_BYTES_5G_AGG:I

.field public PING_SOCKET_TIMEOUT_2G:I

.field public PING_SOCKET_TIMEOUT_2G_AGG:I

.field public PING_SOCKET_TIMEOUT_5G:I

.field public PING_SOCKET_TIMEOUT_5G_AGG:I

.field public PingReqBytes2G:I

.field public PingReqBytes2GAgg:I

.field public PingReqBytes5G:I

.field public PingReqBytes5GAgg:I

.field public PingReqBytesOverride:I

.field public PingTimeout2G:I

.field public PingTimeout2GAgg:I

.field public PingTimeout5G:I

.field public PingTimeout5GAgg:I

.field public PingTimeoutOverride:I

.field public final QC_ALLOWED_REDIRECT_COUNT:I

.field public final QC_CONNECTION_TIMEOUT_SEC:I

.field public final QC_HANDLER_NUM:I

.field public final QC_HTTP_GET_BUFFER_SIZE:I

.field public final QC_INIT_ID:I

.field public final QC_RETRY_LIMIT:I

.field public final QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

.field public final RSSI_THRESHOLD:I

.field public final RSSI_THRESHOLD_AGG_MODE_2G:I

.field public final RSSI_THRESHOLD_AGG_MODE_5G:I

.field public final SMARTCM_VALUE_FILE:Ljava/lang/String;

.field public final SOCKET_CONNECTION_NO_RESPONSE_TIMEOUT:I

.field public final TCP_HEADER_SIZE:I

.field public final TEST_LIST:[Ljava/lang/String;

.field public final VERIFYING_STATE_PASS_PACKETS:I

.field public final VERIFYING_STATE_PASS_PACKETS_AGGRESSIVE_MODE:I

.field public WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

.field public WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

.field public final WLANQCPATH_PROP_NAME:Ljava/lang/String;

.field public mAggressiveModeFeatureEnabled:[Z

.field public mCancelledEnhancedQCId:I

.field public mDataRateThreshold:I

.field public mDataRateThresholdAggMode:I

.field public mDnsNumPings:I

.field public mEnhancedQCEnabled:Z

.field public mGoodRxPacketsBase:I

.field public mGoodRxThreshold:I

.field public mIsAutoConnect:Z

.field public mLastPoorDetectedTime:J

.field public mMinDnsResponses:I

.field public mMultiNetworkAllowingSystemPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMultiNetworkExceptionPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedResultNormalization:Z

.field public mNoRxPacketsLimit:I

.field public mPassBytes:I

.field public mPassBytesAggressiveMode:I

.field public mPassBytesVerifyingState:I

.field public mPoorRxPacketsLimit:I

.field public mPropertiesModelName:Ljava/lang/String;

.field public mPropertiesOsVersion:Ljava/lang/String;

.field public mQCRedirectCount:I

.field public mQCRepeat:I

.field public mQCRetry:I

.field public mQCSets:I

.field public mQCSetsVerifyingState:I

.field public mQCTimeoutMs:I

.field public mQCUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRssiThreshold:I

.field public mRssiThresholdAggMode2G:I

.field public mRssiThresholdAggMode5G:I

.field public mRssiThresholdAggModeCurrentAP:I

.field public mTryEnhancedQCAgain:Z

.field public mUrlList:[Ljava/lang/String;

.field public mUserAgentModelName:Ljava/lang/String;

.field public mWeakSignalQCStartTime:J

.field public pingCount:I

.field public pingFailCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "/data/misc/wifi/.smartCM"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->SMARTCM_VALUE_FILE:Ljava/lang/String;

    const-string/jumbo v0, "/data/log/"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PATH_OF_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "wlan.qc.path"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WLANQCPATH_PROP_NAME:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_NUM_DNS_PINGS:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_MIN_DNS_RESPONSES:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_DNS_PING_TIMEOUT_MS:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_SINGLE_DNS_PING_TIMEOUT_MS:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DNS_START_DELAY_MS:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DNS_INTRATEST_PING_INTERVAL_MS:I

    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->RSSI_THRESHOLD:I

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DATA_RATE_THRESHOLD:I

    const/16 v0, 0x596

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_MSS:I

    const/16 v0, 0x36

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->TCP_HEADER_SIZE:I

    const/16 v0, 0x5cc

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_PACKET_SIZE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_PASS_PACKETS:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->VERIFYING_STATE_PASS_PACKETS:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_QC_SETS:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_QC_REPEAT:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_QC_TIMEOUT_SEC:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->QC_ALLOWED_REDIRECT_COUNT:I

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->QC_RETRY_LIMIT:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->QC_INIT_ID:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->QC_HANDLER_NUM:I

    const/16 v0, 0x1400

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->QC_HTTP_GET_BUFFER_SIZE:I

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->QC_CONNECTION_TIMEOUT_SEC:I

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->CP_FALLBACK_CHECK_TIMEOUT_SEC:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->SOCKET_CONNECTION_NO_RESPONSE_TIMEOUT:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->ENHANCED_QC_INTERVAL_SEC:I

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_ENHANCED_QC_SETS:I

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_ENHANCED_TARGET_RSSI:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_RESTORE_TARGET_RSSI_SEC:I

    const v0, 0xf423f

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_QC_PASS_BYTES_FOR_IPV6:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_NO_RX_PACKETS_LIMIT:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_POOR_RX_PACKETS_LIMIT:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_GOOD_RX_PACKETS_BASE:I

    const-string/jumbo v0, "http://www.google.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL:Ljava/lang/String;

    const-string/jumbo v0, "http://www.qq.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_CHINA:Ljava/lang/String;

    const-string/jumbo v0, "www.qq.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

    const-string/jumbo v0, "www.google.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://www.msn.com"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.bing.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://www.youtube.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://www.google.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST1:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://m.hao123.com"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.baidu.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://m.taobao.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://www.qq.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST2:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://www.naver.com"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://www.nate.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://www.google.com"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST3:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://www.youtube.com"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://www.google.com"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->AGG_LIST:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://www.samsung.com"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://d2uzsrnmmf6tds.cloudfront.net/50KB.txt"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->TEST_LIST:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.systemui"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.oneconnect"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkAllowingSystemPackages:Ljava/util/List;

    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVALUATE_COUNT:I

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVALUATE_COUNT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RAW_RSSI_SIZE:I

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVAL_LEAD_TIME:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EMA_ALPHA:I

    const/16 v0, -0x59

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mWeakSignalQCStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mLastPoorDetectedTime:J

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSetsVerifyingState:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mCancelledEnhancedQCId:I

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mEnhancedQCEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mTryEnhancedQCAgain:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mIsAutoConnect:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mNeedResultNormalization:Z

    const/16 v0, -0x46

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->RSSI_THRESHOLD_AGG_MODE_2G:I

    const/16 v0, -0x4b

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->RSSI_THRESHOLD_AGG_MODE_5G:I

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DATA_RATE_THRESHOLD_AGG_MODE:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->VERIFYING_STATE_PASS_PACKETS_AGGRESSIVE_MODE:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->AggressiveModeHigherPassBytes:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->AggressiveModeQCTriggerByRssi:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->AggressiveModeMonitorLinkLoss:I

    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_COUNT:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_FAIL_COUNT:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_2G:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_5G:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_2G_AGG:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_5G_AGG:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_2G:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_5G:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_2G_AGG:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_5G_AGG:I

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->resetParameters()V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private getDoubleValue(Ljava/lang/String;D)D
    .locals 6

    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong double:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method private getIntValue(Ljava/lang/String;I)I
    .locals 5

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong int:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getLongValue(Ljava/lang/String;J)J
    .locals 6

    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong double:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method private getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string/jumbo v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadSmartCMFile()Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string/jumbo v2, ""

    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/data/misc/wifi/.smartCM"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v5, ""

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_1
    move-object v0, v1

    move-object v6, v7

    :cond_3
    :goto_2
    return-object v2

    :catch_0
    move-exception v3

    const/4 v2, 0x0

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "IOException closing file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_3
    :try_start_4
    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "no file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    const/4 v2, 0x0

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "IOException closing file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_5
    throw v8

    :catch_3
    move-exception v3

    const/4 v2, 0x0

    const-string/jumbo v9, "WifiConnectivityMonitor"

    const-string/jumbo v10, "IOException closing file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_4

    :catchall_2
    move-exception v8

    move-object v0, v1

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v6, v7

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v0, v1

    move-object v6, v7

    goto :goto_3
.end method


# virtual methods
.method public addMultiNetworkExceptionPackages(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public changeMultiNetworkExceptionPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->changeMultiNetworkExceptionPackages([Ljava/lang/String;)V

    return-void
.end method

.method public changeMultiNetworkExceptionPackages([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    return-void
.end method

.method public createSmartCMFile(Ljava/lang/String;)I
    .locals 10

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/data/misc/wifi/.smartCM"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "removed smartCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileWriter;

    const-string/jumbo v7, "/data/misc/wifi/.smartCM"

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "created smartCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    const/4 v6, 0x1

    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_0
    move-object v2, v3

    move-object v4, v5

    :cond_5
    :goto_1
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_4
    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "Exception creating file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    throw v7

    :catch_3
    move-exception v0

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "IOException closing file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v7

    move-object v2, v3

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    goto :goto_2
.end method

.method public getAggressiveModeFeatureStatus()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetParameters()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set1(Z)Z

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDnsNumPings:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMinDnsResponses:I

    iput-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThreshold:I

    const/16 v0, -0x46

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode2G:I

    const/16 v0, -0x4b

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode5G:I

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThreshold:I

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThresholdAggMode:I

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRepeat:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCTimeoutMs:I

    iput-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    const/16 v0, 0x56f4

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    const/16 v0, 0x56f4

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesVerifyingState:I

    const v0, 0x1b2c4

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxThreshold:I

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mNoRxPacketsLimit:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPoorRxPacketsLimit:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxPacketsBase:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRetry:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRedirectCount:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_COUNT:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingCount:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_FAIL_COUNT:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingFailCount:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_2G:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2G:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_5G:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5G:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_2G_AGG:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2GAgg:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_5G_AGG:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5GAgg:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytesOverride:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_2G:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2G:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_5G:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5G:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_2G_AGG:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2GAgg:I

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_5G_AGG:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5GAgg:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeoutOverride:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->MULTINETWORK_EXCEPTION_PACKAGE_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkExceptionPackages:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->MULTINETWORK_ALLOWING_SYSTEM_PACKAGE_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMultiNetworkAllowingSystemPackages:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setUrlList()V

    return-void
.end method

.method public setEvaluationParameters()V
    .locals 1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->loadSmartCMFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setEvaluationParameters(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEvaluationParameters(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_32

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "dbg="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "1"

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set1(Z)Z

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SMARTCM_DBG : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "0"

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "dnp="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDnsNumPings:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDnsNumPings:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDnsNumPings : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDnsNumPings:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "mdr="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMinDnsResponses:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMinDnsResponses:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMinDnsResponses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mMinDnsResponses:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "ul="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "http://www.samsung.com"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->TEST_LIST:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    :cond_8
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUrlString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "rth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThreshold:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mRssiThreshold : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dBm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v3, "rtham2g="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode2G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode2G:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mRssiThreshold@2G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode2G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dBm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "rtham5g="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode5G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode5G:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mRssiThreshold@5G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mRssiThresholdAggMode5G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dBm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v3, "amfbyte="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_d

    move v3, v4

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_e

    move v3, v4

    :goto_4
    aput-boolean v3, v6, v5

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "@Feature_HPB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    move v3, v5

    goto :goto_3

    :cond_e
    move v3, v5

    goto :goto_4

    :cond_f
    const-string/jumbo v3, "amfrssi="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_10

    move v3, v4

    :goto_5
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_11

    move v3, v4

    :goto_6
    aput-boolean v3, v6, v4

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "@Feature_QTBR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    move v3, v5

    goto :goto_5

    :cond_11
    move v3, v5

    goto :goto_6

    :cond_12
    const-string/jumbo v3, "amfloss="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v3, v3, v11

    if-eqz v3, :cond_13

    move v3, v4

    :goto_7
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_14

    move v3, v4

    :goto_8
    aput-boolean v3, v6, v11

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "@Feature_MLL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    move v3, v5

    goto :goto_7

    :cond_14
    move v3, v5

    goto :goto_8

    :cond_15
    const-string/jumbo v3, "drth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThreshold:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDataRateThreshold : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v3, "drtham="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThresholdAggMode:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThresholdAggMode:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDataRateThreshold@ : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mDataRateThresholdAggMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v3, "qcr="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRepeat:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRepeat:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mQCRepeat : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRepeat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v3, "qcset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mQCSets : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v3, "qctms="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCTimeoutMs:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCTimeoutMs:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mQCTimeoutMs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCTimeoutMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v3, "uamn="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUserAgentModelName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v3, "pbs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPassBytes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v3, "grth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxThreshold:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mGoodRxThreshold : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v3, "fdrlth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v3, "fddth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getDoubleValue(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v3, "fdusc="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_20
    const-string/jumbo v3, "fdec="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVALUATE_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVALUATE_COUNT:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FD_EVALUATE_COUNT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_EVALUATE_COUNT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_21
    const-string/jumbo v3, "lsims="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get1()J

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set0(J)J

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get1()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v3, "wspdrm="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v3, "wsfqcs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_24
    const-string/jumbo v3, "snsdcws="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "sicdcs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "pc="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingCount:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pingCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_25
    const-string/jumbo v3, "pfc="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_FAIL_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingFailCount:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pingFailCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->pingFailCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_26
    const-string/jumbo v3, "prb2="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_2G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2G:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingReqBytes2G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v3, "prb5="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_5G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5G:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingReqBytes5G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_28
    const-string/jumbo v3, "prb2a="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_2G_AGG:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2GAgg:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingReqBytes2GAgg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2GAgg:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v3, "prb5a="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_REQ_BYTES_5G_AGG:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5GAgg:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingReqBytes5GAgg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5GAgg:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2a
    const-string/jumbo v3, "prbo="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytesOverride:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingReqBytesOverride : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytesOverride:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2b
    const-string/jumbo v3, "pto2="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_2G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2G:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingTimeout2G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2c
    const-string/jumbo v3, "pto5="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_5G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5G:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingTimeout5G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v3, "pto2a="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_2G_AGG:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2GAgg:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingTimeout2GAgg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout2GAgg:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2e
    const-string/jumbo v3, "pto5a="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PING_SOCKET_TIMEOUT_5G_AGG:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5GAgg:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingTimeout5GAgg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeout5GAgg:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v3, "ptoo="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeoutOverride:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PingTimeoutOverride : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingTimeoutOverride:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_30
    const-string/jumbo v3, "dhsu="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, v2, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpsUrl:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDefaultHttpsUrl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpsUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_31
    const-string/jumbo v3, "dhu="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, v2, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpUrl:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDefaultHttpUrl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor;->mDefaultHttpUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_32
    return-void
.end method

.method public setUrlList()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap7(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap9(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->AGG_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set2(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->SNS_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    const-string/jumbo v0, "kr"

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set2(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap9(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set2(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set2(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string/jumbo v1, "default"

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cn"

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kr"

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST3:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "www.qq.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Use China URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST2:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set2(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->LIST1:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mUrlList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set2(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0
.end method

.method public setUrlMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setUrlList()V

    return-void
.end method
