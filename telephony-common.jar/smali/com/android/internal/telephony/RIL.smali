.class public final Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;,
        Lcom/android/internal/telephony/RIL$RilHandler;,
        Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private final mNetworkTypeLog:Landroid/util/LocalLog;

.field mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

.field volatile mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

.field mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

.field private mPduTest:Lcom/android/internal/telephony/PduTest;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

.field volatile mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

.field private mSendEnableUnsol:J

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/RIL;Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/RIL;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/RIL;Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "slot1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "slot2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "slot3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v3}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iput v5, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iput v5, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide v8, p0, Lcom/android/internal/telephony/RIL;->mSendEnableUnsol:J

    new-instance v3, Landroid/util/LocalLog;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mNetworkTypeLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RIL: init preferredNetworkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cdmaSubscription="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    iput p2, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    iput v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    new-instance v3, Lcom/android/internal/telephony/RadioResponse;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RadioResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    new-instance v3, Lcom/android/internal/telephony/RadioIndication;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    new-instance v3, Lcom/android/internal/telephony/OemHookResponse;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/OemHookResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

    new-instance v3, Lcom/android/internal/telephony/OemHookIndication;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/OemHookIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

    new-instance v3, Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RIL$RilHandler;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    new-instance v3, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v3, "RILJ"

    invoke-virtual {v1, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v3, "RILJ_ACK_WL"

    invoke-virtual {v1, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v3, "ro.ril.wake_lock_timeout"

    const v4, 0xea60

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    const-string/jumbo v3, "ro.ril.wake_lock_timeout"

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    iput v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    new-instance v3, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v2

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/internal/telephony/PduTest;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/android/internal/telephony/PduTest;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioIndication;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mPduTest:Lcom/android/internal/telephony/PduTest;

    :cond_0
    return-void
.end method

.method private acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 8

    monitor-enter p1

    :try_start_0
    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to aquire wakelock for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p1

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :try_start_1
    const-string/jumbo v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Acquiring Invalid Wakelock type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    return-void

    :pswitch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v4}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    :goto_1
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p1

    return-void

    :cond_2
    :try_start_5
    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p1

    throw v2

    :pswitch_1
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v3

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addRequest(Lcom/android/internal/telephony/RILRequest;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long v4, v0, v4

    long-to-int v3, v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    if-nez v2, :cond_0

    new-instance v2, Landroid/telephony/TelephonyHistogram;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-direct {v2, v6, v4, v7}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v4, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static arrayListToIntArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private clearRequestList(IZ)V
    .locals 7

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz p2, :cond_0

    const-string/jumbo v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearRequestList  mWakeLockCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_1

    const-string/jumbo v3, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private clearWakeLock(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    monitor-exit v1

    return v2

    :cond_0
    :try_start_1
    const-string/jumbo v0, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    return v2

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    return v4

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    int-to-byte v9, v9

    if-ne v9, v7, :cond_0

    move v9, v7

    :goto_0
    iput-boolean v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    iget-object v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    iget-object v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    iget-object v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    iget-object v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v0, v9

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    iget-object v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v9, v8

    goto :goto_0

    :cond_1
    iget-object v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    iput v10, v9, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    iget-object v9, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    if-ne v10, v7, :cond_2

    :goto_2
    iput-boolean v7, v9, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    int-to-byte v6, v7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_3

    iget-object v7, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    move v7, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_4

    iget-object v7, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .locals 1

    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    :cond_1
    iput-object p2, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method static convertDataCallResult(Landroid/hardware/radio/V1_0/SetupDataCallResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 12

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v1, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    iget v2, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    iget v3, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    iget v4, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    iget-object v5, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    iget v11, p0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method static convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/CellInfo;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iget v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v12, v6, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    invoke-virtual {v5, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    iget v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    packed-switch v9, :pswitch_data_0

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected cellinfotype: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move v9, v10

    goto :goto_1

    :pswitch_0
    iget-object v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CellInfoGsm;

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget-byte v9, v9, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    invoke-static {v9}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v2, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/GsmSignalStrength;->timingAdvance:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    invoke-virtual {v5, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v9, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CellInfoCdma;

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_2
    iget-object v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CellInfoLte;

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v3, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v9, v6, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v9, v9, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :cond_1
    return-object v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;",
            "Lcom/android/internal/telephony/RIL;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/V1_0/HardwareConfig;

    iget v13, v9, Landroid/hardware/radio/V1_0/HardwareConfig;->type:I

    packed-switch v13, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    iget-object v1, v9, Landroid/hardware/radio/V1_0/HardwareConfig;->modem:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;

    iget-object v1, v9, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v2, v9, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget v3, v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rilModel:I

    iget v4, v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rat:I

    iget v5, v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxVoice:I

    iget v6, v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxData:I

    iget v7, v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxStandby:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    :goto_1
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    iget-object v2, v9, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v3, v9, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget-object v1, v9, Landroid/hardware/radio/V1_0/HardwareConfig;->sim:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/HardwareConfigSim;

    iget-object v1, v1, Landroid/hardware/radio/V1_0/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    return-object v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/LceDataInfo;",
            "Lcom/android/internal/telephony/RIL;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->lastHopCapacityKbps:I

    iget-byte v4, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->confidenceLevel:B

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    iget-boolean v4, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->lceSuspended:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LCE capacity information received: capacity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " confidence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " lceSuspended="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .locals 8

    iget v2, p0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    iget v3, p0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    iget v4, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    iget-object v5, p0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    iget v6, p0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "convertHalRadioCapability: session="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", phase="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", rat="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", logicModemUuid="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", status="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object v1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object v0
.end method

.method static convertHalSignalStrength(Landroid/hardware/radio/V1_0/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 15

    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget-object v3, p0, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    iget-object v4, p0, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v4, v4, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    iget-object v5, p0, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v5, v5, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    iget-object v6, p0, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v6, v6, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    iget-object v7, p0, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v7, v7, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    iget-object v8, p0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v8, v8, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    iget-object v9, p0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    iget-object v10, p0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v10, v10, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    iget-object v11, p0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v11, v11, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    iget-object v12, p0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v12, v12, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget-object v13, p0, Landroid/hardware/radio/V1_0/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget v13, v13, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    return-object v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method private static convertToHalDataProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;
    .locals 2

    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->profileId:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->profileId:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->protocol:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->roamingProtocol:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->authType:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->password:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->type:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->type:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConnsTime:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConnsTime:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConns:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->waitTime:I

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->enabled:Z

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->enabled:Z

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->supportedApnTypesBitmap:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->supportedApnTypesBitmap:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearerBitmap:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->bearerBitmap:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mtu:I

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mtu:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mvnoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->convertToHalMvnoType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoType:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->mvnoMatchData:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method private static convertToHalMvnoType(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "imsi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "gid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-string/jumbo v0, "spn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static convertToHalResetNvType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;
    .locals 2

    new-instance v0, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    iput p1, v0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    iput p2, v0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    iput p3, v0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    iput p4, v0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    iput p5, v0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    iput p6, v0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    invoke-direct {p0, p7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    return-object v0
.end method

.method private decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    monitor-enter p1

    :try_start_0
    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decrementing Invalid Wakelock type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-le v7, v8, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, -0x1

    :cond_0
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    iget-object v1, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-le v1, v8, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    :cond_0
    return-object p1
.end method

.method private getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xxxx"

    return-object v0

    :cond_0
    return-object p1
.end method

.method private getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    return-object v1

    :cond_2
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    aget-object v1, v2, v1

    invoke-static {v1}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->getService(Ljava/lang/String;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mOemHookResponse:Lcom/android/internal/telephony/OemHookResponse;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mOemHookIndication:Lcom/android/internal/telephony/OemHookIndication;

    invoke-interface {v1, v2, v3}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->setResponseFunctions(Landroid/hardware/radio/deprecated/V1_0/IOemHookResponse;Landroid/hardware/radio/deprecated/V1_0/IOemHookIndication;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    return-object v1

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "getOemHookProxy: mOemHookProxy == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OemHookProxy getService/setResponseFunctions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsMobileNetworkSupported:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v6, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v6

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    return-object v1

    :cond_2
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSetResponseFunctions(Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioResponse;Lcom/android/internal/telephony/hardware/radio/V1_0/ISecRadioIndication;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v6, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    return-object v1

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v2, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [I

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    sget-object v4, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v0, Landroid/telephony/TelephonyHistogram;

    sget-object v3, Lcom/android/internal/telephony/RIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v0, v3}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method private handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList()V

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private isDebugLevelNotLow()Z
    .locals 3

    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0x4f4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object v0
.end method

.method public static primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, p0, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static processSpaceCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const-string/jumbo v7, "ATCMD"

    const-string/jumbo v8, "processSpaceCommand"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v7, "CUSTOMER_TEST_REQUEST"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "command"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "command"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    const-string/jumbo v8, " --es flag"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    const-string/jumbo v7, "ATCMD"

    const-string/jumbo v8, "There is space between command"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, " "

    const-string/jumbo v8, "/_/"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v7, " "

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v6, v0, v7

    if-eqz v4, :cond_1

    const-string/jumbo v7, "/_/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "/_/"

    const-string/jumbo v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v9, "command"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "RILJ"

    const-string/jumbo v8, "Unexpected exception in processSpaceCommand"

    invoke-static {v7, v8, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const-string/jumbo v7, " "

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "<unknown request>"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "GET_SIM_STATUS"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "ENTER_SIM_PIN"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "ENTER_SIM_PUK"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "ENTER_SIM_PIN2"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "ENTER_SIM_PUK2"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "CHANGE_SIM_PIN"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "CHANGE_SIM_PIN2"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "DIAL"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "GET_IMSI"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "HANGUP"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "UDUB"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "SIGNAL_STRENGTH"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "VOICE_REGISTRATION_STATE"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "DATA_REGISTRATION_STATE"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "OPERATOR"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "RADIO_POWER"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "DTMF"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "SEND_SMS"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "SEND_SMS_EXPECT_MORE"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "SETUP_DATA_CALL"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "SIM_IO"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "SEND_USSD"

    return-object v0

    :sswitch_1d
    const-string/jumbo v0, "CANCEL_USSD"

    return-object v0

    :sswitch_1e
    const-string/jumbo v0, "GET_CLIR"

    return-object v0

    :sswitch_1f
    const-string/jumbo v0, "SET_CLIR"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    :sswitch_21
    const-string/jumbo v0, "SET_CALL_FORWARD"

    return-object v0

    :sswitch_22
    const-string/jumbo v0, "QUERY_CALL_WAITING"

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "SET_CALL_WAITING"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "SMS_ACKNOWLEDGE"

    return-object v0

    :sswitch_25
    const-string/jumbo v0, "GET_IMEI"

    return-object v0

    :sswitch_26
    const-string/jumbo v0, "GET_IMEISV"

    return-object v0

    :sswitch_27
    const-string/jumbo v0, "ANSWER"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "DEACTIVATE_DATA_CALL"

    return-object v0

    :sswitch_29
    const-string/jumbo v0, "QUERY_FACILITY_LOCK"

    return-object v0

    :sswitch_2a
    const-string/jumbo v0, "SET_FACILITY_LOCK"

    return-object v0

    :sswitch_2b
    const-string/jumbo v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "QUERY_NETWORK_SELECTION_MODE"

    return-object v0

    :sswitch_2d
    const-string/jumbo v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object v0

    :sswitch_2e
    const-string/jumbo v0, "SET_NETWORK_SELECTION_MANUAL"

    return-object v0

    :sswitch_2f
    const-string/jumbo v0, "QUERY_AVAILABLE_NETWORKS "

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    :sswitch_31
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    :sswitch_32
    const-string/jumbo v0, "BASEBAND_VERSION"

    return-object v0

    :sswitch_33
    const-string/jumbo v0, "SEPARATE_CONNECTION"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "SET_MUTE"

    return-object v0

    :sswitch_35
    const-string/jumbo v0, "GET_MUTE"

    return-object v0

    :sswitch_36
    const-string/jumbo v0, "QUERY_CLIP"

    return-object v0

    :sswitch_37
    const-string/jumbo v0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "DATA_CALL_LIST"

    return-object v0

    :sswitch_39
    const-string/jumbo v0, "RESET_RADIO"

    return-object v0

    :sswitch_3a
    const-string/jumbo v0, "OEM_HOOK_RAW"

    return-object v0

    :sswitch_3b
    const-string/jumbo v0, "OEM_HOOK_STRINGS"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "SCREEN_STATE"

    return-object v0

    :sswitch_3d
    const-string/jumbo v0, "SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    :sswitch_3e
    const-string/jumbo v0, "WRITE_SMS_TO_SIM"

    return-object v0

    :sswitch_3f
    const-string/jumbo v0, "DELETE_SMS_ON_SIM"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "SET_BAND_MODE"

    return-object v0

    :sswitch_41
    const-string/jumbo v0, "QUERY_AVAILABLE_BAND_MODE"

    return-object v0

    :sswitch_42
    const-string/jumbo v0, "REQUEST_STK_GET_PROFILE"

    return-object v0

    :sswitch_43
    const-string/jumbo v0, "REQUEST_STK_SET_PROFILE"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    return-object v0

    :sswitch_45
    const-string/jumbo v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    return-object v0

    :sswitch_46
    const-string/jumbo v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object v0

    :sswitch_47
    const-string/jumbo v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    return-object v0

    :sswitch_49
    const-string/jumbo v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    return-object v0

    :sswitch_4a
    const-string/jumbo v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    return-object v0

    :sswitch_4b
    const-string/jumbo v0, "REQUEST_SET_LOCATION_UPDATES"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object v0

    :sswitch_4d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    return-object v0

    :sswitch_4e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    return-object v0

    :sswitch_4f
    const-string/jumbo v0, "RIL_REQUEST_SET_TTY_MODE"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "RIL_REQUEST_QUERY_TTY_MODE"

    return-object v0

    :sswitch_51
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    :sswitch_52
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    :sswitch_53
    const-string/jumbo v0, "RIL_REQUEST_CDMA_FLASH"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    return-object v0

    :sswitch_55
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SEND_SMS"

    return-object v0

    :sswitch_56
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    return-object v0

    :sswitch_57
    const-string/jumbo v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    return-object v0

    :sswitch_59
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    return-object v0

    :sswitch_5a
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    return-object v0

    :sswitch_5b
    const-string/jumbo v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object v0

    :sswitch_5d
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    return-object v0

    :sswitch_5e
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    return-object v0

    :sswitch_5f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    return-object v0

    :sswitch_61
    const-string/jumbo v0, "RIL_REQUEST_DEVICE_IDENTITY"

    return-object v0

    :sswitch_62
    const-string/jumbo v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    return-object v0

    :sswitch_63
    const-string/jumbo v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    :sswitch_65
    const-string/jumbo v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    return-object v0

    :sswitch_66
    const-string/jumbo v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    return-object v0

    :sswitch_67
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object v0

    :sswitch_68
    const-string/jumbo v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    return-object v0

    :sswitch_69
    const-string/jumbo v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object v0

    :sswitch_6a
    const-string/jumbo v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    return-object v0

    :sswitch_6b
    const-string/jumbo v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    return-object v0

    :sswitch_6c
    const-string/jumbo v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    return-object v0

    :sswitch_6d
    const-string/jumbo v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    return-object v0

    :sswitch_6e
    const-string/jumbo v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    return-object v0

    :sswitch_6f
    const-string/jumbo v0, "RIL_REQUEST_SET_DATA_PROFILE"

    return-object v0

    :sswitch_70
    const-string/jumbo v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    :sswitch_71
    const-string/jumbo v0, "RIL_REQUEST_IMS_SEND_SMS"

    return-object v0

    :sswitch_72
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    return-object v0

    :sswitch_73
    const-string/jumbo v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    return-object v0

    :sswitch_74
    const-string/jumbo v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    return-object v0

    :sswitch_75
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    return-object v0

    :sswitch_76
    const-string/jumbo v0, "RIL_REQUEST_NV_READ_ITEM"

    return-object v0

    :sswitch_77
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_ITEM"

    return-object v0

    :sswitch_78
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    return-object v0

    :sswitch_79
    const-string/jumbo v0, "RIL_REQUEST_NV_RESET_CONFIG"

    return-object v0

    :sswitch_7a
    const-string/jumbo v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    return-object v0

    :sswitch_7b
    const-string/jumbo v0, "RIL_REQUEST_ALLOW_DATA"

    return-object v0

    :sswitch_7c
    const-string/jumbo v0, "GET_HARDWARE_CONFIG"

    return-object v0

    :sswitch_7d
    const-string/jumbo v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    return-object v0

    :sswitch_7e
    const-string/jumbo v0, "RIL_REQUEST_SHUTDOWN"

    return-object v0

    :sswitch_7f
    const-string/jumbo v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    return-object v0

    :sswitch_80
    const-string/jumbo v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    return-object v0

    :sswitch_81
    const-string/jumbo v0, "RIL_REQUEST_START_LCE"

    return-object v0

    :sswitch_82
    const-string/jumbo v0, "RIL_REQUEST_STOP_LCE"

    return-object v0

    :sswitch_83
    const-string/jumbo v0, "RIL_REQUEST_PULL_LCEDATA"

    return-object v0

    :sswitch_84
    const-string/jumbo v0, "RIL_REQUEST_GET_ACTIVITY_INFO"

    return-object v0

    :sswitch_85
    const-string/jumbo v0, "RIL_REQUEST_SET_ALLOWED_CARRIERS"

    return-object v0

    :sswitch_86
    const-string/jumbo v0, "RIL_REQUEST_GET_ALLOWED_CARRIERS"

    return-object v0

    :sswitch_87
    const-string/jumbo v0, "RIL_REQUEST_SET_SIM_CARD_POWER"

    return-object v0

    :sswitch_88
    const-string/jumbo v0, "RIL_REQUEST_SEND_DEVICE_STATE"

    return-object v0

    :sswitch_89
    const-string/jumbo v0, "RIL_REQUEST_SET_UNSOLICITED_RESPONSE_FILTER"

    return-object v0

    :sswitch_8a
    const-string/jumbo v0, "RIL_RESPONSE_ACKNOWLEDGEMENT"

    return-object v0

    :sswitch_8b
    const-string/jumbo v0, "DIAL_EMERGENCY_CALL"

    return-object v0

    :sswitch_8c
    const-string/jumbo v0, "CALL_DEFLECTION"

    return-object v0

    :sswitch_8d
    const-string/jumbo v0, "MODIFY_CALL_INITIATE"

    return-object v0

    :sswitch_8e
    const-string/jumbo v0, "SET_IMS_CALL_LIST"

    return-object v0

    :sswitch_8f
    const-string/jumbo v0, "SET_PREFERRED_NETWORK_LIST"

    return-object v0

    :sswitch_90
    const-string/jumbo v0, "GET_PREFERRED_NETWORK_LIST"

    return-object v0

    :sswitch_91
    const-string/jumbo v0, "SEND_ENCODED_USSD"

    return-object v0

    :sswitch_92
    const-string/jumbo v0, "CDMA_SEND_SMS_EXPECT_MORE"

    return-object v0

    :sswitch_93
    const-string/jumbo v0, "SET_TRANSFER_CALL"

    return-object v0

    :sswitch_94
    const-string/jumbo v0, "GET_DISABLE_2G"

    return-object v0

    :sswitch_95
    const-string/jumbo v0, "SET_DISABLE_2G"

    return-object v0

    :sswitch_96
    const-string/jumbo v0, "GET_INCOMING_COMMUNICATION_BARRING"

    return-object v0

    :sswitch_97
    const-string/jumbo v0, "SET_INCOMING_COMMUNICATION_BARRING"

    return-object v0

    :sswitch_98
    const-string/jumbo v0, "QUERY_CNAP"

    return-object v0

    :sswitch_99
    const-string/jumbo v0, "REFRESH_NITZ_TIME"

    return-object v0

    :sswitch_9a
    const-string/jumbo v0, "ENABLE_UNSOL_RESPONSE"

    return-object v0

    :sswitch_9b
    const-string/jumbo v0, "CANCEL_TRANSFER_CALL"

    return-object v0

    :sswitch_9c
    const-string/jumbo v0, "ACKNOWLEDGE_RIL_CONNECTED"

    return-object v0

    :sswitch_9d
    const-string/jumbo v0, "GET_ACB_INFO"

    return-object v0

    :sswitch_9e
    const-string/jumbo v0, "GET_CELL_BROADCAST_CONFIG"

    return-object v0

    :sswitch_9f
    const-string/jumbo v0, "GET_PHONEBOOK_STORAGE_INFO"

    return-object v0

    :sswitch_a0
    const-string/jumbo v0, "SET_SIM_POWER"

    return-object v0

    :sswitch_a1
    const-string/jumbo v0, "USIM_PB_CAPA"

    return-object v0

    :sswitch_a2
    const-string/jumbo v0, "LOCK_INFO"

    return-object v0

    :sswitch_a3
    const-string/jumbo v0, "STK_SIM_INIT_EVENT"

    return-object v0

    :sswitch_a4
    const-string/jumbo v0, "ENTER_SIM_PERSO"

    return-object v0

    :sswitch_a5
    const-string/jumbo v0, "CHANGE_SIM_PERSO"

    return-object v0

    :sswitch_a6
    const-string/jumbo v0, "GET_PHONEBOOK_ENTRY"

    return-object v0

    :sswitch_a7
    const-string/jumbo v0, "ACCESS_PHONEBOOK_ENTRY"

    return-object v0

    :sswitch_a8
    const-string/jumbo v0, "EMERGENCY_SEARCH"

    return-object v0

    :sswitch_a9
    const-string/jumbo v0, "EMERGENCY_CONTROL"

    return-object v0

    :sswitch_aa
    const-string/jumbo v0, "SIM_GET_ATR"

    return-object v0

    :sswitch_ab
    const-string/jumbo v0, "QUERY_CSG_LIST"

    return-object v0

    :sswitch_ac
    const-string/jumbo v0, "SELECT_CSG_MANUAL"

    return-object v0

    :sswitch_ad
    const-string/jumbo v0, "GET_SIM_STATUS"

    return-object v0

    :sswitch_ae
    const-string/jumbo v0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object v0

    :sswitch_af
    const-string/jumbo v0, "ANSWER"

    return-object v0

    :sswitch_b0
    const-string/jumbo v0, "DIAL"

    return-object v0

    :sswitch_b1
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    :sswitch_b2
    const-string/jumbo v0, "SIGNAL_STRENGTH"

    return-object v0

    :sswitch_b3
    const-string/jumbo v0, "VOICE_REGISTRATION_STATE"

    return-object v0

    :sswitch_b4
    const-string/jumbo v0, "DATA_REGISTRATION_STATE"

    return-object v0

    :sswitch_b5
    const-string/jumbo v0, "OPERATOR"

    return-object v0

    :sswitch_b6
    const-string/jumbo v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    :sswitch_b7
    const-string/jumbo v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    :sswitch_b8
    const-string/jumbo v0, "SET_CALL_FORWARD"

    return-object v0

    :sswitch_b9
    const-string/jumbo v0, "IMS_REGISTRATION_STATE"

    return-object v0

    :sswitch_ba
    const-string/jumbo v0, "QUERY_AVAILABLE_NETWORKS"

    return-object v0

    :sswitch_bb
    const-string/jumbo v0, "SEND_SMS"

    return-object v0

    :sswitch_bc
    const-string/jumbo v0, "SEND_SMS_EXPECT_MORE"

    return-object v0

    :sswitch_bd
    const-string/jumbo v0, "CDMA_SEND_SMS"

    return-object v0

    :sswitch_be
    const-string/jumbo v0, "IMS_SEND_SMS"

    return-object v0

    :sswitch_bf
    const-string/jumbo v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    :sswitch_c0
    const-string/jumbo v0, "SEND_DEVICE_STATE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_37
        0x39 -> :sswitch_38
        0x3a -> :sswitch_39
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_3b
        0x3d -> :sswitch_3c
        0x3e -> :sswitch_3d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x41 -> :sswitch_40
        0x42 -> :sswitch_41
        0x43 -> :sswitch_42
        0x44 -> :sswitch_43
        0x45 -> :sswitch_44
        0x46 -> :sswitch_45
        0x47 -> :sswitch_46
        0x48 -> :sswitch_47
        0x49 -> :sswitch_48
        0x4a -> :sswitch_49
        0x4b -> :sswitch_4a
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4c
        0x4e -> :sswitch_4d
        0x4f -> :sswitch_4e
        0x50 -> :sswitch_4f
        0x51 -> :sswitch_50
        0x52 -> :sswitch_51
        0x53 -> :sswitch_52
        0x54 -> :sswitch_53
        0x55 -> :sswitch_54
        0x56 -> :sswitch_5c
        0x57 -> :sswitch_55
        0x58 -> :sswitch_56
        0x59 -> :sswitch_57
        0x5a -> :sswitch_58
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_59
        0x5d -> :sswitch_5a
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_5e
        0x60 -> :sswitch_5f
        0x61 -> :sswitch_60
        0x62 -> :sswitch_61
        0x63 -> :sswitch_64
        0x64 -> :sswitch_62
        0x65 -> :sswitch_63
        0x66 -> :sswitch_65
        0x67 -> :sswitch_66
        0x68 -> :sswitch_67
        0x69 -> :sswitch_68
        0x6a -> :sswitch_69
        0x6b -> :sswitch_6a
        0x6c -> :sswitch_6b
        0x6d -> :sswitch_6c
        0x6e -> :sswitch_6d
        0x6f -> :sswitch_6e
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x80 -> :sswitch_6f
        0x81 -> :sswitch_7e
        0x82 -> :sswitch_80
        0x83 -> :sswitch_7f
        0x84 -> :sswitch_81
        0x85 -> :sswitch_82
        0x86 -> :sswitch_83
        0x87 -> :sswitch_84
        0x88 -> :sswitch_85
        0x89 -> :sswitch_86
        0x8a -> :sswitch_88
        0x8b -> :sswitch_89
        0x8c -> :sswitch_87
        0x320 -> :sswitch_8a
        0x2711 -> :sswitch_8b
        0x2712 -> :sswitch_8c
        0x2713 -> :sswitch_8d
        0x2714 -> :sswitch_8e
        0x2718 -> :sswitch_9e
        0x2719 -> :sswitch_9f
        0x271a -> :sswitch_a6
        0x271b -> :sswitch_a7
        0x271c -> :sswitch_a1
        0x271d -> :sswitch_a2
        0x271e -> :sswitch_a3
        0x271f -> :sswitch_8f
        0x2720 -> :sswitch_90
        0x2721 -> :sswitch_a5
        0x2722 -> :sswitch_a4
        0x2723 -> :sswitch_91
        0x2724 -> :sswitch_92
        0x2727 -> :sswitch_a0
        0x2728 -> :sswitch_9d
        0x272b -> :sswitch_96
        0x272c -> :sswitch_97
        0x272d -> :sswitch_98
        0x272e -> :sswitch_93
        0x272f -> :sswitch_94
        0x2730 -> :sswitch_95
        0x2731 -> :sswitch_99
        0x2732 -> :sswitch_9a
        0x2733 -> :sswitch_9b
        0x2735 -> :sswitch_9c
        0x2736 -> :sswitch_a8
        0x2737 -> :sswitch_a9
        0x2738 -> :sswitch_aa
        0x273a -> :sswitch_ab
        0x273b -> :sswitch_ac
        0x4e21 -> :sswitch_ad
        0x4e28 -> :sswitch_ae
        0x4e29 -> :sswitch_b1
        0x4e2a -> :sswitch_b0
        0x4e33 -> :sswitch_b2
        0x4e34 -> :sswitch_b3
        0x4e35 -> :sswitch_b4
        0x4e36 -> :sswitch_b5
        0x4e39 -> :sswitch_bb
        0x4e3a -> :sswitch_bc
        0x4e41 -> :sswitch_b7
        0x4e42 -> :sswitch_b8
        0x4e48 -> :sswitch_af
        0x4e4c -> :sswitch_bf
        0x4e50 -> :sswitch_ba
        0x4e68 -> :sswitch_b6
        0x4e77 -> :sswitch_bd
        0x4e90 -> :sswitch_b9
        0x4e91 -> :sswitch_be
        0x4eaa -> :sswitch_c0
    .end sparse-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mOemHookProxy:Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private responseBootstrap(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private responseNaf(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "<unknown response>"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "UNSOL_RESPONSE_NETWORK_STATE_CHANGED"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "UNSOL_ON_USSD"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "UNSOL_ON_USSD_REQUEST"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "UNSOL_SIGNAL_STRENGTH"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "UNSOL_STK_SESSION_END"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "UNSOL_STK_EVENT_NOTIFY"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "UNSOL_STK_CALL_SETUP"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "UNSOL_SIM_REFRESH"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "UNSOL_CDMA_CALL_WAITING"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "UNSOL_CDMA_INFO_REC"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "UNSOL_OEM_HOOK_RAW"

    return-object v0

    :sswitch_1d
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    :sswitch_1e
    const-string/jumbo v0, "UNSOL_RESEND_INCALL_MUTE"

    return-object v0

    :sswitch_1f
    const-string/jumbo v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "UNSOL_CDMA_PRL_CHANGED"

    return-object v0

    :sswitch_21
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    :sswitch_22
    const-string/jumbo v0, "UNSOL_RIL_CONNECTED"

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "UNSOL_CELL_INFO_LIST"

    return-object v0

    :sswitch_25
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    :sswitch_26
    const-string/jumbo v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object v0

    :sswitch_27
    const-string/jumbo v0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object v0

    :sswitch_29
    const-string/jumbo v0, "RIL_UNSOL_RADIO_CAPABILITY"

    return-object v0

    :sswitch_2a
    const-string/jumbo v0, "UNSOL_ON_SS"

    return-object v0

    :sswitch_2b
    const-string/jumbo v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "UNSOL_LCE_INFO_RECV"

    return-object v0

    :sswitch_2d
    const-string/jumbo v0, "UNSOL_PCO_DATA"

    return-object v0

    :sswitch_2e
    const-string/jumbo v0, "UNSOL_MODEM_RESTART"

    return-object v0

    :sswitch_2f
    const-string/jumbo v0, "UNSOL_ACB_INFO_CHANGED"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "UNSOL_CS_FALLBACK"

    return-object v0

    :sswitch_31
    const-string/jumbo v0, "UNSOL_IMS_PREFERENCE_CHANGED"

    return-object v0

    :sswitch_32
    const-string/jumbo v0, "UNSOL_VOICE_RADIO_BEARER_HO_STATUS"

    return-object v0

    :sswitch_33
    const-string/jumbo v0, "UNSOL_TIMER_STATUS_CHANGED_NOTI"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "UNSOL_HYSTERESIS_DCN"

    return-object v0

    :sswitch_35
    const-string/jumbo v0, "UNSOL_HOME_NETWORK_NOTI"

    return-object v0

    :sswitch_36
    const-string/jumbo v0, "UNSOL_MODEM_CAP"

    return-object v0

    :sswitch_37
    const-string/jumbo v0, "UNSOL_AM"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "UNSOL_TURN_RADIO_ON"

    return-object v0

    :sswitch_39
    const-string/jumbo v0, "UNSOL_SIM_PB_READY"

    return-object v0

    :sswitch_3a
    const-string/jumbo v0, "UNSOL_PB_INIT_COMPLETE"

    return-object v0

    :sswitch_3b
    const-string/jumbo v0, "UNSOL_DEVICE_READY_NOTI"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "UNSOL_STK_SEND_SMS_RESULT"

    return-object v0

    :sswitch_3d
    const-string/jumbo v0, "UNSOL_STK_CALL_CONTROL_RESULT"

    return-object v0

    :sswitch_3e
    const-string/jumbo v0, "UNSOL_SIM_SWAP_STATE_CHANGED"

    return-object v0

    :sswitch_3f
    const-string/jumbo v0, "UNSOL_SIM_COUNT_MISMATCHED"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "UNSOL_SIM_ICCID_NOTI"

    return-object v0

    :sswitch_41
    const-string/jumbo v0, "UNSOL_RELEASE_COMPLETE_MESSAGE"

    return-object v0

    :sswitch_42
    const-string/jumbo v0, "UNSOL_SAP"

    return-object v0

    :sswitch_43
    const-string/jumbo v0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "UNSOL_SIGNAL_STRENGTH"

    return-object v0

    :sswitch_45
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_1e
        0x407 -> :sswitch_1f
        0x408 -> :sswitch_20
        0x409 -> :sswitch_21
        0x40a -> :sswitch_22
        0x40b -> :sswitch_23
        0x40c -> :sswitch_24
        0x40d -> :sswitch_25
        0x40e -> :sswitch_26
        0x40f -> :sswitch_27
        0x410 -> :sswitch_28
        0x412 -> :sswitch_29
        0x413 -> :sswitch_2a
        0x414 -> :sswitch_2b
        0x415 -> :sswitch_2c
        0x416 -> :sswitch_2d
        0x417 -> :sswitch_2e
        0x2af9 -> :sswitch_41
        0x2afa -> :sswitch_3c
        0x2afb -> :sswitch_3d
        0x2afd -> :sswitch_2f
        0x2b00 -> :sswitch_3b
        0x2b02 -> :sswitch_37
        0x2b05 -> :sswitch_42
        0x2b0d -> :sswitch_39
        0x2b16 -> :sswitch_30
        0x2b1b -> :sswitch_3a
        0x2b1d -> :sswitch_34
        0x2b23 -> :sswitch_35
        0x2b30 -> :sswitch_36
        0x2b31 -> :sswitch_3e
        0x2b32 -> :sswitch_3f
        0x2b35 -> :sswitch_31
        0x2b38 -> :sswitch_32
        0x2b3a -> :sswitch_40
        0x2b3b -> :sswitch_33
        0x2b44 -> :sswitch_38
        0x55f8 -> :sswitch_43
        0x55f9 -> :sswitch_44
        0x5615 -> :sswitch_45
    .end sparse-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 21

    if-nez p1, :cond_0

    const-string/jumbo v19, ""

    return-object v19

    :cond_0
    sparse-switch p0, :sswitch_data_0

    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, [I

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v14, p1

    check-cast v14, [I

    array-length v15, v14

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v15, :cond_2

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x1

    aget v19, v14, v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v13, v12

    :goto_0
    if-ge v13, v15, :cond_2

    const-string/jumbo v19, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v12, v13, 0x1

    aget v20, v14, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v13, v12

    goto :goto_0

    :sswitch_0
    const-string/jumbo v19, ""

    return-object v19

    :sswitch_1
    sget-boolean v19, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v19, :cond_1

    const-string/jumbo v19, ""

    return-object v19

    :cond_2
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_1
    return-object v16

    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, [Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v18, p1

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v15, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v15, :cond_4

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x1

    aget-object v19, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    :goto_2
    if-ge v13, v15, :cond_4

    const-string/jumbo v19, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v12, v13, 0x1

    aget-object v20, v18, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v12

    goto :goto_2

    :cond_4
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_5
    const/16 v19, 0x9

    move/from16 v0, p0

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v19, 0x4e29

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    :cond_6
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/ArrayList;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_8
    const/16 v19, 0x4b

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move-object/from16 v5, p1

    check-cast v5, Ljava/util/ArrayList;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_a
    const/16 v19, 0x21

    move/from16 v0, p0

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    const/16 v19, 0x4e41

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    :cond_b
    move-object/from16 v6, p1

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v15, v6

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "{"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v15, :cond_c

    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v6, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_c
    const-string/jumbo v19, "}"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_d
    const/16 v19, 0x7c

    move/from16 v0, p0

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v11, p1

    check-cast v11, Ljava/util/ArrayList;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/HardwareConfig;

    const-string/jumbo v19, "["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x16 -> :sswitch_1
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5f -> :sswitch_1
        0x62 -> :sswitch_1
        0x69 -> :sswitch_1
        0x6d -> :sswitch_1
        0x73 -> :sswitch_0
        0x75 -> :sswitch_0
        0x3f5 -> :sswitch_1
        0x3f6 -> :sswitch_1
        0x3f7 -> :sswitch_1
        0x403 -> :sswitch_1
        0x4e36 -> :sswitch_1
    .end sparse-switch
.end method

.method static secConvertHalSignalStrength(Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;)Landroid/telephony/SignalStrength;
    .locals 17

    new-instance v1, Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v4, v4, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget v5, v5, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v6, v6, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v7, v7, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget v8, v8, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, v9, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v10, v10, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v10, v10, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v11, v11, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v11, v11, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v12, v12, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v12, v12, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v13, v13, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v13, v13, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->base:Landroid/hardware/radio/V1_0/SignalStrength;

    iget-object v14, v14, Landroid/hardware/radio/V1_0/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget v14, v14, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/SecSignalStrength;->signalBar:I

    move/from16 v16, v0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZI)V

    return-object v1
.end method

.method private sendAck()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x320

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendAck"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "RILJ"

    const-string/jumbo v4, "Error trying to send ack, radioProxy = null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendSafemode(Z)V
    .locals 0

    return-void
.end method

.method private testingETWS(Landroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .locals 0

    return-void
.end method

.method private translateStatus(I)I
    .locals 2

    const/4 v1, 0x1

    and-int/lit8 v0, p1, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public acceptCall(ILandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e48

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secAcceptCall(II)V

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "acceptCall"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->acceptCall(ILandroid/os/Message;)V

    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x271b

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v5, v1, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fileid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", adn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pin2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;

    invoke-direct {v8}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;-><init>()V

    const/4 v4, 0x0

    new-array v14, v4, [B

    const/4 v4, 0x0

    new-array v15, v4, [B

    const/16 v22, 0x3

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v4, "ISO-10646-UCS-2"

    invoke-virtual {v10, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    array-length v4, v15

    add-int/lit8 v4, v4, -0x2

    new-array v14, v4, [B

    const/16 v21, 0x0

    :goto_0
    array-length v4, v15

    add-int/lit8 v4, v4, -0x2

    move/from16 v0, v21

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v21, 0x2

    aget-byte v4, v15, v4

    aput-byte v4, v14, v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :catch_0
    move-exception v18

    :cond_0
    const/16 v21, 0x0

    :goto_1
    array-length v4, v14

    move/from16 v0, v21

    if-ge v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v14, v21

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    array-length v5, v14

    :goto_2
    if-ge v4, v5, :cond_2

    aget-byte v11, v14, v4

    iget-object v6, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->name:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    iput v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->nameDCS:I

    array-length v4, v14

    iput v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->namelength:I

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iput-object v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->number:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v19, v4, v5

    const/4 v4, 0x0

    new-array v12, v4, [B

    const/4 v4, 0x0

    new-array v13, v4, [B

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v20

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_3
    if-ge v4, v5, :cond_3

    aget-byte v11, v20, v4

    iget-object v6, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, v20

    array-length v4, v0

    iput v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->gsm8bitEmaillength:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "anr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->anr:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrA:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->anrA:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrB:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->anrB:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAnrC:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->anrC:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v16, v0

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mSne:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    :try_start_1
    const-string/jumbo v4, "ISO-10646-UCS-2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    new-array v0, v4, [B

    move-object/from16 v16, v0

    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v17

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    move/from16 v0, v21

    if-ge v0, v4, :cond_4

    add-int/lit8 v4, v21, 0x2

    aget-byte v4, v17, v4

    aput-byte v4, v16, v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :catch_1
    move-exception v18

    :cond_4
    const/16 v21, 0x0

    :goto_5
    move-object/from16 v0, v16

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sne["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v16, v21

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    :goto_6
    if-ge v4, v5, :cond_6

    aget-byte v11, v16, v4

    iget-object v6, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    move-object/from16 v0, v16

    array-length v4, v0

    iput v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->sneLength:I

    const/4 v4, 0x3

    iput v4, v8, Lcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;->sneDCS:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :try_start_2
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemAccessPhoneBookEntry(IIIILcom/android/internal/telephony/hardware/radio/V1_0/OemAdnRecord;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_7
    return-void

    :catch_2
    move-exception v18

    const-string/jumbo v4, "accessPhoneBookEntry"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x6a

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, p1, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "acknowledgeIncomingGsmSmsWithPdu"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x58

    invoke-direct {p0, v5, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    :goto_0
    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    iput p2, v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "acknowledgeLastIncomingCdmaSms"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x25

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->acknowledgeLastIncomingGsmSms(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected acknowledgeRilConnected(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2735

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemAcknowledgeRilConnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "acknowledgeRilConnected"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public arrayListToUnsolOemHookBuffer(Ljava/util/ArrayList;)Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;-><init>(Lcom/android/internal/telephony/RIL;I[B)V

    return-object v0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x1e

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "cancelPendingUssd"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x2733

    invoke-direct {p0, v5, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemCancelTransferCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "cancelTransferCall"

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2c

    invoke-direct {p0, v4, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "facility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "changeBarringPassword"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x4e4c

    invoke-direct {p0, v2, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSetBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v1, "changeBarringPassword"

    invoke-direct {p0, v7, v1, v6}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x7

    invoke-direct {p0, v4, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " oldPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "changeIccPin2ForApp"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x6

    invoke-direct {p0, v4, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " oldPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "changeIccPinForApp"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2721

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "oldPass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / newPass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemChangeIccPerso(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "changeIccSimPerso"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public conference(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x10

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->conference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "conference"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x29

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secDeactivateDataCall(III)V

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDeactivateDataCall(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "deactivateDataCall"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2712

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemCallDeflection(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "deflect"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x61

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->deleteSmsOnRuim(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "deleteSmsOnRuim"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x40

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->deleteSmsOnSim(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "deleteSmsOnSim"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V

    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 10

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v9, 0x4e2a

    invoke-direct {p0, v9, p5, v8}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v6

    new-instance v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;

    invoke-direct {v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;-><init>()V

    iget-object v8, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;->base:Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;->base:Landroid/hardware/radio/V1_0/Dial;

    iput p2, v8, Landroid/hardware/radio/V1_0/Dial;->clir:I

    if-eqz p3, :cond_0

    new-instance v4, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v8

    iput v8, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v8

    iput v8, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    new-instance v8, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;->base:Landroid/hardware/radio/V1_0/Dial;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;-><init>()V

    if-eqz p4, :cond_1

    iget v8, p4, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v8, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callType:I

    iget v8, p4, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v8, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callDomain:I

    const/4 v8, 0x1

    invoke-virtual {p4, v8}, Lcom/android/internal/telephony/CallDetails;->getExtraStrings(Z)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v3, 0x0

    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    iget-object v8, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->extras:Ljava/util/ArrayList;

    aget-object v9, v7, v3

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callType:I

    const/4 v8, 0x1

    iput v8, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callDomain:I

    :cond_2
    iget-object v8, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;->callDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v8, v6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v5, v8, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secDial(ILcom/android/internal/telephony/hardware/radio/V1_0/SecDial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v8, "dial"

    invoke-direct {p0, v6, v8, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dialEmergencyCall(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V

    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v8, 0x2711

    invoke-direct {p0, v8, p4, v7}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    new-instance v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;

    invoke-direct {v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;-><init>()V

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;->base:Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;->base:Landroid/hardware/radio/V1_0/Dial;

    iput p2, v7, Landroid/hardware/radio/V1_0/Dial;->clir:I

    new-instance v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;-><init>()V

    if-eqz p3, :cond_0

    iget v7, p3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callType:I

    iget v7, p3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callDomain:I

    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Lcom/android/internal/telephony/CallDetails;->getExtraStrings(Z)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    iget-object v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->extras:Ljava/util/ArrayList;

    aget-object v8, v6, v3

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callType:I

    const/4 v7, 0x3

    iput v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callDomain:I

    :cond_1
    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecDial;->callDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v7, v5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v4, v7, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemDialEmergencyCall(ILcom/android/internal/telephony/hardware/radio/V1_0/SecDial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "dialEmergencyCall"

    invoke-direct {p0, v5, v7, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RIL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mWakeLock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mWakeLockTimeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mWakeLockCount="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " mRequestList count="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/RILRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    monitor-exit v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mLastNITZTimeInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mTestingEmergencyCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-wide v6, p0, Lcom/android/internal/telephony/RIL;->mSendEnableUnsol:J

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mSendEnableUnsol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/internal/telephony/RIL;->mSendEnableUnsol:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_1

    const-string/jumbo v5, "never"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "  "

    invoke-direct {v3, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v5, " Network type change Log:"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mNetworkTypeLog:Landroid/util/LocalLog;

    invoke-virtual {v5, p1, v3, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpClientRequestTracker()V

    return-void

    :cond_1
    const-string/jumbo v5, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    aput-object v0, v7, v8

    const/4 v8, 0x4

    aput-object v0, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public emergencyControl(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2737

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemEmergencyControl(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "emergencyControl"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public emergencySearch(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2736

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemEmergencySearch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "emergencySearch"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected enableUnsolResponse(Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2732

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemEnableUnsolResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/RIL;->mSendEnableUnsol:J

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "enableUnsolResponse"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x63

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "exitEmergencyCallbackMode"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->explicitCallTransfer(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e68

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secExplicitCallTransfer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "explicitCallTransfer"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAcbInfo(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2728

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetAcbInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getAcbInfo"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x89

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getAllowedCarriers(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getAllowedCarriers"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAtr(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2738

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetAtr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getAtr"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e50

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetAvailableNetworks(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getAvailableNetworks"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x33

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getBasebandVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getBasebandVersion"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x5f

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getCDMASubscription(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getCDMASubscription"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x1f

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getCLIR"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2718

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetCellBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getCbConfig"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x5c

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getCdmaBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getCdmaBroadcastConfig"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x68

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getCdmaSubscriptionSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getCdmaSubscriptionSource"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x6d

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getCellInfoList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getCellInfoList"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getClientRequestStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientRequestStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e29

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetCurrentCalls(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getCurrentCalls"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x39

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getDataCallList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getDataCallList"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e35

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetDataRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getDataRegistrationState"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x62

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getDeviceIdentity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getDeviceIdentity"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDisable2g(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x272f

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetDisable2g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getDisable2g"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x59

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getGsmBroadcastConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getGsmBroadcastConfig"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x7c

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getHardwareConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getHardwareConfig"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getICBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x272b

    invoke-direct {p0, v2, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetICBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v1, "getICBarring"

    invoke-direct {p0, v7, v1, v6}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getIMEI not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getIMEISV not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0xb

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getImsiForApp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getIMSIForApp"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e21

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetIccCardStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getIccCardStatus"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e90

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetImsRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getImsRegistrationState"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x12

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getLastCallFailCause"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getLastDataCallFailCause not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getLastPdpFailCause not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x87

    invoke-direct {p0, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getModemActivityInfo(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "getModemActivityInfo"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getModemCapability(Landroid/os/Message;)V
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "getModemCapability"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x61

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/RIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "IOException"

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    return-void

    :catch_2
    move-exception v3

    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_2
    throw v4

    :catch_3
    move-exception v3

    const-string/jumbo v5, "RILJ"

    const-string/jumbo v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x36

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getMute(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getMute"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x4b

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getNeighboringCids(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getNeighboringCids"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2d

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getNetworkSelectionMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getNetworkSelectionMode"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e36

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetOperator(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getOperator"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x271a

    invoke-direct {p0, v4, p5, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", fileid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pin2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p2, p3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetPhoneBookEntry(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getPhoneBookEntry"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2719

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "fileid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetPhoneBookStorageInfo(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getPhoneBookStorageInfo"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2720

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetPreferredNetworkList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getPreferredNetworkList"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4a

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getPreferredNetworkType"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x53

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getPreferredVoicePrivacy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getPreferredVoicePrivacy"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x82

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getRadioCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getRadioCapability"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x271d

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "numLockType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", lockType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetSimLockInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getSIMLockInfo"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e33

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getSignalStrength"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x64

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getSmscAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getSmscAddress"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x271c

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemGetUsimPBCapa(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getUsimPBCapa"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x6c

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getVoiceRadioTechnology(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getVoiceRadioTechnology"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e34

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetVoiceRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getVoiceRegistrationState"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x47

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->handleStkCallSetupRequestFromSim(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "getAllowedCarriers"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0xc

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " gsmIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "hangupConnection"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0xe

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->hangupForegroundResumeBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "hangupForegroundResumeBackground"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0xd

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->hangupWaitingOrBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "hangupWaitingOrBackground"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public holdCall(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2726

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemHoldCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "holdCall"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x74

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->iccCloseLogicalChannel(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "iccCloseLogicalChannel"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    move-object/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v6, 0x1c

    move-object/from16 v0, p10

    invoke-direct {p0, v6, v0, v5}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> iccIO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " command = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " fileId = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " p1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " p2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " p3 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    iput p1, v2, Landroid/hardware/radio/V1_0/IccIo;->command:I

    iput p2, v2, Landroid/hardware/radio/V1_0/IccIo;->fileId:I

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/hardware/radio/V1_0/IccIo;->path:Ljava/lang/String;

    iput p4, v2, Landroid/hardware/radio/V1_0/IccIo;->p1:I

    iput p5, v2, Landroid/hardware/radio/V1_0/IccIo;->p2:I

    iput p6, v2, Landroid/hardware/radio/V1_0/IccIo;->p3:I

    invoke-direct {p0, p7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/hardware/radio/V1_0/IccIo;->data:Ljava/lang/String;

    invoke-direct {p0, p8}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/hardware/radio/V1_0/IccIo;->pin2:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/hardware/radio/V1_0/IccIo;->aid:Ljava/lang/String;

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "iccIOForApp"

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x73

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " p2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->iccOpenLogicalChannel(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "iccOpenLogicalChannel"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 13

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x72

    move-object/from16 v0, p7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cla = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instruction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " p1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " p2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " p3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/RIL;->createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object v10

    :try_start_0
    iget v1, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v11, v1, v10}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v9

    const-string/jumbo v1, "iccTransmitApduBasicChannel"

    invoke-direct {p0, v12, v1, v9}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 7

    if-gtz p1, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid channel in iccTransmitApduLogicalChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct {p0, p8}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x75

    invoke-direct {p0, v5, p8, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cla = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " instruction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p3 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/RIL;->createSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object v1

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "iccTransmitApduLogicalChannel"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x3b

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->sendRequestRaw(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "invokeOemRilRequestStrings"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getOemHookProxy(Landroid/os/Message;)Landroid/hardware/radio/deprecated/V1_0/IOemHook;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v6, 0x3c

    invoke-direct {p0, v6, p2, v5}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    const-string/jumbo v2, ""

    const/4 v1, 0x0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " strings = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v5, v6}, Landroid/hardware/radio/deprecated/V1_0/IOemHook;->sendRequestStrings(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "invokeOemRilRequestStrings"

    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x104022d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    move-result v4

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public modifyCallInitiate(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x1

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v8, 0x2713

    invoke-direct {p0, v8, p2, v7}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    new-instance v3, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallModify;

    invoke-direct {v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallModify;-><init>()V

    iget v7, p1, Lcom/android/internal/telephony/CallModify;->call_index:I

    iput v7, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallModify;->callIndex:I

    new-instance v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;-><init>()V

    iget-object v7, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v7, v7, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callType:I

    iget-object v7, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v7, v7, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callDomain:I

    iget-object v7, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraStrings(Z)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_1

    iget-object v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->extras:Ljava/util/ArrayList;

    aget-object v8, v6, v2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callType:I

    iput v9, v0, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallDetails;->callDomain:I

    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCallModify;->callDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v7, v5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v4, v7, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemModifyCallInitiate(ILcom/android/internal/telephony/hardware/radio/V1_0/OemCallModify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "modifyCallInitiate"

    invoke-direct {p0, v5, v7, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public modifyDnsByCpa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v0, "0.0.0.0"

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "kddi_cpa_on"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "kddi_cpa_static_dns1"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "kddi_cpa_static_dns2"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "modifyDnsByCpa (isKddiCpaOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", cpaDns1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "cpaDns2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", dnses:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string/jumbo v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v2, v0

    :cond_1
    if-eqz v4, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "net."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v1, "1.0.0.0"

    const-string/jumbo v2, "1.0.0.0"

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "dns1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "dns2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tmpdns[0]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", tmpDns[1]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    aget-object v8, v7, v10

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "1.0.0.0"

    aput-object v8, v7, v10

    :cond_6
    aget-object v8, v7, v11

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "1.0.0.0"

    aput-object v8, v7, v11

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "dns1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "dns2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v11

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p1
.end method

.method public modifyNetworkTypeByOperator(I)I
    .locals 12

    const/16 v8, 0x9

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x3

    if-eq p1, v8, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    const-string/jumbo v7, "persist.radio.setnwkmode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v4, p1

    :goto_0
    const-string/jumbo v7, "KDI"

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v4

    :cond_1
    if-eq p1, v10, :cond_0

    const-string/jumbo v7, "persist.radio.setnwkmode"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mobile_data"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_4

    const/4 v5, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "data_roaming"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_5

    const/4 v6, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "voicecall_type"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_6

    const/4 v3, 0x1

    :goto_3
    const-string/jumbo v7, "gsm.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "gsm.sim.operator.numeric"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "00101"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "99999"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "45001"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    return p1

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v9, :cond_8

    const-string/jumbo v7, "sim not ready"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 v7, -0x1

    return v7

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v9, :cond_b

    const/4 v2, 0x0

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "modifyNetworkTypeByOperator (NetType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", DataEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isRoaming:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", DataRoamingEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    if-eqz v5, :cond_f

    if-eqz v2, :cond_e

    move v5, v6

    :goto_5
    const-string/jumbo v7, "DCM"

    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez v5, :cond_10

    move v5, v3

    :cond_9
    :goto_6
    move p1, v4

    if-nez v5, :cond_a

    packed-switch v4, :pswitch_data_0

    :cond_a
    :goto_7
    :pswitch_0
    return p1

    :cond_b
    invoke-virtual {v1, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "000"

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "000"

    invoke-virtual {v1, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_e
    const/4 v5, 0x1

    goto :goto_5

    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    :cond_10
    const/4 v5, 0x1

    goto :goto_6

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_7

    :pswitch_2
    const/4 p1, 0x3

    goto :goto_7

    :pswitch_3
    const/4 p1, 0x4

    goto :goto_7

    :pswitch_4
    const/4 p1, 0x7

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected notifyModemCap([BLjava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x403

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0
.end method

.method notifyRegistrantsRilConnectionChanged(I)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mRilVersion:I

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x76

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " itemId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->nvReadItem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "nvReadItem"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x79

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalResetNvType(I)I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->nvResetConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "nvResetConfig"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v6, 0x78

    invoke-direct {p0, v6, p2, v5}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " PreferredRoamingList = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "nvWriteCdmaPrl"

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x77

    invoke-direct {p0, v5, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " itemId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " itemValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    iput p1, v1, Landroid/hardware/radio/V1_0/NvWriteItem;->itemId:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/hardware/radio/V1_0/NvWriteItem;->value:Ljava/lang/String;

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "nvWriteItem"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public oemSendCdmaSmsMore([BLandroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x2724

    invoke-direct {p0, v5, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "sendCdmaSmsMore"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method processIndication(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->sendAck()V

    const-string/jumbo v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RILRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-nez v0, :cond_0

    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Ack < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    if-nez v1, :cond_0

    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected solicited ack response! sn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Ack < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processResponse: Unexpected response! serial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->sendAck()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Response received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Sending ack to ril.cpp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_3
    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v4, :sswitch_data_1

    :cond_5
    :goto_2
    return-object v1

    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    :sswitch_1
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2

    :cond_6
    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_5

    const-string/jumbo v4, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x81 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x2b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 6

    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    if-eqz p1, :cond_1

    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x86

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->pullLceData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "pullLceData"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x42

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getAvailableBandModes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "queryAvailableBandMode"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x37

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "queryCLIP"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryCNAP(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x272d

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemQueryCnap(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "queryCNAP"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x4e41

    invoke-direct {p0, v5, p4, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cfreason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    const/4 v4, 0x2

    iput v4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput p1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secGetCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "queryCallForwardStatus"

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x23

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "queryCallWaiting"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4f

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getCdmaRoamingPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "queryCdmaRoamingPreference"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryCsgList(Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x273a

    invoke-direct {p0, v5, p1, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemQueryCsgList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "oemQueryCsgList"

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x2a

    invoke-direct {p0, v2, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v1, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v1, "getFacilityLockForApp"

    invoke-direct {p0, v7, v1, v6}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x51

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->getTTYMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "queryTTYMode"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public refreshNitzTime(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2731

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemRefreshNitzTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "refreshNitzTime"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x11

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->rejectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "rejectCall"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x66

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " available = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->reportSmsMemoryStatus(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "reportSmsMemoryStatus"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x67

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->reportStkServiceIsRunning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "reportStkServiceIsRunning"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x7d

    invoke-direct {p0, v4, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, p1, v4, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "requestIccSimAuthentication"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x69

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " nonce = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->requestIsimAuthentication(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "requestIsimAuthentication"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x81

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->requestShutdown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "requestShutdown"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "resetRadio not expected to be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    const-string/jumbo v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " [SUB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public secSendCdmaSms([BLandroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x4e77

    invoke-direct {p0, v5, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "secSendCdmaSms"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public secSendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 10

    const/4 v5, 0x1

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v7, 0x4e91

    invoke-direct {p0, v7, p4, v6}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    const/4 v6, 0x2

    iput v6, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte v6, p2

    if-ne v6, v5, :cond_1

    :goto_0
    iput-boolean v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    iput p3, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    iget-object v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "sendImsCdmaSms"

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public secSendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 10

    const/4 v5, 0x1

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v7, 0x4e91

    invoke-direct {p0, v7, p5, v6}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    iput v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte v6, p3

    if-ne v6, v5, :cond_1

    :goto_0
    iput-boolean v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    iput p4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v1

    iget-object v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "sendImsGsmSms"

    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public secSendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x4e39

    invoke-direct {p0, v5, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v1

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "sendSMS"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public secSendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x4e3a

    invoke-direct {p0, v5, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v1

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "sendSMSExpectMore"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public selectCsgManual(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x273b

    invoke-direct {p0, v5, p4, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;-><init>()V

    iput p2, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->csgId:I

    const-string/jumbo v4, ""

    iput-object v4, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->plmn:Ljava/lang/String;

    iput p3, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->rat:I

    iput v6, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->category:I

    iput v6, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;->signalStrength:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSelectCsgManual(ILcom/android/internal/telephony/hardware/radio/V1_0/OemCsgInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "oemSelectCsgManual"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x55

    invoke-direct {p0, v4, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dtmfString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " off = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, p2, p3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendBurstDtmf(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendBurstDtmf"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x54

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " featureCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendCDMAFeatureCode(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendCDMAFeatureCode"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x57

    invoke-direct {p0, v5, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "sendCdmaSms"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4eaa

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSendDeviceState(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendDeviceState"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x18

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendDtmf"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v6, 0x2723

    invoke-direct {p0, v6, p4, v5}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", DCS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemEncodedUSSD;

    invoke-direct {v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemEncodedUSSD;-><init>()V

    const/4 v5, 0x0

    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, p1, v5

    iget-object v7, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemEncodedUSSD;->encodedUSSD:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput p2, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemEncodedUSSD;->ussdLength:I

    iput p3, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemEncodedUSSD;->dcsCode:I

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSendEncodedUSSD(ILcom/android/internal/telephony/hardware/radio/V1_0/OemEncodedUSSD;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "sendEncodedUSSD"

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x45

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " contents = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendEnvelope(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendEnvelope"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x6b

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " contents = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendEnvelopeWithStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendEnvelopeWithStatus"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 10

    const/4 v5, 0x1

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v7, 0x71

    invoke-direct {p0, v7, p4, v6}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    const/4 v6, 0x2

    iput v6, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte v6, p2

    if-ne v6, v5, :cond_1

    :goto_0
    iput-boolean v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    iput p3, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    iget-object v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "sendImsCdmaSms"

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 10

    const/4 v5, 0x1

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v7, 0x71

    invoke-direct {p0, v7, p5, v6}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    iput v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte v6, p3

    if-ne v6, v5, :cond_1

    :goto_0
    iput-boolean v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    iput p4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v1

    iget-object v5, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "sendImsGsmSms"

    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x19

    invoke-direct {p0, v5, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v1

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "sendSMS"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x1a

    invoke-direct {p0, v5, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->constructGsmSendSmsRilRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v1

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "sendSMSExpectMore"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendSMSmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x46

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendTerminalResponseToSim(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "sendTerminalResponse"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x1d

    invoke-direct {p0, v5, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    const-string/jumbo v1, "*******"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ussd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "sendUSSD"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x34

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " gsmIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->separateConnection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "separateConnection"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAirplaneModeOff()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    const-string/jumbo v13, "Allowed carriers list cannot be null."

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v13, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v14, 0x88

    move-object/from16 v0, p2

    invoke-direct {p0, v14, v0, v13}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    const-string/jumbo v8, ""

    const/4 v7, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "carriers = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v1, 0x1

    :goto_1
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/carrier/CarrierIdentifier;

    new-instance v2, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v10, 0x1

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_3
    iput v10, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    iget-object v13, v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v10, 0x2

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v10, 0x4

    invoke-virtual {v4}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_6
    :try_start_0
    iget v13, v12, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v11, v13, v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_4
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v13, "setAllowedCarriers"

    invoke-direct {p0, v12, v13, v6}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x41

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bandMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setBandMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setBandMode"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x20

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " clirMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setCLIR"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/RIL;->setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v8, 0x4e42

    move-object/from16 v0, p8

    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cfReason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " serviceClass = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " timeSeconds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;-><init>()V

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iput p1, v7, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iput p2, v7, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    iput p3, v7, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->base:Landroid/hardware/radio/V1_0/CallForwardInfo;

    move/from16 v0, p5

    iput v0, v7, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    if-eqz p6, :cond_2

    const-string/jumbo v7, ":"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, ":"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const-string/jumbo v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    :goto_0
    if-eqz p7, :cond_4

    const-string/jumbo v7, ":"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, ":"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const-string/jumbo v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    :goto_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->startTime:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;->endTime:Ljava/lang/String;

    :try_start_0
    iget v7, v5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v4, v7, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSetCallForward(ILcom/android/internal/telephony/hardware/radio/V1_0/SecCallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/16 p6, 0x0

    goto :goto_0

    :cond_2
    const/16 p6, 0x0

    goto :goto_0

    :cond_3
    const/16 p7, 0x0

    goto :goto_1

    :cond_4
    const/16 p7, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v7, "setCallForward"

    invoke-direct {p0, v5, v7, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x24

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setCallWaiting"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x5e

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " activate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setCdmaBroadcastActivation(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setCdmaBroadcastActivation"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 12

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v10, 0x5d

    invoke-direct {p0, v10, p2, v9}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    array-length v10, p1

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v1, p1, v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getFromServiceCategory()I

    move-result v5

    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getToServiceCategory()I

    move-result v11

    if-gt v5, v11, :cond_0

    new-instance v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    invoke-direct {v6}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;-><init>()V

    iput v5, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->getLanguage()I

    move-result v11

    iput v11, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result v11

    iput-boolean v11, v6, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " configs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :try_start_0
    iget v9, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v7, v9, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v9, "setCdmaBroadcastConfig"

    invoke-direct {p0, v8, v9, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cdmaRoamingType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setCdmaRoamingPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setCdmaRoamingPreference"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4d

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cdmaSubscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setCdmaSubscriptionSource(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setCdmaSubscriptionSource"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method setCellInfoListRate()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/RIL;->setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x6e

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rateInMillis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setCellInfoListRate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setCellInfoListRate"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x7b

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " allowed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setDataAllowed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setDataAllowed"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;ZLandroid/os/Message;)V
    .locals 10

    const/4 v6, 0x0

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v8, 0x80

    invoke-direct {p0, v8, p3, v7}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with data profiles : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v3, p1, v7

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v7, p1

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v0, p1, v6

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget v6, v5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v4, v6, v1, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setDataProfile(ILjava/util/ArrayList;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "setDataProfile"

    invoke-direct {p0, v5, v6, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public setDisable2g(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2730

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSetDisable2g(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setDisable2g"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p6}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x2b

    invoke-direct {p0, v2, p6, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " lockstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v1, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v1, "setFacilityLockForApp"

    invoke-direct {p0, v8, v1, v7}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x5b

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " activate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setGsmBroadcastActivation(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setGsmBroadcastActivation"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v8, 0x5a

    invoke-direct {p0, v8, p2, v7}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " configs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_0

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    new-instance v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;-><init>()V

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v7

    iput v7, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v7

    iput v7, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v7

    iput v7, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v7

    iput v7, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v7

    iput-boolean v7, v3, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget v7, v6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v5, v7, v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "setGsmBroadcastConfig"

    invoke-direct {p0, v6, v7, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public setICBarring(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .locals 10

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x272c

    invoke-direct {p0, v2, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string/jumbo v7, "0"

    :goto_0
    :try_start_0
    iget v1, v9, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSetICBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    const-string/jumbo v7, "1"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    const-string/jumbo v7, "3"

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    const-string/jumbo v7, "4"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "RILJ"

    const-string/jumbo v2, "setICBarring: barring state is wrong value"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "1"

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v1, "setICBarring"

    invoke-direct {p0, v9, v1, v8}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setImsCallList(Lcom/android/internal/telephony/ImsCallList;Landroid/os/Message;)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v7, 0x2714

    invoke-direct {p0, v7, p2, v6}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v6, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-ge v1, v6, :cond_0

    new-instance v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemImsCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemImsCall;-><init>()V

    iget-object v6, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mState:I

    iput v6, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemImsCall;->state:I

    iget-object v6, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mType:I

    iput v6, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemImsCall;->type:I

    iget-object v6, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMt:I

    iput v6, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemImsCall;->isMt:I

    iget-object v6, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mIsMpty:I

    iput v6, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemImsCall;->isMpty:I

    iget-object v6, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/internal/telephony/ImsCallList$ImsCall;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/hardware/radio/V1_0/OemImsCall;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v6, v5, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v4, v6, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSetImsCallList(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v6, "setImsCallList"

    invoke-direct {p0, v5, v6, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setInitialAttachApn(Lcom/android/internal/telephony/dataconnection/DataProfile;ZLandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x6f

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->modemCognitive:Z

    invoke-interface {v1, v3, v4, v5, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setInitialAttachApn"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4c

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setLocationUpdates(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setLocationUpdates"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x35

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enableMute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setMute"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2e

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeAutomatic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2f

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setNetworkSelectionModeManual"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p8}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x271f

    invoke-direct {p0, v5, p8, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;-><init>()V

    iput p1, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->index:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->oper:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->plmn:Ljava/lang/String;

    iput p4, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->gsmAct:I

    iput p5, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->gsmCompactAct:I

    iput p6, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->utranAct:I

    iput p7, v1, Lcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;->mode:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSetPreferredNetworkList(ILcom/android/internal/telephony/hardware/radio/V1_0/OemPreferredNetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "setPreferredNetworkList"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 9

    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x4

    if-le v7, v6, :cond_0

    array-length v6, v4

    add-int/lit8 v0, v6, -0x1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPreferredNetworkType - networkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", stack["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mNetworkTypeLog:Landroid/util/LocalLog;

    invoke-virtual {v6, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "CscFeature_RIL_LteCapCheckOnBootTime"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->modifyNetworkTypeByOperator(I)I

    move-result p1

    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v7, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v7, 0x49

    invoke-direct {p0, v7, p2, v6}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " networkType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v6, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setPreferredNetworkType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "setPreferredNetworkType"

    invoke-direct {p0, v3, v6, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x52

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setPreferredVoicePrivacy(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setPreferredVoicePrivacy"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x83

    invoke-direct {p0, v5, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " RadioCapability = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "setRadioCapability"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x17

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v3, "RILJ"

    const-string/jumbo v4, "!@Boot_SVC : setRadioPower on"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setRadioPower(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setRadioPower"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSimCardPower(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x8c

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setSimCardPower(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setSimCardPower"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x271e

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSetSimInitEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setSimInitEvent"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSimPower(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2727

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSetSimPower(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setSimPower"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x65

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setSmscAddress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setSmscAddress"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x3e

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setSuppServiceNotifications(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setSuppServiceNotifications"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x50

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ttyMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setTTYMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setTTYMode"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p5}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x7a

    invoke-direct {p0, v5, p5, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "!@Boot_SVC : setUiccSubscription"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " appIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    iput p1, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->slot:I

    iput p2, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->appIndex:I

    iput p3, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->subType:I

    iput p4, v1, Landroid/hardware/radio/V1_0/SelectUiccSub;->actStatus:I

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "setUiccSubscription"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x8b

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setIndicationFilter(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "setIndicationFilter"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setupDataCall(ILcom/android/internal/telephony/dataconnection/DataProfile;ZZLandroid/os/Message;)V
    .locals 15

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x1b

    move-object/from16 v0, p5

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/RIL;->convertToHalDataProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;

    move-result-object v4

    const-string/jumbo v2, "RILJ"

    const-string/jumbo v3, "!@Boot_SVC : setupDataCall"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",isRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",allowRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v2, v14, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->modemCognitive:Z

    move/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v14, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v9, v4, Landroid/hardware/radio/V1_0/DataProfileInfo;->profileId:I

    iget-object v10, v4, Landroid/hardware/radio/V1_0/DataProfileInfo;->apn:Ljava/lang/String;

    iget v11, v4, Landroid/hardware/radio/V1_0/DataProfileInfo;->authType:I

    iget-object v12, v4, Landroid/hardware/radio/V1_0/DataProfileInfo;->protocol:Ljava/lang/String;

    move/from16 v8, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSetupDataCall(IIIILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v13

    const-string/jumbo v2, "setupDataCall"

    invoke-direct {p0, v14, v2, v13}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x31

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "startDtmf"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x84

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reportIntervalMs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pullMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->startLceService(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "startLceService"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x32

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "stopDtmf"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x85

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->stopLceService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "stopLceService"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x2722

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSupplyIccPerso(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplyIccPerso"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x4

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplyIccPin2ForApp"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x2

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplyIccPinForApp"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x5

    invoke-direct {p0, v4, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplyIccPuk2ForApp"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x3

    invoke-direct {p0, v4, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplyIccPukForApp"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x4e28

    invoke-direct {p0, v4, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " netpin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, p2}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->secSupplyNetworkDepersonalization(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplyNetworkDepersonalization"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0x8

    invoke-direct {p0, v4, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " netpin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getLogOnlyOnNoShip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->supplyNetworkDepersonalization(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplyNetworkDepersonalization"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v4, 0xf

    invoke-direct {p0, v4, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :try_start_0
    iget v3, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public testingEmergencyCall()V
    .locals 2

    const-string/jumbo v0, "testingEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 7

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v6, 0x272e

    invoke-direct {p0, v6, p4, v5}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget v5, v4, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v3, v5, v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->oemSetTransferCall(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v5, "oemSetTransferCall"

    invoke-direct {p0, v4, v5, v2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method unsljLog(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    return-void
.end method

.method public updateStackBinding(IILandroid/os/Message;)V
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "updateStackBinding"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x62

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/RIL;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "IOException"

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    return-void

    :catch_2
    move-exception v3

    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_2
    throw v4

    :catch_3
    move-exception v3

    const-string/jumbo v5, "RILJ"

    const-string/jumbo v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method writeMetricsCallRing([C)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallRing(I[C)V

    return-void
.end method

.method writeMetricsModemRestartEvent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeModemRestartEvent(ILjava/lang/String;)V

    return-void
.end method

.method writeMetricsNewSms(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilNewSms(III)V

    return-void
.end method

.method writeMetricsSrvcc(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSrvcc(II)V

    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x60

    invoke-direct {p0, v5, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    iput p1, v0, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->status:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_SmsCdmaCopyToRuim"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->message:Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    :goto_0
    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->message:Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/RIL;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "writeSmsToRuim"

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->getRadioProxy(Landroid/os/Message;)Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v5, 0x3f

    invoke-direct {p0, v5, p4, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    new-instance v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    iput p1, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->status:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->smsc:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->pdu:Ljava/lang/String;

    :try_start_0
    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/hardware/radio/V1_0/IRadio;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "writeSmsToSim"

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
