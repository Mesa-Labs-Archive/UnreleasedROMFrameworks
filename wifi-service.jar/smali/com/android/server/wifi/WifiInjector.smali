.class public Lcom/android/server/wifi/WifiInjector;
.super Ljava/lang/Object;
.source "WifiInjector.java"


# static fields
.field private static final BOOT_DEFAULT_WIFI_COUNTRY_CODE:Ljava/lang/String; = "ro.boot.wificountrycode"

.field private static final WIFICOND_SERVICE_NAME:Ljava/lang/String; = "wificond"

.field static sWifiInjector:Lcom/android/server/wifi/WifiInjector;


# instance fields
.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mCertManager:Lcom/android/server/wifi/WifiCertManager;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectivityLocalLog:Landroid/util/LocalLog;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private final mIpConfigStore:Lcom/android/server/net/IpConfigStore;

.field private final mJavaRuntime:Ljava/lang/Runtime;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockManager:Lcom/android/server/wifi/WifiLockManager;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private final mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

.field private final mPasspointNetworkEvaluator:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private final mSavedNetworkEvaluator:Lcom/android/server/wifi/SavedNetworkEvaluator;

.field private final mScoredNetworkEvaluator:Lcom/android/server/wifi/ScoredNetworkEvaluator;

.field private final mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

.field private final mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

.field private final mSemWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

.field private final mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

.field private final mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

.field private final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private final mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private final mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

.field private final mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private final mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUseRealLogger:Z

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiAwareHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

.field private final mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

.field private final mWifiController:Lcom/android/server/wifi/WifiController;

.field private final mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

.field private final mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private final mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

.field private final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private final mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

.field private final mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

.field private final mWifiP2pNative:Lcom/android/server/wifi/p2p/WifiP2pNative;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private final mWifiServiceHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

.field private final mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

