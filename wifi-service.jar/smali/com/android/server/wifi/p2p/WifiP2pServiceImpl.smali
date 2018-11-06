.class public Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_P2P_LO_TIMER_EXPIRED:Ljava/lang/String; = "com.samsung.android.net.wifi.p2p.LO_TIMER_EXPIRED"

.field private static final ACTION_P2P_STOPFIND_TIMER_EXPIRED:Ljava/lang/String; = "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

.field private static final ACTION_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final CMD_BOOT_COMPLETED:I = 0x23037

.field public static final CMD_SEC_LOGGING:I = 0x2303c

.field private static final CONNECTION_TIMED_OUT:I = 0x1e

.field private static final CONTACT_CRC_LENGTH:I = 0x4

.field private static final CONTACT_HASH_LENGTH:I = 0x6

.field private static final DBG:Z = true

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final DEFAULT_STATIC_IP:Ljava/lang/String; = "192.168.49.10"

.field private static final DHCP_RANGE:[Ljava/lang/String;

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field public static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x88b8

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final IDX_PHONE:I = 0x100

.field private static final IDX_TABLET:I = 0x200

.field private static final INVITATION_PROCEDURE_TIMED_OUT:I = 0x23033

.field private static final INVITATION_WAIT_TIME_MS:I = 0x7530

.field private static final IPM_DHCP_RESULTS:I = 0x23020

.field private static final IPM_POST_DHCP_ACTION:I = 0x2301f

.field private static final IPM_PRE_DHCP_ACTION:I = 0x2301e

.field private static final IPM_PROVISIONING_FAILURE:I = 0x23022

.field private static final IPM_PROVISIONING_SUCCESS:I = 0x23021

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final MAX_DEVICE_NAME_LENGTH:I = 0x20

.field private static final MODE_FORCE_GC:I = 0x4

.field private static final MODE_PERSISTENT:I = 0x8

.field private static final MODE_RETRY_COUNT:I = 0x3

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NFC_REQUEST_TIMED_OUT:I = 0x23032

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field private static final P2P_ADVOPP_DELAYED_DISCOVER_PEER:I = 0x23065

.field private static final P2P_ADVOPP_DISCOVER_PEER:I = 0x23064

.field private static final P2P_ADVOPP_LISTEN_TIMEOUT:I = 0x23066

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_ENABLE_PENDING:I = 0x2300a

.field private static final P2P_EXPIRATION_TIME:I = 0x5

.field private static final P2P_GROUP_STARTED_TIMED_OUT:I = 0x23034

.field private static final P2P_INVITATION_WAKELOCK_DURATION:I = 0x7530

.field private static final P2P_LISTEN_EXPIRATION_TIME:I = 0x2

.field private static final P2P_LISTEN_OFFLOADING_CHAN_NUM:I = 0x1869f

.field private static final P2P_LISTEN_OFFLOADING_COUNT:I = 0x4

.field private static final P2P_LISTEN_OFFLOADING_FIND_TIMEOUT:I = 0x1

.field private static final P2P_LISTEN_OFFLOADING_INTERVAL:I = 0x7918

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final PREFIX_PHONE:Ljava/lang/String; = "[Phone] "

.field private static final PREFIX_TABLET:Ljava/lang/String; = "[Tablet] "

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final SIDESYNC_ACTION_SINK_CONNECTED:Ljava/lang/String; = "com.sec.android.sidesync.sink.SIDESYNC_CONNECTED"

.field private static final SIDESYNC_ACTION_SINK_DESTROYED:Ljava/lang/String; = "com.sec.android.sidesync.sink.SERVICE_DESTROY"

.field private static final SIDESYNC_ACTION_SOURCE_CONNECTED:Ljava/lang/String; = "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

.field private static final SIDESYNC_ACTION_SOURCE_DESTROYED:Ljava/lang/String; = "com.sec.android.sidesync.source.SERVICE_DESTROY"

.field private static final SIM_STATE_CHANGED:I = 0x2306e

.field private static final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final TIME_ELAPSED_AFTER_CONNECTED:I = 0x23035

.field private static final WIFI_DIRECT_SETTINGS_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field public static final WIFI_ENABLE_PROCEED:I = 0x23013

.field private static hash2_byte:[B = null

.field private static hash_byte:[B = null

.field private static intentValue:I = 0x0

.field private static final mAdvancedOppDelayedDiscoverTime:I = 0x2710

.field private static final mAdvancedOppListenTimeout:I = 0x14

.field private static final mAdvancedOppScanIntervalTime:I = 0xdac

.field private static mDurationForNoa:I

.field private static mStartTimeForNoa:J

.field private static final mSupportRsdb:Z

.field private static mWorkingTimeForNoa:J

.field private static mWpsSkip:Z

.field private static numofclients:I

.field private static sDisableP2pTimeoutIndex:I

.field private static sGroupCreatingTimeoutIndex:I


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field private idxIcon:I

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAdvancedOppReceiver:Z

.field private mAdvancedOppRemoveGroupAndJoin:Z

.field private mAdvancedOppRemoveGroupAndListen:Z

.field private mAdvancedOppSender:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mAutonomousGroupAdvanced:Z

.field public mBigData:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;

.field private mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnReqInfo:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;

.field private mConnReqInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDevicesCnt:I

.field private mConnectedNotification:Landroid/app/Notification;

.field private mConnectedPeriodInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectedPeriodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedPkgName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDelayedDiscoverPeers:Z

.field private mDelayedDiscoverPeersArg:I

.field private mDelayedDiscoverPeersCmd:I

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mForegroundAppMessenger:Landroid/os/Messenger;

.field private mForegroundAppPkgName:Ljava/lang/String;

.field private mInterface:Ljava/lang/String;

.field private mInvitationDialog:Landroid/app/AlertDialog;

.field private mInvitationMsg:Landroid/widget/TextView;

.field private mIpManager:Landroid/net/ip/IpManager;

.field private mIsBootComplete:Z

.field private mJoinExistingGroup:Z

.field private mLOCount:I

.field private mLOTimerIntent:Landroid/app/PendingIntent;

.field private mLapseTime:I

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mListenOffloading:Z

.field private mMaxClientCnt:I

.field private mMaximumConnectionDialog:Landroid/app/AlertDialog;

.field private mModeChange:Ljava/util/HashMap;
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

.field private mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field public mP2pTrafficPoller:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

.field private mPersistentGroup:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReinvokePersistent:Ljava/lang/String;

.field private mReinvokePersistentNetId:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mSoundNotification:Landroid/app/Notification;

.field private mTemporarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTimerIntent:Landroid/app/PendingIntent;

.field private mValidFreqConflict:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdConnected:Z

.field private mWfdDialog:Z

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiApState:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiState:I

.field private mWpsTimer:Landroid/os/CountDownTimer;

.field pin:Landroid/widget/EditText;

.field t_dialog:Landroid/app/AlertDialog;

.field private userRejected:Z


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppSender:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroupAdvanced:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnReqInfo:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnReqInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedDevicesCnt:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic -get2()[B
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash2_byte:[B

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedPeriodInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeers:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpResults;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpResults:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -get3()[B
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash_byte:[B

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/ip/IpManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsBootComplete:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLapseTime:I

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mListenOffloading:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->idxIcon:I

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaxClientCnt:I

    return v0
.end method

.method static synthetic -get41(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mModeChange:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroup:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReinvokePersistent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReinvokePersistentNetId:I

    return v0
.end method

.method static synthetic -get51(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get52(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/SemHqmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object v0
.end method

.method static synthetic -get53(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get54(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic -get56(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTimerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mValidFreqConflict:Z

    return v0
.end method

.method static synthetic -get59(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdConnected:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mActivityMgr:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get60(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdDialog:Z

    return v0
.end method

.method static synthetic -get61(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic -get62(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiApState:I

    return v0
.end method

.method static synthetic -get63(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get64(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiState:I

    return v0
.end method

.method static synthetic -get65()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsSkip:Z

    return v0
.end method

.method static synthetic -get66(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get67()I
    .locals 1

    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic -get68()I
    .locals 1

    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic -get69(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppReceiver:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppRemoveGroupAndJoin:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppRemoveGroupAndListen:Z

    return v0
.end method

.method static synthetic -set0([B)[B
    .locals 0

    sput-object p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash2_byte:[B

    return-object p0
.end method

.method static synthetic -set1([B)[B
    .locals 0

    sput-object p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash_byte:[B

    return-object p0
.end method

.method static synthetic -set10(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCm:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedDevicesCnt:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpResults:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->idxIcon:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set21(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationMsg:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set22(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsBootComplete:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLapseTime:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaxClientCnt:I

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set28(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

    return-object p1
.end method

.method static synthetic -set29(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic -set30(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroup:Z

    return p1
.end method

.method static synthetic -set31(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReinvokePersistent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReinvokePersistentNetId:I

    return p1
.end method

.method static synthetic -set33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p1
.end method

.method static synthetic -set34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set35(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B
    .locals 0

    iput-byte p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic -set36(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic -set37(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mValidFreqConflict:Z

    return p1
.end method

.method static synthetic -set38(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdConnected:Z

    return p1
.end method

.method static synthetic -set39(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdDialog:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppReceiver:Z

    return p1
.end method

.method static synthetic -set40(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p1
.end method

.method static synthetic -set41(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiApState:I

    return p1
.end method

.method static synthetic -set42(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set43(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiState:I

    return p1
.end method

.method static synthetic -set44(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsSkip:Z

    return p0
.end method

.method static synthetic -set45(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -set46(I)I
    .locals 0

    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sDisableP2pTimeoutIndex:I

    return p0
.end method

.method static synthetic -set47(I)I
    .locals 0

    sput p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sGroupCreatingTimeoutIndex:I

    return p0
.end method

.method static synthetic -set48(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppRemoveGroupAndJoin:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppRemoveGroupAndListen:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppSender:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroupAdvanced:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getWfdPermission(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->isAllowWifiDirectByEDM()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->isTablet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;II)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkTimeNoa(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->connectRetryCount(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->startIpManager(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->stopIpManager()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->JOIN_GROUP:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->FORM_GROUP:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sGroupCreatingTimeoutIndex:I

    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->sDisableP2pTimeoutIndex:I

    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    sput-wide v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    sput-wide v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStartTimeForNoa:J

    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDurationForNoa:I

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "192.168.49.100"

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.199"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DHCP_RANGE:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash_byte:[B

    new-array v0, v4, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash2_byte:[B

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

    new-instance v6, Landroid/net/NetworkCapabilities;

    invoke-direct {v6}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiState:I

    const/16 v6, 0xb

    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiApState:I

    new-instance v6, Lcom/android/server/wifi/util/WifiAsyncChannel;

    const-string/jumbo v7, "WifiP2pService"

    invoke-direct {v6, v7}, Lcom/android/server/wifi/util/WifiAsyncChannel;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaxClientCnt:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->t_dialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->pin:Landroid/widget/EditText;

    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroupAdvanced:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppReceiver:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppSender:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppRemoveGroupAndJoin:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAdvancedOppRemoveGroupAndListen:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    const/4 v6, 0x0

    iput-byte v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    const/16 v6, 0x100

    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->idxIcon:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroup:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeers:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mListenOffloading:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOCount:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdDialog:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdConnected:Z

    const-string/jumbo v6, "android.net.wifi.p2p"

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->APP_ID:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsBootComplete:Z

    new-instance v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnReqInfo:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnReqInfoList:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedPeriodInfoList:Ljava/util/HashMap;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedPkgName:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mValidFreqConflict:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReinvokePersistentNetId:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReinvokePersistent:Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mModeChange:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "@android:style/Theme.DeviceDefault.Light"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "p2p0"

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    const-string/jumbo v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mActivityMgr:Landroid/app/ActivityManager;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.wifi.direct"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v7, "WifiP2pService"

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v7, "WifiP2pService"

    const v8, 0x1000001a

    invoke-virtual {v6, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "p2p-wlan0-0"

    invoke-direct {v6, v7, v8}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pTrafficPoller:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pTrafficPoller:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    invoke-virtual {v6}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->setThresholdValues()V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTimerIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.net.wifi.p2p.LO_TIMER_EXPIRED"

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040233

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    new-instance v5, Landroid/os/HandlerThread;

    const-string/jumbo v6, "WifiP2pService"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    const-string/jumbo v7, "WifiP2pService"

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    new-instance v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v7, "WifiP2pService"

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->start()V

    new-instance v6, Landroid/net/NetworkInfo;

    const-string/jumbo v7, "WIFI_P2P"

    const-string/jumbo v8, ""

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "device_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "device_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_p2p_device_name"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    new-instance v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    iput-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBigData:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBigData:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;

    invoke-virtual {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->initialize()V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "lcdon"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.RESTRICTION_DISABLE_WFD_INTERNAL"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.sec.android.sidesync.sink.SIDESYNC_CONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.sec.android.sidesync.sink.SERVICE_DESTROY"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;)V

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$2;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$2;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$3;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$3;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$4;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$4;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$5;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$5;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    const-string/jumbo v6, "lcdoff"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private auditLog(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;I)V

    return-void
.end method

.method private auditLog(ZLjava/lang/String;I)V
    .locals 5

    :try_start_0
    const-string/jumbo v3, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "group"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "outcome"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "component"

    const-string/jumbo v4, "WifiP2pServiceImpl"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiP2pService"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkConnectivityInternalPermission()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkLocationHardwarePermission()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkTimeNoa(II)J
    .locals 12

    const-wide/16 v10, 0x64

    const-wide/16 v8, 0x0

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    sget-wide v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    const-string/jumbo v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWorkingTimeForNoa: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    :cond_0
    :goto_0
    return-wide v0

    :pswitch_0
    sget-wide v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStartTimeForNoa:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStartTimeForNoa:J

    sub-long/2addr v4, v6

    sget v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDurationForNoa:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    sput-wide v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStartTimeForNoa:J

    const/4 v2, 0x0

    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDurationForNoa:I

    goto :goto_0

    :pswitch_1
    sget-wide v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStartTimeForNoa:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStartTimeForNoa:J

    sub-long/2addr v4, v6

    sget v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDurationForNoa:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWorkingTimeForNoa:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mStartTimeForNoa:J

    sput p2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDurationForNoa:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private connectRetryCount(Ljava/lang/String;I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mModeChange:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez p2, :cond_2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connection Mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mModeChange:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    if-nez p2, :cond_4

    if-lez v1, :cond_4

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mModeChange:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    and-int/lit8 v2, v1, 0x3

    not-int v2, v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_4
    if-gez p2, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    const-string/jumbo v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    const-string/jumbo v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceConnectivityInternalOrLocationHardwarePermission()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkConnectivityInternalPermission()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkLocationHardwarePermission()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    :cond_0
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getWfdPermission(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAllowWifiDirectByEDM()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v0, "true"

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiDirectAllowed"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiDirectAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiP2pService"

    const-string/jumbo v2, "isAllowWifiDirectByEDM() : wifi direct is not allowed."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v8

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v9

    :catch_0
    move-exception v7

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendPingForArpUpdate(Ljava/net/InetAddress;)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 v1, 0x7d0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiP2pService"

    const-string/jumbo v2, "sendPingForArpUpdate (SUCCESS)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "WifiP2pService"

    const-string/jumbo v2, "sendPingForArpUpdate (FAILED)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiP2pService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProp(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "sscon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "ssdis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x3

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiP2pService"

    const-string/jumbo v2, "setprop for GOPS is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "sicon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "sidis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x5

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "lcdon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x8

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "lcdoff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x9

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "smswon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x10

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "smswoff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x11

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "openInvitationDialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x20

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "closeInvitationDialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x21

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "apstacon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    if-ltz v1, :cond_a

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    :cond_a
    const-string/jumbo v1, "wlan.p2p.numclient"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "apstadis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    if-lez v1, :cond_c

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    :cond_c
    const-string/jumbo v1, "wlan.p2p.numclient"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "groupexit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    const-string/jumbo v1, "wlan.p2p.numclient"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    const-string/jumbo v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "lcdon"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "lcdoff"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private startIpManager(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->stopIpManager()V

    new-instance v1, Landroid/net/ip/IpManager;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$6;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$6;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withoutIPv6()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withoutIpReachabilityMonitor()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withPreDhcpAction(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    const v2, 0x8ca0

    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withProvisioningTimeoutMs(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    invoke-virtual {v1, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    return-void
.end method

.method private stopIpManager()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    invoke-virtual {v0}, Landroid/net/ip/IpManager;->stop()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    :cond_0
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpResults:Landroid/net/DhcpResults;

    return-void
.end method


# virtual methods
.method public checkConfigureWifiDisplayPermission()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getWfdPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wifi Display Permission denied for uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public connectivityServiceReady()V
    .locals 2

    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAutonomousGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mJoinExistingGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDiscoveryStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTemporarilyDisconnectedWifi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceDiscReqId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIpManager:Landroid/net/ip/IpManager;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "mIpManager:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ip/IpManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pTrafficPoller:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalOrLocationHardwarePermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiP2pState()I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)I

    move-result v0

    return v0
.end method

.method public handleUserSwitch(I)V
    .locals 2

    const-string/jumbo v0, "WifiP2pService"

    const-string/jumbo v1, "Removing p2p group when user switching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x22010

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    return-void
.end method

.method public isInactiveState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get9(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkConfigureWifiDisplayPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(II)V

    return-void
.end method
