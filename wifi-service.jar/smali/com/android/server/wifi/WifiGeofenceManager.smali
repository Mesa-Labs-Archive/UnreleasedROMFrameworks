.class public Lcom/android/server/wifi/WifiGeofenceManager;
.super Ljava/lang/Object;
.source "WifiGeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiGeofenceManager$1;,
        Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "WifiGeofenceManager"

.field private static final WIFI_INTENT_ACTION_GEOFENCE_STATE:Ljava/lang/String; = "com.sec.android.wifi.geofence.state"

.field private static final WIFI_INTENT_ACTION_GEOFENCE_TRIGGERED:Ljava/lang/String; = "com.sec.android.wifi.GEOFENCE_TRIGGERED"

.field private static final mGeofenceLock:Ljava/lang/Object;


# instance fields
.field private mAutoWifiState:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

.field private final mGeofenceDataList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeofenceLogManager:Lcom/android/server/wifi/WifiGeofenceLogManager;

.field private final mGeofenceManagerEnabled:Z

.field private mInRange:Z

.field private mIntializedGeofence:Z

.field public mLastGeofenceState:I

.field private final mLooper:Landroid/os/Looper;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

.field private mScanInterval:I

.field private mScanMaxInterval:I

.field private final mStartGeofenceHandler:Landroid/os/Handler;

.field final mStartGeofenceThread:Ljava/lang/Runnable;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

