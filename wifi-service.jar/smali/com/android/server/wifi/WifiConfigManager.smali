.class public Lcom/android/server/wifi/WifiConfigManager;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigManager$1;,
        Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;
    }
.end annotation


# static fields
.field private static final ALLOW_LOCKDOWN_CHECK_BYPASS:Z = true

.field private static final CHARSET_CN:Ljava/lang/String; = "gbk"

.field private static final CHARSET_KOR:Ljava/lang/String; = "ksc5601"

.field private static final CONFIG_CHARSET:Ljava/lang/String;

.field static final CSC_DEFAULT_MAX_NETWORKS_FOR_CURRENT_USER:I

.field private static final DBG:Z

.field private static final DEFAULT_MAX_NETWORKS_FOR_CURRENT_USER:I = 0xc8

.field private static final DISALLOW_LOCKDOWN_CHECK_BYPASS:Z = false

.field public static final LINK_CONFIGURATION_BSSID_MATCH_LENGTH:I = 0x10

.field public static final LINK_CONFIGURATION_MAX_SCAN_CACHE_ENTRIES:I = 0x6

.field public static final NETWORK_SELECTION_DISABLE_THRESHOLD:[I

.field public static final NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I

.field public static final PASSWORD_MASK:Ljava/lang/String; = "*"

.field public static final SCAN_CACHE_ENTRIES_MAX_SIZE:I = 0xc0

.field public static final SCAN_CACHE_ENTRIES_TRIM_SIZE:I = 0x80

.field private static final SCAN_RESULT_MAXIMUM_AGE_MS:I = 0x9c40

.field private static final STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field public static final SYSUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "WifiConfigManager"

.field private static final mRemovableDefaultAp:Z

.field private static final sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

.field private static tryNumber:I


# instance fields
.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDeferredUserUnlockRead:Z

.field private final mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

.field private mFilePathRemovedNwInfo:Ljava/io/File;

.field private mLastSelectedNetworkId:I

.field private mLastSelectedTimeStamp:J

.field private mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxNumActiveChannelsForPartialScans:I

.field private mNetworkAutoConnectEnabled:Z

.field private final mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

.field private mNextNetworkId:I

.field private final mOnlyLinkSameCredentialConfigurations:Z

.field private mPendingStoreRead:Z

.field private mPendingUnlockStoreRead:Z

.field private final mScanDetailCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUiUid:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

.field private final mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiConfiguration;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getUsedTime(Landroid/net/wifi/WifiConfiguration;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x10

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I

    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$1;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigManager$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigMaxConfiguredNetworksSize"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiConfigManager;->CSC_DEFAULT_MAX_NETWORKS_FOR_CURRENT_USER:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConfigManager;->mRemovableDefaultAp:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->CONFIG_CHARSET:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiConfigManager;->tryNumber:I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x5
        0x5
        0x2
        0x2
        0x1
        0x6
        0x1
        0x1
        0x1
        0x1
        -0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x7fffffff
        0xdbba0
        0x493e0
        0x493e0
        0x493e0
        0x493e0
        0x0
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiConfigStoreLegacy;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/NetworkListStoreData;Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x80

    :goto_0
    invoke-direct {v4, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/wifi/removed_nw.conf"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    new-instance v3, Lcom/android/server/wifi/BackupManagerProxy;

    invoke-direct {v3}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iput-object p6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iput-object p7, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    iput-object p8, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    new-instance v3, Lcom/android/server/wifi/ConfigurationMap;

    invoke-direct {v3, p3}, Lcom/android/server/wifi/ConfigurationMap;-><init>(Landroid/os/UserManager;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x10

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v3, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkAutoConnectEnabled:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.android.systemui"

    const/high16 v5, 0x100000

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    return-void

    :cond_0
    const/16 v3, 0x100

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "WifiConfigManager"

    const-string/jumbo v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;II)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method private addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;II)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 11

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Adding/Updating network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    if-eq p3, v8, :cond_1

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v8, "false"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "content://com.sec.knox.provider2/WifiPolicy"

    const-string/jumbo v10, "getAllowUserProfiles"

    invoke-static {v8, v9, v10, v7}, Lcom/samsung/android/server/wifi/WifiMobileDeviceManager;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "WifiConfigManager"

    const-string/jumbo v9, "not allowed to add new networks By MDM"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v8

    :cond_0
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v8, "true"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->createNewInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_5

    const/4 v8, 0x0

    invoke-direct {p0, v0, p2, v8}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not have permission to update configuration "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v8

    :cond_3
    const/4 v8, 0x1

    if-ne p3, v8, :cond_6

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateExistingInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    :cond_5
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasProxyChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyProxySettings(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not have permission to modify proxy Settings "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ". Must have OVERRIDE_WIFI_CONFIG,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " or be device or profile owner."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v8

    :cond_6
    const/4 v8, 0x1

    if-eq p3, v8, :cond_4

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canAddOrUpdateConfig(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MDM restriction doesn\'t allow UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " update configuration "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v8

    :cond_7
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v8, :cond_8

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    invoke-virtual {v8, v4, v0}, Lcom/android/server/wifi/WifiKeyStore;->updateNetworkKeys(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v8

    :cond_8
    if-nez v0, :cond_c

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_d

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasIpChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    :goto_2
    if-nez v5, :cond_e

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasProxyChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    :goto_3
    if-nez v5, :cond_f

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasCredentialChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    :cond_9
    sget-boolean v8, Lcom/android/server/wifi/WifiConfigManager;->mRemovableDefaultAp:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->isRemovedVedorAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->deleteRemovedVedorAp(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    :cond_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v8, v4}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v8, :cond_b

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Removed from ephemeral blacklist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v8}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    new-instance v6, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v6, v2, v3, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZZ)V

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addOrUpdateNetworkInternal: added/updated config. netId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " configKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " vendorAP="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hiddenSSID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " autoReconnect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    return-object v6

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v1, 0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            "JJI)Z"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    iget-wide v6, v2, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v6, p3, v6

    cmp-long v6, v6, p5

    if-gez v6, :cond_3

    const/4 v5, 0x1

    :goto_0
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "WifiConfigManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fetchChannelSetForNetwork has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " freq "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " age "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v8, p3, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ?="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v5, :cond_2

    iget v6, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    move/from16 v0, p7

    if-lt v6, v0, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method private attemptNetworkLinking(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v5, 0x1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v4

    if-le v4, v7, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v4

    if-gt v4, v7, :cond_2

    :cond_3
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/android/server/wifi/WifiConfigManager;->shouldNetworksBeLinked(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetailCache;Lcom/android/server/wifi/ScanDetailCache;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->linkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->unlinkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    monitor-exit v5

    return-void
.end method

.method private canAddOrUpdateConfig(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    move-object/from16 v20, v0

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_0

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "Network addition not allowed. networkId is invalid."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return-object v20

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    if-nez v20, :cond_1

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "Network addition not allowed. Could not determine isEnterpriseNetwork or not"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return-object v20

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-nez v20, :cond_3

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "cannot add same as mdm"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return-object v20

    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "Updating priority"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    if-nez v20, :cond_4

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "Network addition not allowed. Could not compare two priorities"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return-object v20

    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    new-instance v15, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v15}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v0, v10, :cond_5

    const/16 v20, 0x0

    return-object v20

    :cond_5
    iput v10, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->set(I)V

    return-object v15

    :cond_6
    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "Updating profile configuration"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object v9, v3

    :cond_8
    if-nez v9, :cond_9

    const/16 v20, 0x0

    return-object v20

    :cond_9
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserChanges()Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2}, Landroid/sec/enterprise/WifiPolicyCache;->updateAllowedFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_a

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "profile update not allowed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_a
    const/4 v7, 0x1

    :cond_b
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getEngineId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string/jumbo v20, "secpkcs11"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string/jumbo v20, "ucsengine"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    :cond_c
    if-eqz v7, :cond_16

    :cond_d
    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "edmaddorupdate - engine is ccm or modified"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct/range {v16 .. v16}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_17

    const-string/jumbo v20, "secpkcs11"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    :cond_e
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_f
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_11
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_12
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_13

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    :cond_13
    const/16 v18, -0x1

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v20

    if-ltz v20, :cond_14

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_14
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getSubjectMatch()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setSubjectMatch(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getPacFile()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNumber()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNumber()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNumber(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_15
    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiASCertificateAlias(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/sec/enterprise/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    return-object p1

    :cond_17
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    const-string/jumbo v20, "ucsengine"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    :cond_18
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v12

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "error converting phase1 - edmaddorupdate"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v8

    const-string/jumbo v20, "WifiConfigManager"

    const-string/jumbo v21, "error converting SimNumber - edmaddorupdate"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_19
    return-object p1
.end method

.method private canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z
    .locals 12

    const/16 v9, 0x3f2

    const/4 v11, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v8, 0x3e8

    if-ne p2, v8, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne p2, v9, :cond_1

    return v6

    :cond_1
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v8, :cond_2

    if-ne p2, v9, :cond_2

    invoke-static {p1}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_2

    return v6

    :cond_2
    const-class v8, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    :goto_0
    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "canModifyNetwork: isUidDeviceOwner = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    return v6

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v8, p2, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-eqz p3, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v6, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v6

    return v6

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "android.software.device_admin"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v0, :cond_7

    const-string/jumbo v6, "WifiConfigManager"

    const-string/jumbo v8, "Error retrieving DPMI service."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_7
    if-eqz v0, :cond_9

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v0, v8, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    :goto_2
    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "canModifyNetwork: isConfigEligibleForLockdown = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "canModifyNetwork: isCreator = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "canModifyNetwork: checkConfigOverridePermission = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v10, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    if-nez v2, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v6, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v6

    :cond_8
    return v6

    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_device_owner_configs_lockdown"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v3, 0x1

    :goto_3
    const-string/jumbo v6, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canModifyNetwork: isLockdownFeatureEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_c

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v6, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v6

    :goto_4
    return v6

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    :cond_c
    move v6, v7

    goto :goto_4
.end method

.method private canModifyProxySettings(I)Z
    .locals 7

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v4}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    :goto_0
    if-eqz v0, :cond_2

    const/4 v4, -0x2

    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkConfigOverridePermission(I)Z

    move-result v1

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cannot modify WifiConfiguration proxy settings."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ConfigOverride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " DeviceOwner="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ProfileOwner="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, 0x0

    return v4
.end method

.method private canRemoveMDMNetwork(I)Z
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canRemoveMDMNetwork: networkId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " but config is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiConfigManager"

    const-string/jumbo v3, "user is trying to remove enterprise network"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2, v0}, Landroid/sec/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    return v5

    :cond_1
    const/4 v2, 0x0

    return v2

    :cond_2
    return v5
.end method

.method private cleanOldNetworks(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v6, Lcom/android/server/wifi/WifiConfigManager$4;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiConfigManager$4;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lcom/android/server/wifi/WifiConfigManager;->CSC_DEFAULT_MAX_NETWORKS_FOR_CURRENT_USER:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-interface {p1, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v6, "WifiConfigManager"

    const-string/jumbo v7, "cleanOldNetworks oldConfigs is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cleanOldNetworks key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " netId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->semRemoveNetwork(I)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "WifiConfigManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cleanOldNetworks Failed to forget network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return v9

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    return v8
.end method

.method private clearInternalData()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearInternalUserData(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    return-object v2
.end method

.method private clearLastSelectedNetwork()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConfigManager"

    const-string/jumbo v1, "Clearing last selected network"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    return-void
.end method

.method public static createDebugTimeStampString(J)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    return-object v0
.end method

.method private createNewInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createNewInternalWifiConfigurationFromExternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->setDefaultsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    return-object v0
.end method

.method private deleteRemovedVedorAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v10, "network="

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    const-string/jumbo v10, "key_mgmt="

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "eap="

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "}"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    const-string/jumbo v10, "ssid="

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "network={\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :cond_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v7

    :goto_1
    :try_start_2
    const-string/jumbo v10, "WifiConfigManager"

    const-string/jumbo v11, "File not found"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    return-void

    :cond_4
    :try_start_4
    const-string/jumbo v10, "WifiConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "User adds the removed AP: deleteRemovedVedorAp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileWriter;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    move-object v6, v7

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v3

    const-string/jumbo v10, "WifiConfigManager"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_4
    :try_start_7
    const-string/jumbo v10, "WifiConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    const-string/jumbo v10, "WifiConfigManager"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception v3

    const-string/jumbo v10, "WifiConfigManager"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v10

    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_6
    throw v10

    :catch_5
    move-exception v3

    const-string/jumbo v11, "WifiConfigManager"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v10

    move-object v6, v7

    goto :goto_5

    :catchall_2
    move-exception v10

    move-object v6, v7

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :catch_7
    move-exception v1

    move-object v6, v7

    move-object v4, v5

    goto/16 :goto_1

    :catch_8
    move-exception v2

    move-object v6, v7

    goto :goto_4

    :catch_9
    move-exception v2

    move-object v6, v7

    move-object v4, v5

    goto :goto_4
.end method

.method private doesUidBelongToCurrentUser(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConfiguredNetworks(ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    monitor-exit v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/android/server/wifi/WifiConfigManager;->CSC_DEFAULT_MAX_NETWORKS_FOR_CURRENT_USER:I

    if-le v3, v4, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->cleanOldNetworks(Ljava/util/List;)Z

    :cond_3
    return-object v2
.end method

.method private getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "Looking up network with invalid networkId -1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find network with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private getInternalConfiguredNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find network with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find network with configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getInternalConfiguredNetworks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getNonUTF8HiddenNetworkSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "gbk"

    sget-object v3, Lcom/android/server/wifi/WifiConfigManager;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "gbk"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    array-length v2, v0

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/util/NativeUtil;->isUTF8String([BJ)Z

    move-result v2

    if-nez v2, :cond_0

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/android/server/wifi/util/NativeUtil;->isUCNVString([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->makeNonUTF8Ssid([BI)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const-string/jumbo v2, "ksc5601"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private getOrCreateScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    if-nez v0, :cond_1

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    const/16 v1, 0xc0

    const/16 v2, 0x80

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;II)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getSavedNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "WifiConfigManager"

    const-string/jumbo v4, "No scan result found in scan detail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2, v0}, Lcom/android/server/wifi/util/ScanResultUtil;->doesScanResultMatchWithNetwork(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSavedNetworkFromScanDetail Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    return-object v0

    :cond_3
    monitor-exit v4

    return-object v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getUsedTime(Landroid/net/wifi/WifiConfiguration;)J
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    return-wide v0

    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    return-wide v0

    :cond_1
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    return-wide v0

    :cond_2
    return-wide v2
.end method

.method private handleUserUnlockOrSwitch(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading from store after user switch/unlock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->loadFromUserStoreAfterUnlockOrSwitch(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    :cond_1
    return-void
.end method

.method private isRemovedVedorAp(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v7, ""

    const-string/jumbo v5, ""

    const-string/jumbo v2, ""

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "ssid"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x3d

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string/jumbo v8, "key_mgmt"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x3d

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string/jumbo v8, "eap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x3d

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "OLD_VERSION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p1}, Lcom/android/server/wifi/util/StringUtil;->makeStringEapMethod(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :cond_4
    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    :cond_6
    :try_start_3
    const-string/jumbo v7, ""

    const-string/jumbo v5, ""

    const-string/jumbo v2, ""
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_4
    const-string/jumbo v8, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    :catch_2
    move-exception v1

    const-string/jumbo v8, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    :catch_3
    move-exception v1

    const-string/jumbo v8, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private linkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkNetworks will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalData()V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromSharedStore(Ljava/util/List;)V

    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "No stored networks found."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendDefaultHotspot20ConfigLoadBroadcast()V

    return-void
.end method

.method private loadInternalDataFromSharedStore(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadInternalDataFromSharedStore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding network from shared store "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    return-void
.end method

.method private loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadInternalDataFromUserStore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private loadLegacyHotspot20Credentials()Ljava/lang/String;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v8, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->ready()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string/jumbo v9, "cred={"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v5, 0x1

    :cond_1
    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_2
    const-string/jumbo v9, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    return-object v0

    :cond_3
    if-eqz v5, :cond_4

    :try_start_4
    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v9, "network={"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :cond_6
    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    return-object v0

    :catch_1
    move-exception v1

    const-string/jumbo v9, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :catch_2
    move-exception v1

    const-string/jumbo v9, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v2, :cond_8

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    return-object v0

    :catch_3
    move-exception v1

    const-string/jumbo v9, "WifiConfigManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :catchall_1
    move-exception v9

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private makeNonUTF8Ssid([BI)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x22

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x22

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-byte v0, p1, v2

    if-nez v2, :cond_1

    if-ne v0, v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p2, -0x1

    if-ne v2, v4, :cond_2

    if-eq v0, v8, :cond_0

    :cond_2
    const-string/jumbo v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "*"

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string/jumbo v2, "*"

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 13

    const/4 v9, 0x0

    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_0
    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v11, "\"\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v0, v9

    :cond_1
    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :cond_2
    iget-boolean v9, p2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iget-boolean v9, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v9, p2, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_3
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v9, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_5

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v9, v9, v5

    if-eqz v9, :cond_4

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v9, v9, v5

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v10, v10, v5

    aput-object v10, v9, v5

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    :cond_6
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    :cond_7
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    :cond_8
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    if-eqz v9, :cond_9

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    :cond_9
    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    if-eqz v9, :cond_a

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_a

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    :cond_a
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    if-eqz v9, :cond_b

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    :cond_b
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v9, :cond_c

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_c

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    :cond_c
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    if-eqz v9, :cond_d

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_d

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    :cond_d
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    if-eqz v9, :cond_e

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_e

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    :cond_e
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    if-eqz v9, :cond_f

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_f

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    :cond_f
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    if-eqz v9, :cond_10

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->size()I

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->size()I

    move-result v9

    if-nez v9, :cond_16

    new-instance v9, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-direct {v9, v10}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;-><init>(Landroid/net/wifi/WifiConfiguration$BssidWhitelist;)V

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    :cond_10
    :goto_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v6, v9, :cond_11

    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v6, v9, :cond_11

    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-virtual {p1, v9}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    :cond_11
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v8, v9, :cond_12

    invoke-virtual {p1, v8}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v9, :cond_18

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    if-eqz v7, :cond_12

    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_12

    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v9}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    :cond_12
    :goto_2
    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    if-eqz v9, :cond_13

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    :cond_13
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v9, :cond_14

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    :cond_14
    iget-boolean v9, p2, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v9, :cond_15

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v11, "*"

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFromExternal(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    :cond_15
    iget-boolean v9, p2, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    iget-boolean v9, p2, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    iget-boolean v9, p2, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iget v9, p2, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    return-void

    :cond_16
    iget-object v11, p2, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    monitor-enter v11

    :try_start_0
    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v12, p1, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v12, v9, v10}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v9

    monitor-exit v11

    throw v9

    :cond_17
    monitor-exit v11

    goto/16 :goto_1

    :cond_18
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v9, :cond_12

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v9

    if-eqz v9, :cond_12

    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v9}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto/16 :goto_2
.end method

.method private removeConnectChoiceFromAllNetworks(Ljava/lang/String;)V
    .locals 8

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing connect choice from all networks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove connect choice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->clearNetworkConnectChoice(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    monitor-exit v5

    return-void
.end method

.method private removeNetworkInternal(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Removing network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v8, "WifiConfigManager"

    const-string/jumbo v9, "removeNetworkInternal, config is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v8, :cond_2

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v11}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiKeyStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    :cond_2
    iget-boolean v8, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "forgetNetwork [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ] isVendorSpecificSsid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " removable? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/wifi/WifiConfigManager;->mRemovableDefaultAp:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/wifi/WifiConfigManager;->mRemovableDefaultAp:Z

    if-nez v8, :cond_3

    return v11

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isRemovedVedorAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wifi/util/StringUtil;->makeStringEapMethod(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v7, Ljava/io/FileWriter;

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v8, "version=1\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, v7

    :goto_0
    :try_start_2
    const-string/jumbo v8, "network={\n"

    invoke-virtual {v6, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "    ssid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\n    key_mgmt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\n    eap="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n}\n"

    invoke-virtual {v6, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConfigManager;->removeConnectChoiceFromAllNetworks(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v10}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v9

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v8}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeNetworkInternal: removed config. netId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " configKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " vendorAP="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hiddenSSID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " autoReconnect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    return v12

    :cond_5
    :try_start_5
    new-instance v7, Ljava/io/FileWriter;

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mFilePathRemovedNwInfo:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v6, v7

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fw.close IOException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :goto_2
    :try_start_6
    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeNetworkInternal IOException :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fw.close IOException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_3
    move-exception v2

    :goto_3
    :try_start_8
    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeNetworkInternal File not found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_4

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v4

    const-string/jumbo v8, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fw.close IOException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_5
    throw v8

    :catch_5
    move-exception v4

    const-string/jumbo v9, "WifiConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fw.close IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    :catchall_2
    move-exception v8

    move-object v6, v7

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v6, v7

    goto :goto_3

    :catch_7
    move-exception v3

    move-object v6, v7

    goto/16 :goto_2
.end method

.method private saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getOrCreateScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not allocate scan cache for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    iget v3, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v3, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iget v3, v0, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v3, v2, Landroid/net/wifi/ScanResult;->numConnection:I

    :cond_1
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/net/wifi/ScanResult;->untrusted:Z

    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->attemptNetworkLinking(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "multipleChanges"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    const-string/jumbo v2, "wifiConfiguration"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "changeReason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendDefaultHotspot20ConfigLoadBroadcast()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.LOAD_LEGACY_HOTSPOT20_CREDENTIALS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendLegacyHotspot20ConfigLoadBroadcast(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.LOAD_LEGACY_HOTSPOT20_CREDENTIALS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "legacyCred"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setDefaultsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    return-void
.end method

.method private setLastSelectedNetwork(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting last selected network to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    return-void
.end method

.method private setNetworkSelectionEnabled(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkEnabled(I)V

    :cond_0
    return-void
.end method

.method private setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkPermanentlyDisabled(I)V

    :cond_0
    return-void
.end method

.method private setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 8

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-ltz p2, :cond_0

    const/16 v1, 0x10

    if-lt p2, v1, :cond_1

    :cond_0
    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Network disable reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This AP is blocked by MDM  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    invoke-direct {p0, p1, v7}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Enabling AP is blocked by Administrator. SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v6, v2, v3}, Lcom/samsung/android/server/wifi/WifiMobileDeviceManager;->auditLog(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNetworkSelectionStatus: configKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " networkStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " disableReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    return v7

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionEnabled(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    if-eq p2, v1, :cond_5

    if-ne p2, v5, :cond_6

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    invoke-direct {p0, p1, v7}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ge p2, v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionTemporarilyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne p2, v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    const/16 v1, 0x3f2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    invoke-direct {p0, p1, v7}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_0
.end method

.method private setNetworkSelectionTemporarilyDisabled(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkTemporarilyDisabled(I)V

    :cond_0
    return-void
.end method

.method private setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1

    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method private shouldNetworksBeLinked(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetailCache;Lcom/android/server/wifi/ScanDetailCache;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v4, "shouldNetworksBeLinked unlink due to password mismatch"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldNetworksBeLinked link due to same gw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " GW "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual {p3}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v5, 0x10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldNetworksBeLinked link due to DBDC BSSID match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bssida "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bssidb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method private tryEnableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    sget-object v6, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I

    aget v6, v6, v0

    int-to-long v2, v6

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    invoke-direct {p0, p1, v10}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v6

    return v6

    :cond_0
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p1, v10}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v6

    return v6

    :cond_1
    return v10
.end method

.method private unlinkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinkNetworks un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinkNetworks un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private updateExistingInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    iput p3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    return-object v0
.end method

.method private updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->incrementDisableReasonCounter(I)V

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0

    sget-object v3, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    aget v1, v3, p2

    if-ge v0, v1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disable counter for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and threshold is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;II)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;II)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 6

    const/4 v5, -0x1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not visible to the current user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "WifiConfigManager"

    const-string/jumbo v3, "Cannot add/update network with null config"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiConfigManager"

    const-string/jumbo v3, "Cannot add/update network before store is read!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;II)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to add/update network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkAdded(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks()Ljava/util/List;

    return-object v1

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkUpdated(I)V

    goto :goto_1
.end method

.method public canDisableNetwork(II)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Checking permission to disable network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not have permission to update configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public checkAndUpdateLastConnectUid(II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update network last connect UID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not have permission to update configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    return v5
.end method

.method public clearNetworkCandidateScanResult(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clear network candidate scan result for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    const/4 v1, 0x1

    return v1
.end method

.method public clearNetworkConnectChoice(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clear network connect choice for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const/4 v1, 0x1

    return v1
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    :cond_2
    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Forget ephemeral SSID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " num="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    const-string/jumbo v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public disableNetwork(II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disabling network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not have permission to update configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v1

    if-nez v1, :cond_4

    return v4

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    return v5
.end method

.method disablePoorNetwork(IILjava/lang/String;Z)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    const/16 v1, 0x9

    :goto_0
    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disable Poor Network reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disablePoorNetwork: netId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " configKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    sget-boolean v2, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] recoverableRSSI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " config.disabledTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v2, 0x3f2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    return-void

    :cond_2
    add-int/lit8 v2, p2, 0x5

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    const/16 v1, 0xe

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-static {p1, p2, p3}, Lcom/android/server/wifi/WifiConfigStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v4, "Dump of WifiConfigManager"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "WifiConfigManager - Log Begin ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v4, "WifiConfigManager - Log End ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "WifiConfigManager - Configured networks Begin ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    monitor-exit v5

    const-string/jumbo v4, "WifiConfigManager - Configured networks End ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiConfigManager - Next network ID to be allocated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiConfigManager - Last selected network ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string/jumbo v4, "WifiConfigManager - Scan Detail Caches Begin ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "WifiConfigManager - Scan Detail Caches End ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method enableDisabledPoorNetwork()V
    .locals 9

    const/16 v8, 0xe

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v2

    if-eq v2, v8, :cond_1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] enableDisabledPoorNetwork"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v2, v8, :cond_3

    const/16 v4, -0xc8

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableDisabledPoorNetwork: netId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " configKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    const-wide/16 v6, 0x0

    :try_start_1
    iput-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit v5

    return-void
.end method

.method public enableNetwork(IZI)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enabling network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (disableOthers "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v0, p3, v4}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not have permission to update configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v1

    if-nez v1, :cond_4

    return v4

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setLastSelectedNetwork(I)V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    return v5
.end method

.method public enableVerboseLogging(I)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->enableVerboseLogging(Z)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    goto :goto_0
.end method

.method public fetchChannelSetForNetworkForPartialScan(IJI)Ljava/util/Set;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v3, :cond_1

    const-string/jumbo v3, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No scan detail and linked configs associated with networkId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchChannelSetForNetworkForPartialScan ageInMillis "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " max "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_2

    const-string/jumbo v3, " bssids "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    const-string/jumbo v3, " linked "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v3, "WifiConfigManager"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-lez p4, :cond_5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    if-lt v3, v8, :cond_5

    return-object v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    move-object/from16 v3, p0

    move-wide/from16 v8, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wifi/WifiConfigManager;->addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z

    move-result v3

    if-nez v3, :cond_6

    return-object v4

    :cond_6
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    move/from16 v16, v0

    move-object/from16 v9, p0

    move-object v10, v4

    move-wide v12, v6

    move-wide/from16 v14, p2

    invoke-direct/range {v9 .. v16}, Lcom/android/server/wifi/WifiConfigManager;->addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_8
    return-object v4
.end method

.method public forcinglyEnableAllNetworks(I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConfigManager"

    const-string/jumbo v5, "Forcingly enabling all networks"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not visible to the current user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_3

    const-string/jumbo v4, "WifiConfigManager"

    const-string/jumbo v6, "Internal configured networks is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v8

    :cond_3
    :try_start_1
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConfigManager"

    const-string/jumbo v6, "Current config is ephemeral"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v1, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not have permission to update configuration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v6}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "WifiConfigManager"

    const-string/jumbo v6, "Current config is blocked by MDM"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string/jumbo v4, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current config was permanently disabled by reason "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    const/4 v4, 0x2

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forcinglyEnableAllNetworks: configKey="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " status="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " disableReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " at="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    monitor-exit v5

    if-eqz v0, :cond_a

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    :cond_a
    return v9
.end method

.method public getAutoReconnect(I)I
    .locals 4

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAutoReconnect, netID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "Failed to get AutoReconnect config is null. return 1..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    return v1
.end method

.method public getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworkWithPassword(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworksWithPasswords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastSelectedNetwork()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    return v0
.end method

.method public getLastSelectedNetworkConfigKey()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastSelectedTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    return-wide v0
.end method

.method public getNetworkAutoConnectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkAutoConnectEnabled:Z

    return v0
.end method

.method public getSavedNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getSavedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    return-object v0
.end method

.method public handleUserStop(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalData()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    :cond_0
    return-void
.end method

.method public handleUserSwitch(I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handling user switch for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User already in foreground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "Unexpected user switch before store is read!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalUserData(I)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->setNewUser(I)V

    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->handleUserUnlockOrSwitch(I)V

    :goto_0
    return-object v0

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "Waiting for user unlock to load from store"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleUserUnlock(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling user unlock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiConfigManager"

    const-string/jumbo v1, "Ignore user unlock until store is read!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->handleUserUnlockOrSwitch(I)V

    :cond_2
    return-void
.end method

.method public incrementNetworkNoInternetAccessReports(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    const/4 v1, 0x1

    return v1
.end method

.method public isSkipInternetCheck(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-ne v1, v3, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method isVendorSpecificSsid(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public loadFromStore()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "loadFromStore"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wifi/util/StringUtil;->isPossibleDataAccess()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Secure Booting: < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "vold.decrypt"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > is not <trigger_restart_framework> skip loadFromStore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStore;->areStoresPresent()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "New store files not found. No saved networks loaded!"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresPresent()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "No legacy store files either"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendDefaultHotspot20ConfigLoadBroadcast()V

    :cond_1
    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStore;->recoverySharedStore()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateFromLegacyStore is completed. mNextNetworkId: set to 0 from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iput v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->removeStores()Z

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Handling user unlock before loading from store."

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    :cond_4
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStore;->read()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkListStoreData;->getSharedConfigurations()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v4}, Lcom/android/server/wifi/NetworkListStoreData;->getUserConfigurations()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    invoke-virtual {v5}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->getSsidList()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiConfigManager"

    const-string/jumbo v4, "XML deserialization of store failed. All saved networks are lost!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadFromStore: XML deserialization of store failed. All saved networks are lost!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "WifiConfigManager"

    const-string/jumbo v4, "Reading from new store failed. All saved networks are lost!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadFromStore: Reading from new store failed. All saved networks are lost!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadFromUserStoreAfterUnlockOrSwitch(I)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-static {p1}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->switchUserStoreAndRead(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkListStoreData;->getUserConfigurations()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    invoke-virtual {v3}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->getSsidList()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WifiConfigManager"

    const-string/jumbo v3, "XML deserialization of store failed. All saved private networks arelost!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_1
    move-exception v0

    const-string/jumbo v2, "WifiConfigManager"

    const-string/jumbo v3, "Reading from new store failed. All saved private networks are lost!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public migrateFromLegacyStore()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wifi/WifiConfigStore.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "There is no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresDefautApRmNetworkOldVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "There is removed_nw.conf of old version"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->loadFromRemovedNetwork()V

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresPresent()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Legacy store files not found. No migration needed!"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    return v6

    :cond_2
    sget v3, Lcom/android/server/wifi/WifiConfigManager;->tryNumber:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->removeStores()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadFromStore did not call for whatever reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/WifiConfigManager;->tryNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->read()Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;

    move-result-object v1

    const-string/jumbo v3, "Reading from legacy store completed"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->getConfigurations()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->getDeletedEphemeralSSIDs()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->loadLegacyHotspot20Credentials()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->sendLegacyHotspot20ConfigLoadBroadcast(Ljava/lang/String;)V

    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    iput-boolean v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    :cond_5
    sget v3, Lcom/android/server/wifi/WifiConfigManager;->tryNumber:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/wifi/WifiConfigManager;->tryNumber:I

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    move-result v3

    if-nez v3, :cond_6

    return v7

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks()Ljava/util/List;

    const-string/jumbo v3, "Migration from legacy store completed"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    return v6
.end method

.method public needsUnlockedKeyStore()Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiKeyStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeFilesInDataMiscCeDirectory()V
    .locals 10

    const/4 v5, 0x0

    new-instance v4, Ljava/io/File;

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v6}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeFilesInDataMiscCeDirectory  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/wifi/WifiConfigManager$3;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiConfigManager$3;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    array-length v6, v2

    if-nez v6, :cond_1

    return-void

    :cond_1
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeFilesInDataMiscCeDirectory, deleteFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/wifi/hotspot2/PasspointManager;->clearInternalData()V

    return-void
.end method

.method public removeFilesInDataMiscDirectory()V
    .locals 10

    const/4 v5, 0x0

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeFilesInDataMiscDirectory  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/wifi/WifiConfigManager$2;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiConfigManager$2;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    array-length v6, v2

    if-nez v6, :cond_1

    return-void

    :cond_1
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v1, v2, v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "default_ap.conf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "generalinfo_nw.conf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "cred.conf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-string/jumbo v7, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteWifiFiles, skip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeFilesInDataMiscDirectory, deleteFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalData()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->stopBufferedWriteAlarm()V

    return-void
.end method

.method public removeNetwork(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(III)Z

    move-result v0

    return v0
.end method

.method public removeNetwork(III)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNetwork ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not have permission to delete configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworkInternal(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to remove network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eq p3, v5, :cond_4

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->canRemoveMDMNetwork(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " created by MDM not allowed to be removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    :cond_5
    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    invoke-interface {v1, p1}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkRemoved(I)V

    :cond_6
    return v5
.end method

.method public removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    return-object v3

    :cond_1
    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove all networks for app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v5, v6, :cond_2

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", application \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" uninstalled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method removeNetworksForUser(I)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove all networks for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq p1, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public resetSimNetworks()V
    .locals 6

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "resetSimNetworks"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3, v0}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimIdentity(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    monitor-exit v4

    return-void
.end method

.method public retrieveHiddenNetworkList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation

    const/16 v12, 0x20

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    sget-object v9, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v9, "gbk"

    sget-object v10, Lcom/android/server/wifi/WifiConfigManager;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "ksc5601"

    sget-object v10, Lcom/android/server/wifi/WifiConfigManager;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->getNonUTF8HiddenNetworkSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    :try_start_0
    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v12, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveHiddenNetworkList: [KOR|CHN] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not added to hiddenList..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    :try_start_1
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v12, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveHiddenNetworkList: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not added to hiddenList..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_5
    :try_start_2
    new-instance v9, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {v9, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v9, "WifiConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is invalid."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :try_start_3
    new-instance v9, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    const-string/jumbo v9, "WifiConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is invalid."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    return-object v3
.end method

.method public retrievePnoNetworkList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiConfigurationUtil;->createPnoNetwork(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method public saveToStore(Z)Z
    .locals 14

    const/4 v13, 0x0

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "saveToStore mPendingStoreRead is true, Not yet ready to save"

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    return v13

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v9, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_1

    :cond_2
    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    if-eqz v9, :cond_3

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v12, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->addLegacyPasspointConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "WifiConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to migrate legacy Passpoint config: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_3
    :try_start_1
    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v9, :cond_4

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v12, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    monitor-exit v10

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9, v5}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v10

    goto :goto_1

    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_7
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/NetworkListStoreData;->setSharedConfigurations(Ljava/util/List;)V

    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v9, v8}, Lcom/android/server/wifi/NetworkListStoreData;->setUserConfigurations(Ljava/util/List;)V

    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->setSsidList(Ljava/util/Set;)V

    :try_start_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->write(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v9, 0x1

    return v9

    :catch_0
    move-exception v3

    const-string/jumbo v9, "WifiConfigManager"

    const-string/jumbo v10, "XML serialization for store failed. Saved networks maybe lost!"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v13

    :catch_1
    move-exception v2

    const-string/jumbo v9, "WifiConfigManager"

    const-string/jumbo v10, "Writing to store failed. Saved networks maybe lost!"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v13
.end method

.method semRemoveNetwork(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "semRemoveNetwork"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v5

    :cond_1
    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semRemoveNetwork ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworkInternal(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNetwork  key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " config.id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    const/4 v2, 0x1

    return v2
.end method

.method public setAuthenticated(IZ)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    return v1
.end method

.method public setAutoReconnect(II)V
    .locals 4

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutoReconnect, netID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", autoReconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "setAutoReconnect, Failed to set autoReconnect. config is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    return-void
.end method

.method public setCaptivePortal(IZ)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    return v1
.end method

.method public setLoginUrl(ILjava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkAutoConnect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkAutoConnectEnabled:Z

    return-void
.end method

.method public setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set network candidate scan result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    return v4
.end method

.method public setNetworkConnectChoice(ILjava/lang/String;J)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set network connect choice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkDefaultGwMacAddress(ILjava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkNoInternetAccessExpected(IZ)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkValidatedInternetAccess(IZ)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const/4 v1, 0x1

    return v1
.end method

.method public setOnSavedNetworkUpdateListener(Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    return-void
.end method

.method public setWeChatWifiInfo(II)V
    .locals 5

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWeChatWifiInfo, netID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isWeChatAp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "setWeChatWifiInfo, Failed to set isWeChatAp. config is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-ne p2, v1, :cond_2

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public testMigrate()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiConfigManager;->tryNumber:I

    return-void
.end method

.method public tryEnableNetwork(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1
.end method

.method updateDisabledPoorNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] updateDisabledPoorNetworkStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDisabledPoorNetworkStatus: netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " configKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    const/16 v1, 0x3f2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    return-void
.end method

.method public updateNetworkAfterConnect(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update network after connect for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    return v5
.end method

.method public updateNetworkAfterDisconnect(I)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update network after disconnect for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkNotRecommended(IZ)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNotRecommended(Z)V

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkRecommendation: configKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " notRecommended="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkSelectionStatus(II)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1
.end method

.method public updateNetworkSelectionStatusForWrongPassword(II)Z
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid config for networkId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionTemporarilyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkSelectionStatusForWrongPassword: configKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " networkStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " disableReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const/4 v2, 0x1

    return v2
.end method

.method public updateScanDetailCacheFromWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 10

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/ScanResult;->level:I

    const v7, 0x9c40

    invoke-virtual {v4, v1, v2, v3, v7}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Updating scan detail cache freq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " BSSID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " RSSI="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateScanDetailForNetwork(ILcom/android/server/wifi/ScanDetail;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V

    return-void
.end method

.method public updateSkipInternetCheck(II)V
    .locals 4

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSkipInternetCheck, netId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", skipInternetCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "Failed to update SkipInternetCheck config is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    return-void
.end method

.method public updateSkipInternetCheck(IZ)V
    .locals 4

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSkipInternetCheck, netId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", skipInternetCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "Failed to update SkipInternetCheck config is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUsableInternet(IZ)V
    .locals 4

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsableInternet, netId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isUsableInternet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "WifiConfigManager"

    const-string/jumbo v2, "Failed to update UsableInternet config is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    return-void
.end method

.method public wasEphemeralNetworkDeleted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
