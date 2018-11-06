.class public Lcom/samsung/android/server/wifi/SemSmdMotionDetector;
.super Ljava/lang/Object;
.source "SemSmdMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemSmdMotionDetector$1;,
        Lcom/samsung/android/server/wifi/SemSmdMotionDetector$2;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_REGISTERATION_SENSOR_TIME:J = 0x57e40L

.field private static final MAX_WAIT_TIME_SENSOR_STATUS:J = 0x5dcL

.field private static final TAG:Ljava/lang/String; = "WifiScanController"

.field private static sInstance:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;


# instance fields
.field private mCheckSMDSetting:Z

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAnyMotionDetectorSupported:Z

.field private mIsMoved:Z

.field private volatile mIsRegisteredSMDListener:Z

.field private mLastNLPScanRequestTimeForSMDRegi:J

.field private mLastRequestTimeForGettingSMDStatus:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/server/wifi/SemSmdMotionDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/server/wifi/SemSmdMotionDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsMoved:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/SemSmdMotionDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->getPersistedAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/SemSmdMotionDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/wifi/SemSmdMotionDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->unregisterSensorMonitor()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->sInstance:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsMoved:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mCheckSMDSetting:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mLastNLPScanRequestTimeForSMDRegi:J

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mLastRequestTimeForGettingSMDStatus:J

    new-instance v2, Lcom/samsung/android/server/wifi/SemSmdMotionDetector$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector$1;-><init>(Lcom/samsung/android/server/wifi/SemSmdMotionDetector;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/samsung/android/server/wifi/SemSmdMotionDetector$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector$2;-><init>(Lcom/samsung/android/server/wifi/SemSmdMotionDetector;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mCheckSMDSetting:Z

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "AnyMotionDetector_wifi"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/SemSmdMotionDetector;
    .locals 2

    const-class v1, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->sInstance:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->sInstance:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->sInstance:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mContext:Landroid/content/Context;

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

.method private isLocationEnabled()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private registerSensorMonitor()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mCheckSMDSetting:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiScanController"

    const-string/jumbo v1, "location is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->getPersistedAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiScanController"

    const-string/jumbo v1, "airplain mode enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "WifiScanController"

    const-string/jumbo v1, "register SMD listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mLastNLPScanRequestTimeForSMDRegi:J

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z

    return v4

    :cond_2
    return v2
.end method

.method private unregisterSensorMonitor()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiScanController"

    const-string/jumbo v1, "unregister SMD listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndStopMonitoring()V
    .locals 6

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mLastNLPScanRequestTimeForSMDRegi:J

    sub-long v0, v2, v4

    const-string/jumbo v2, "WifiScanController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAndStopMonitoring diff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x57e40

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->unregisterSensorMonitor()V

    :cond_2
    const-string/jumbo v3, "WifiScanController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SMD listener state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "registered"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v2, "unregistered"

    goto :goto_0
.end method

.method public getMovingStatus()Z
    .locals 9

    const/4 v8, 0x1

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mLastRequestTimeForGettingSMDStatus:J

    sub-long v0, v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiScanController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ignore to call AMD api. diff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsMoved:Z

    return v3

    :cond_1
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsMoved:Z

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v7, 0x32

    invoke-virtual {v3, v6, v7}, Landroid/hardware/scontext/SContextManager;->requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mLastRequestTimeForGettingSMDStatus:J

    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsMoved:Z

    return v3

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->startMonitoring()V

    return v8
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mCheckSMDSetting:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    return v0
.end method

.method public resetTimer(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mLastNLPScanRequestTimeForSMDRegi:J

    return-void
.end method

.method public setEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mCheckSMDSetting:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->unregisterSensorMonitor()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public startMonitoring()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->registerSensorMonitor()Z

    return-void
.end method

.method public stopMonitoring()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->unregisterSensorMonitor()V

    return-void
.end method