.field private mWifiGeofenceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiGeofenceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mAutoWifiState:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiGeofenceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiGeofenceManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiGeofenceManager;)Lcom/samsung/android/location/SemLocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiGeofenceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mStartGeofenceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiGeofenceManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiGeofenceManager;Lcom/samsung/android/location/SemLocationManager;)Lcom/samsung/android/location/SemLocationManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiGeofenceManager;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGeofenceManager;->isGeofenceExit(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiGeofenceManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiGeofenceManager;->isSimCardReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiGeofenceManager;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGeofenceManager;->syncGetGeofenceStateByName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiGeofenceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiGeofenceManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForInOutRange(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiGeofenceManager;->DBG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mInRange:Z

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mIntializedGeofence:Z

    new-instance v2, Lcom/android/server/wifi/WifiGeofenceManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiGeofenceManager$1;-><init>(Lcom/android/server/wifi/WifiGeofenceManager;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mStartGeofenceThread:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiGeofenceListeners:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mLastGeofenceState:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    new-instance v2, Lcom/android/server/wifi/WifiGeofenceDBHelper;

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/WifiGeofenceDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    new-instance v2, Lcom/android/server/wifi/WifiGeofenceLogManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/WifiGeofenceLogManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLogManager:Lcom/android/server/wifi/WifiGeofenceLogManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->select()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mStartGeofenceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.slocation"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.sec.feature.slocation"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.android.wifi.GEOFENCE_TRIGGERED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.location.SERVICE_READY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiGeofenceManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiGeofenceManager$2;-><init>(Lcom/android/server/wifi/WifiGeofenceManager;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "SLocation is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    goto :goto_0
.end method

.method private addGeofence(Landroid/net/wifi/WifiConfiguration;)I
    .locals 11

    const/4 v10, 0x0

    const/4 v5, -0x1

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiGeofenceManager"

    const-string/jumbo v3, "addGeofence() - GeofenceManager is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v5

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->getLocationIdFromOldTime()I

    move-result v0

    const-string/jumbo v1, "WifiGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addGeofence() -  candidate id for delete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_3

    return v5

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiGeofenceManager;->removeGeofence(Ljava/lang/String;)V

    :cond_4
    new-instance v9, Lcom/samsung/android/location/SemGeofence;

    const/4 v1, 0x4

    invoke-direct {v9, v1, v10}, Lcom/samsung/android/location/SemGeofence;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v1, v9}, Lcom/samsung/android/location/SemLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;)I

    move-result v2

    if-gez v2, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v1, v9}, Lcom/samsung/android/location/SemLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;)I

    move-result v2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addGeofence()    - [ locationId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ], [ configKey : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    const-string/jumbo v1, "WifiGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addGeofence() - [ configKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ], [ locationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v10

    if-lez v2, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->insert(IILjava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiGeofenceManager;->startGeofence(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return v2

    :cond_6
    monitor-exit v10

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method private addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLogManager:Lcom/android/server/wifi/WifiGeofenceLogManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiGeofenceLogManager;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private checkAndSetTelephonyManagerInstance()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method private getSimState()I
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiGeofenceManager;->checkAndSetTelephonyManagerInstance()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-gt v3, v5, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "-1,-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "READY"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v7

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    array-length v3, v2

    if-le v3, v5, :cond_4

    const-string/jumbo v3, "READY"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v7

    :cond_4
    return v6

    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    return v3
.end method

.method private isFindLocationId(Ljava/lang/String;)I
    .locals 7

    sget-object v4, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFindLocationId() - Location Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_1
    monitor-exit v4

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v4, "isFindLocationId() - failed to find!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private isGeofenceExit(Z)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    sget-object v5, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getIsGeofenceEnter()I

    move-result v3

    if-ne v3, v6, :cond_1

    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v6, "isGeofenceExit : return false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v7

    :cond_1
    if-eqz p1, :cond_2

    if-nez v3, :cond_2

    :try_start_1
    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v6, "isGeofenceExit : return false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v7

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v5

    if-eqz v2, :cond_4

    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "isGeofenceExit : return true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "isGeofenceExit : return false, Geofence DB is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private isSimCardReady()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/server/wifi/WifiGeofenceManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiGeofenceManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private removeGeofence(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v4, "removeGeofence() - Enter !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v4, "removeGeofence() - GeofenceManager is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGeofenceManager;->isFindLocationId(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WifiGeofenceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeGeofence() - stopLearning("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/location/SemLocationManager;->stopLearning(I)I

    move-result v2

    if-gez v2, :cond_3

    const-string/jumbo v3, "WifiGeofenceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeGeofence()- id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", stopLearning() - ERROR !!, mResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeGeofence() - [ locationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ], ERROR !!, mResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiGeofenceManager;->stopGeofence(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->delete(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(I)I

    move-result v2

    if-gez v2, :cond_6

    const-string/jumbo v3, "WifiGeofenceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeGeofence()- id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mSLocationManager.removeGeofence() ERROR !!, mResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeGeofence() - [ locationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ], mSLocationManager.removeGeofence ERROR !!, mResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v4, "removeGeofence() - Exit !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeGeofence() - [ locationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ], [ configKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    const-string/jumbo v3, "WifiGeofenceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeGeofence() - [ configKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ], [ locationId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastForGeofenceState(Z)V
    .locals 5

    sget-boolean v2, Lcom/android/server/wifi/WifiGeofenceManager;->DBG:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.wifi.geofence.state"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send broadcast before boot - action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastForInOutRange(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiGeofenceManager;->checkAndSetTelephonyManagerInstance()V

    const-string/jumbo v0, "WifiGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastForInOutRange() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " getNetworkType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForGeofenceState(Z)V

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiGeofenceManager;->sendGeofenceStateChangedEvent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->isGeofenceExit(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiGeofenceManager;->sendGeofenceStateChangedEvent(I)V

    :goto_1
    if-eq p1, v4, :cond_2

    if-nez p1, :cond_6

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mInRange:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getPeriodicSingleScanInterval()I

    move-result v0

    const v1, 0x1f400

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetPeriodicScanTime()V

    const-string/jumbo v0, "WifiGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastForInOutRange - resetPeiodicScanTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityManager;->getPeriodicSingleScanInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getPeriodicSingleScanInterval()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiGeofenceManager;->setScanInterval(II)V

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForGeofenceState(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->sendGeofenceStateChangedEvent(I)V

    goto :goto_1

    :cond_6
    if-ne p1, v5, :cond_0

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mInRange:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getPeriodicSingleScanInterval()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiGeofenceManager;->setScanInterval(II)V

    :cond_7
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForGeofenceState(Z)V

    goto :goto_0
.end method

.method private startGeofence(I)V
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v4, :cond_0

    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "SLocation service is not ready"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.wifi.GEOFENCE_TRIGGERED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/location/SemLocationManager;->startGeofenceMonitoring(ILandroid/app/PendingIntent;)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v4, -0x3

    if-ne v2, v4, :cond_1

    sget-object v5, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v4, v1}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->delete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    :cond_1
    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startGeofence() - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ERROR !!, mResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startGeofence()  - [ locationId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ], ERROR !!, mResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startGeofence() - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startGeofence()  - [ locationId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopGeofence(I)V
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v4, :cond_0

    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "SLocation service is not ready"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.wifi.GEOFENCE_TRIGGERED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/location/SemLocationManager;->stopGeofenceMonitoring(ILandroid/app/PendingIntent;)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v4, -0x3

    if-ne v2, v4, :cond_1

    sget-object v5, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v4, v1}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->delete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    :cond_1
    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " stopGeofence() - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ERROR !!, mResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGeofence()   - [ locationId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ], ERROR !!, mResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " stopGeofence() - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGeofence()   - [ locationId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private syncGetGeofenceStateByName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "[invalid geofence state]"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "ENTER  "

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "EXIT   "

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deinitGeofence()V
    .locals 4

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "deinitGeofence"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "deinitGeofence() - GeofenceManager is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mIntializedGeofence:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "deinit geofence, alread deinitialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->stopGeofence(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    monitor-exit v3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mIntializedGeofence:Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLogManager:Lcom/android/server/wifi/WifiGeofenceLogManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiGeofenceLogManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public forgetNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiGeofenceManager"

    const-string/jumbo v1, "forgetNetwork() - GeofenceManager is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "WifiGeofenceManager"

    const-string/jumbo v1, "ConnectModeState() - FORGET_NETWORK - config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->removeGeofence(Ljava/lang/String;)V

    const-string/jumbo v0, "WifiGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConnectModeState() - FORGET_NETWORK - configKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ForgetNetwork    - [ configKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->isGeofenceExit(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForInOutRange(I)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForInOutRange(I)V

    goto :goto_0
.end method

.method public getCurrentGeofenceState()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mLastGeofenceState:I

    return v0
.end method

.method public getGeofenceEnterKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getIsGeofenceEnter()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    monitor-exit v6

    return-object v0
.end method

.method public getGeofenceInformation()Ljava/lang/String;
    .locals 8

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, "WifiGeofenceManager"

    const-string/jumbo v6, "getGeofenceInformation() - GeofenceManager is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "GeofenceManager is not supported"

    return-object v5

    :cond_0
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiGeofenceManager;->isGeofenceExit(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current geofence state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiGeofenceManager;->syncGetGeofenceStateByName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Scan Interval (now/max):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mScanInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mScanMaxInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Geofence Details:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    const-string/jumbo v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getLocationId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " st:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getGeofenceStateToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " key:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    monitor-exit v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public initGeofence()V
    .locals 4

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "initGeofence"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mIntializedGeofence:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "init geofence, already initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v2, :cond_1

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "SLocation service is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->startGeofence(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    monitor-exit v3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mIntializedGeofence:Z

    return-void
.end method

.method isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    return v0
.end method

.method isInRange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mInRange:Z

    return v0
.end method

.method public isValidAccessPointToUseGeofence(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    new-array v1, v8, [I

    const v3, 0x2ba8c0

    aput v3, v1, v4

    new-array v0, v8, [I

    const v3, 0xa14ac

    aput v3, v0, v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v3, :cond_1

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v5, "isValidAccessPointToUseGeofence() - GeofenceManager is disabled"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v5, "isValidAccessPointToUseGeofence() - info or config is null!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v5, "isValidAccessPointToUseGeofence() - Samsung mobile hotspot"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v5, "isValidAccessPointToUseGeofence() - Android Mobile Hotspot"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget-boolean v3, p2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v5, "isValidAccessPointToUseGeofence() - isVendorSpecificSsid is true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v5, "isValidAccessPointToUseGeofence() - PassPoint AP !!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_9

    aget v2, v1, v3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    if-ne v6, v2, :cond_8

    const-string/jumbo v3, "WifiGeofenceManager"

    const-string/jumbo v5, "isValidAccessPointToUseGeofence() - Masked Android Hotspot"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return v8
.end method

.method notifyWifiState(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiGeofenceManager"

    const-string/jumbo v1, "setWifiState() - GeofenceManager is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method register(Landroid/net/NetworkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method register(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiConnectivityManager:Lcom/android/server/wifi/WifiConnectivityManager;

    return-void
.end method

.method public removeNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiGeofenceManager"

    const-string/jumbo v1, "removeNetwork() - GeofenceManager is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v0, "WifiGeofenceManager"

    const-string/jumbo v1, "ConnectModeState() - REMOVE_NETWORK - config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->removeGeofence(Ljava/lang/String;)V

    const-string/jumbo v0, "WifiGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConnectModeState() - REMOVE_NETWORK - configKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RemoveNetwork    - [ configKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->isGeofenceExit(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForInOutRange(I)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiGeofenceManager;->sendBroadcastForInOutRange(I)V

    goto :goto_0
.end method

.method public sendGeofenceStateChangedEvent(I)V
    .locals 3

    iput p1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mLastGeofenceState:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiGeofenceListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiGeofenceManager;->getGeofenceEnterKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;->onGeofenceStateChanged(ILjava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAutoWifiState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mAutoWifiState:Z

    return-void
.end method

.method setScanInterval(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiGeofenceManager"

    const-string/jumbo v1, "setScanInterval() - GeofenceManager is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "WifiGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanInterval interval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", maxInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mScanInterval:I

    iput p2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mScanMaxInterval:I

    return-void
.end method

.method public setWifiGeofenceListener(Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mWifiGeofenceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startGeofenceThread(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v7, :cond_0

    const-string/jumbo v7, "WifiGeofenceManager"

    const-string/jumbo v8, "startGeofenceThread() - GeofenceManager is disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v7, :cond_6

    if-eqz p1, :cond_6

    const-string/jumbo v7, "WifiGeofenceManager"

    const-string/jumbo v8, "ConnectModeState - enter !! - mGeofenceManagerEnabled !!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDataList:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    :cond_3
    if-nez v6, :cond_1

    const-string/jumbo v7, "WifiGeofenceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "delete config(Sync) - locationId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  configKey() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Delete config(sync)- [ locationId : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ], [ configKey : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->delete(I)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(I)I

    move-result v5

    if-gez v5, :cond_4

    const-string/jumbo v7, "WifiGeofenceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "delete config(Sync) - locationId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", removeGeofence() ERROR !!, mResult : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Delete config(sync)- [ locationId : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ], removeGeofence ERROR !!, mResult : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_4
    :try_start_1
    const-string/jumbo v7, "WifiGeofenceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "delete config(Sync) - locationId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", configKey : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", removeGeofence() Success !!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Delete config(sync)- [ locationId : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ], [ configKey : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " ]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    monitor-exit v8

    iget-object v7, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mStartGeofenceHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mStartGeofenceThread:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public triggerStartLearning(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v4, :cond_0

    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "triggerStartLearning() - GeofenceManager is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "triggerStartLearning - currentConfig is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiGeofenceManager;->checkAndSetTelephonyManagerInstance()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->isFindLocationId(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, -0x64

    if-gez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofence(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/location/SemLocationManager;->startLearning(I)I

    move-result v1

    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerStartLearning - new locationId, startLearning id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-gez v0, :cond_6

    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "triggerStartLearning - locationId < 0 !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerStartLearning - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",  startLearning Success !!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trigStartLearning- [ locationId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ], startLearning Success !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v4, "WifiGeofenceManager"

    const-string/jumbo v5, "triggerStartLearning - locationId < 0 !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->update(IJ)V

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiGeofenceManager;->startGeofence(I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/location/SemLocationManager;->startLearning(I)I

    move-result v1

    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerStartLearning - startLearning id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-gez v1, :cond_2

    const/4 v4, -0x3

    if-ne v1, v4, :cond_7

    sget-object v5, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->delete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    :cond_7
    const-string/jumbo v4, "WifiGeofenceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerStartLearning - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", enter() - ERROR !!, mResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trigStartLearning- [ locationId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ], enter() - ERROR !!, mResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public triggerStopLearning(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceManagerEnabled:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "triggerStopLearning() - GeofenceManager is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "WifiGeofenceManager"

    const-string/jumbo v3, "triggerStopLearning - currentConfig is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiGeofenceManager;->isFindLocationId(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "WifiGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerStopLearning id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mSLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/location/SemLocationManager;->stopLearning(I)I

    move-result v1

    if-gez v1, :cond_4

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    sget-object v3, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiGeofenceManager;->mGeofenceDBHelper:Lcom/android/server/wifi/WifiGeofenceDBHelper;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiGeofenceDBHelper;->delete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    :cond_2
    const-string/jumbo v2, "WifiGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerStopLearning - id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exit() - ERROR !!, mResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerStopLearning - [ locationId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ], exit() - ERROR !!, mResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerStopLearning - [ locationId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ], Success !! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiGeofenceManager;->addGeofenceIntentHistoricalDumpLog(Ljava/lang/String;)V

    goto :goto_0
.end method