.field private final mWificondControl:Lcom/android/server/wifi/WificondControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {v0}, Lcom/android/server/wifi/FrameworkFacade;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    new-instance v0, Lcom/android/server/wifi/BackupManagerProxy;

    invoke-direct {v0}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    new-instance v0, Lcom/android/server/wifi/Clock;

    invoke-direct {v0}, Lcom/android/server/wifi/Clock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    new-instance v0, Lcom/android/server/wifi/SystemPropertyService;

    invoke-direct {v0}, Lcom/android/server/wifi/SystemPropertyService;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    new-instance v0, Lcom/android/server/wifi/SystemBuildProperties;

    invoke-direct {v0}, Lcom/android/server/wifi/SystemBuildProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Lcom/android/server/wifi/WifiBackupRestore;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiBackupRestore;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WifiInjector should not be initialized with a null Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WifiInjector was already created, use getInstance instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sput-object p0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    iput-object p1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiInjector;->mUseRealLogger:Z

    new-instance v0, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    new-instance v0, Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkScoreManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    new-instance v0, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    new-instance v0, Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/util/WifiPermissionsUtil;-><init>(Lcom/android/server/wifi/util/WifiPermissionsWrapper;Landroid/content/Context;Lcom/android/server/wifi/WifiSettingsStore;Landroid/os/UserManager;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    const-string/jumbo v1, "batterystats"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/server/wifi/WifiStateTracker;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateTracker;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiStateMachine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    new-instance v0, Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1, v12}, Lcom/android/server/wifi/WifiMetrics;-><init>(Lcom/android/server/wifi/Clock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {v0}, Lcom/android/server/wifi/HalDeviceManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiVendorHal;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v0, Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    new-instance v0, Lcom/android/server/wifi/WificondControl;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WificondControl;-><init>(Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    new-instance v0, Lcom/android/server/wifi/WifiNative;

    const-string/jumbo v1, "wifi.interface"

    const-string/jumbo v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/WificondControl;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;-><init>(Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;-><init>(Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pNative;

    const-string/jumbo v1, "wifi.direct.interface"

    const-string/jumbo v2, "p2p0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pNative;-><init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiP2pNative:Lcom/android/server/wifi/p2p/WifiP2pNative;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;-><init>(Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;-><init>(Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    const-string/jumbo v1, "wlan0"

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mSemHostapdApIfaceHal:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->startTracking()V

    new-instance v0, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    new-instance v0, Lcom/android/server/wifi/WifiCountryCode;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ro.boot.wificountrycode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiCountryCode;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    new-instance v0, Lcom/android/server/wifi/WifiKeyStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;-><init>(Landroid/security/KeyStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    new-instance v0, Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->createSharedFile()Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v3

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    new-instance v13, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v13}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    new-instance v0, Lcom/android/server/wifi/WifiNetworkHistory;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v13}, Lcom/android/server/wifi/WifiNetworkHistory;-><init>(Landroid/content/Context;Lcom/android/server/net/DelayedDiskWrite;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    new-instance v0, Lcom/android/server/net/IpConfigStore;

    invoke-direct {v0, v13}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mIpConfigStore:Lcom/android/server/net/IpConfigStore;

    new-instance v0, Lcom/android/server/wifi/WifiConfigStoreLegacy;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mIpConfigStore:Lcom/android/server/net/IpConfigStore;

    new-instance v4, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;

    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStoreLegacy;-><init>(Lcom/android/server/wifi/WifiNetworkHistory;Lcom/android/server/wifi/WifiNative;Lcom/android/server/net/IpConfigStore;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    new-instance v0, Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v6, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    iget-object v8, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    iget-object v9, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    new-instance v10, Lcom/android/server/wifi/NetworkListStoreData;

    invoke-direct {v10}, Lcom/android/server/wifi/NetworkListStoreData;-><init>()V

    new-instance v11, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    invoke-direct {v11}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;-><init>()V

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wifi/WifiConfigManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiConfigStoreLegacy;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/NetworkListStoreData;Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {}, Lcom/android/server/wifi/util/StringUtil;->makeKey()V

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityHelper;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConnectivityHelper;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x100

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    new-instance v0, Lcom/android/server/wifi/WifiNetworkSelector;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiNetworkSelector;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    new-instance v0, Lcom/android/server/wifi/SavedNetworkEvaluator;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/SavedNetworkEvaluator;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;Lcom/android/server/wifi/WifiConnectivityHelper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSavedNetworkEvaluator:Lcom/android/server/wifi/SavedNetworkEvaluator;

    new-instance v0, Lcom/android/server/wifi/ScoredNetworkEvaluator;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    move-object v1, p1

    move-object v2, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/ScoredNetworkEvaluator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;Landroid/net/wifi/WifiNetworkScoreCache;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mScoredNetworkEvaluator:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    new-instance v0, Lcom/android/server/wifi/SIMAccessor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    new-instance v6, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    invoke-direct {v6}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v9, p0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/hotspot2/PasspointManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPasspointNetworkEvaluator:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    new-instance v0, Lcom/android/server/wifi/WifiGeofenceManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/wifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiConfigManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mJavaRuntime:Ljava/lang/Runtime;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    iget-object v8, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object v3, v12

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v0, Lcom/android/server/wifi/WifiCertManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiCertManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mCertManager:Lcom/android/server/wifi/WifiCertManager;

    new-instance v0, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v5, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/FrameworkFacade;Landroid/app/Notification$Builder;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiConfigManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    new-instance v0, Lcom/android/server/wifi/WifiLockManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiLockManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mLockManager:Lcom/android/server/wifi/WifiLockManager;

    new-instance v0, Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mLockManager:Lcom/android/server/wifi/WifiLockManager;

    iget-object v6, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiSettingsStore;Lcom/android/server/wifi/WifiLockManager;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiController:Lcom/android/server/wifi/WifiController;

    new-instance v0, Lcom/android/server/wifi/SelfRecovery;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/SelfRecovery;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    new-instance v0, Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;-><init>(Lcom/android/server/wifi/SelfRecovery;Lcom/android/server/wifi/WifiMetrics;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    new-instance v0, Lcom/android/server/wifi/WifiMulticastLockManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMulticastLockManager;-><init>(Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    return-void

    :cond_2
    const/16 v0, 0x400

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/server/wifi/WifiInjector;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted to retrieve a WifiInjector instance before constructor was called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiInjector;->sWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method


# virtual methods
.method public getBackupManagerProxy()Lcom/android/server/wifi/BackupManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    return-object v0
.end method

.method public getBuildProperties()Lcom/android/server/wifi/BuildProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    return-object v0
.end method

.method public getClock()Lcom/android/server/wifi/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method public getFrameworkFacade()Lcom/android/server/wifi/FrameworkFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method public getHalDeviceManager()Lcom/android/server/wifi/HalDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    return-object v0
.end method

.method public getJavaRuntime()Ljava/lang/Runtime;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mJavaRuntime:Ljava/lang/Runtime;

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public getPasspointManager()Lcom/android/server/wifi/hotspot2/PasspointManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    return-object v0
.end method

.method public getPropertyService()Lcom/android/server/wifi/PropertyService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    return-object v0
.end method

.method public getSelfRecovery()Lcom/android/server/wifi/SelfRecovery;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSelfRecovery:Lcom/android/server/wifi/SelfRecovery;

    return-object v0
.end method

.method public getSemWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    return-object v0
.end method

.method public getSupplicantStaIfaceHal()Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object v0
.end method

.method public getWifiApMonitor()Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    return-object v0
.end method

.method public getWifiApNative()Lcom/samsung/android/server/wifi/softap/SemWifiApNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    return-object v0
.end method

.method public getWifiAwareHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "wifiAwareService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiAwareHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getWifiBackupRestore()Lcom/android/server/wifi/WifiBackupRestore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiBackupRestore:Lcom/android/server/wifi/WifiBackupRestore;

    return-object v0
.end method

.method public getWifiCertManager()Lcom/android/server/wifi/WifiCertManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mCertManager:Lcom/android/server/wifi/WifiCertManager;

    return-object v0
.end method

.method public getWifiConfigManager()Lcom/android/server/wifi/WifiConfigManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    return-object v0
.end method

.method public getWifiController()Lcom/android/server/wifi/WifiController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method public getWifiCountryCode()Lcom/android/server/wifi/WifiCountryCode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method public getWifiGeofenceManager()Lcom/android/server/wifi/WifiGeofenceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    return-object v0
.end method

.method public getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    return-object v0
.end method

.method public getWifiLockManager()Lcom/android/server/wifi/WifiLockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mLockManager:Lcom/android/server/wifi/WifiLockManager;

    return-object v0
.end method

.method public getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method public getWifiMulticastLockManager()Lcom/android/server/wifi/WifiMulticastLockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMulticastLockManager:Lcom/android/server/wifi/WifiMulticastLockManager;

    return-object v0
.end method

.method public getWifiNative()Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method public getWifiNotificationController()Lcom/android/server/wifi/WifiNotificationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    return-object v0
.end method

.method public getWifiP2pMonitor()Lcom/android/server/wifi/p2p/WifiP2pMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiP2pMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    return-object v0
.end method

.method public getWifiP2pNative()Lcom/android/server/wifi/p2p/WifiP2pNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiP2pNative:Lcom/android/server/wifi/p2p/WifiP2pNative;

    return-object v0
.end method

.method public getWifiPermissionsUtil()Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    return-object v0
.end method

.method public getWifiPermissionsWrapper()Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    return-object v0
.end method

.method public declared-synchronized getWifiScanner()Landroid/net/wifi/WifiScanner;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifiscanner"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiScanner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScanner;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiScanner;-><init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWifiServiceHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getWifiSettingsStore()Lcom/android/server/wifi/WifiSettingsStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    return-object v0
.end method

.method public getWifiStateMachine()Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method public getWifiStateMachineHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getWifiStateTracker()Lcom/android/server/wifi/WifiStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateTracker:Lcom/android/server/wifi/WifiStateTracker;

    return-object v0
.end method

.method public getWifiTrafficPoller()Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method public makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/LogcatLog;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/LogcatLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeSoftApManager(Landroid/os/INetworkManagementService;Lcom/android/server/wifi/SoftApManager$Listener;Landroid/net/wifi/IApInterface;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/SoftApManager;
    .locals 10

    new-instance v0, Lcom/android/server/wifi/SoftApManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiInjector;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/wifi/WifiInjector;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v9, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/SoftApManager;-><init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Lcom/android/server/wifi/SoftApManager$Listener;Landroid/net/wifi/IApInterface;Landroid/os/INetworkManagementService;Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiMetrics;)V

    return-object v0
.end method

.method public makeTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public makeWifiConnectivityManager(Landroid/net/wifi/WifiInfo;Z)Lcom/android/server/wifi/WifiConnectivityManager;
    .locals 21

    new-instance v1, Lcom/android/server/wifi/WifiConnectivityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiInjector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiInjector;->mWifiNetworkSelector:Lcom/android/server/wifi/WifiNetworkSelector;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiInjector;->mWifiConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiInjector;->mConnectivityLocalLog:Landroid/util/LocalLog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiInjector;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiInjector;->mSavedNetworkEvaluator:Lcom/android/server/wifi/SavedNetworkEvaluator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiInjector;->mScoredNetworkEvaluator:Lcom/android/server/wifi/ScoredNetworkEvaluator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiInjector;->mPasspointNetworkEvaluator:Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiInjector;->mPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiInjector;->mWifiGeofenceManager:Lcom/android/server/wifi/WifiGeofenceManager;

    move-object/from16 v20, v0

    move-object/from16 v6, p1

    move/from16 v14, p2

    invoke-direct/range {v1 .. v20}, Lcom/android/server/wifi/WifiConnectivityManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/WifiGeofenceManager;)V

    return-object v1
.end method

.method public makeWifiDiagnostics(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/BaseWifiDiagnostics;
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiInjector;->mUseRealLogger:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiInjector;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    new-instance v6, Lcom/android/server/wifi/LastMileLogger;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/LastMileLogger;-><init>(Lcom/android/server/wifi/WifiInjector;)V

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/WifiDiagnostics;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;Lcom/android/server/wifi/LastMileLogger;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/wifi/BaseWifiDiagnostics;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/BaseWifiDiagnostics;-><init>(Lcom/android/server/wifi/WifiNative;)V

    return-object v0
.end method

.method public makeWificond()Landroid/net/wifi/IWificond;
    .locals 2

    const-string/jumbo v1, "wificond"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWificond$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWificond;

    move-result-object v1

    return-object v1
.end method
