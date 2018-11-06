.class public Lcom/android/server/wifi/WifiVendorHal;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;,
        Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;,
        Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;
    }
.end annotation


# static fields
.field public static final AP_MODE:Z = false

.field public static final STA_MODE:Z = true

.field private static final sFeatureCapabilityTranslation:[[I

.field public static final sLock:Ljava/lang/Object;

.field private static final sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field private static final sNoLog:Lcom/android/server/wifi/WifiLog;

.field static final sRssiMonCmdId:I = 0x1d7f


# instance fields
.field mChannelsForBandSupport:Ljava/lang/Boolean;

.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

.field private mDriverDescription:Ljava/lang/String;

.field private mFirmwareDescription:Ljava/lang/String;

.field private final mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private final mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

.field private mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

.field private mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

.field private final mIWifiChipEventCallback:Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;

.field private mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

.field private mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

.field private final mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

.field private mLastScanCmdId:I

.field mLinkLayerStatsDebug:Z

.field mLog:Lcom/android/server/wifi/WifiLog;

.field private mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private final mLooper:Landroid/os/Looper;

.field private mRttCmdId:I

.field private mRttCmdIdNext:I

.field private final mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

.field private mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private mRttResponderCmdId:I

.field mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

.field mVerboseLog:Lcom/android/server/wifi/WifiLog;

.field private mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiVendorHal;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$RttEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    return-object v0
.end method

.method static synthetic -get6()Landroid/net/apf/ApfCapabilities;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiVendorHal;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->makeStaBackgroundScanBucketParametersFromBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanDatas(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wifi/WifiVendorHal;->ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x20

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/FakeWifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/FakeWifiLog;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    const/16 v0, 0xd

    new-array v0, v0, [[I

    const/16 v1, 0x80

    filled-new-array {v4, v1}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x100

    filled-new-array {v5, v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    filled-new-array {v7, v4}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x400

    const/16 v2, 0x200

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x1000

    const/16 v2, 0x400

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x2000

    const/16 v2, 0x800

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/high16 v1, 0x10000

    filled-new-array {v1, v5}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/high16 v1, 0x80000

    filled-new-array {v1, v6}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/high16 v1, 0x100000

    const/16 v2, 0x2000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/high16 v1, 0x200000

    const/16 v2, 0x1000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/high16 v1, 0x800000

    const/16 v2, 0x10

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/high16 v1, 0x1000000

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/high16 v1, 0x2000000

    const/16 v2, 0x40

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sFeatureCapabilityTranslation:[[I

    new-instance v0, Landroid/net/apf/ApfCapabilities;

    invoke-direct {v0, v3, v3, v3}, Landroid/net/apf/ApfCapabilities;-><init>(III)V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/os/Looper;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v0, Lcom/android/server/wifi/LogcatLog;

    const-string/jumbo v1, "WifiVendorHal"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/LogcatLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLinkLayerStatsDebug:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iput-object p2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    return-void
.end method

.method private boolResult(Z)Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v2, v3, :cond_0

    return p1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v3, "% returns %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    return p1
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    return-void
.end method

.method private enableLinkLayerStats()V
    .locals 5

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLinkLayerStatsDebug:Z

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v4, "unable to enable link layer stats collection"

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "% "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    return-object v2
.end method

.method static frameworkBwFromHalBw(I)I
    .locals 5

    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    return v1
.end method

.method static frameworkChannelWidthFromHalChannelWidth(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static frameworkFromHalLinkLayerStats(Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Landroid/net/wifi/WifiLinkLayerStats;

    invoke-direct {v1}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    iput v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iput v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v4, v3, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    iget v3, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    iput v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iget v3, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    iput v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iget-object v3, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v4, v1, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    iget-object v3, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    iput v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iget v3, v2, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    iput v3, v1, Landroid/net/wifi/WifiLinkLayerStats;->on_time_scan:I

    :cond_2
    return-object v1
.end method

.method static frameworkPeerFromHalPeer(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :pswitch_4
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static frameworkPreambleFromHalPreamble(I)I
    .locals 5

    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return v1
.end method

.method private frameworkResponderConfigFromHalRttResponder(Landroid/hardware/wifi/V1_0/RttResponder;)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 2

    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig;-><init>()V

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq0:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq1:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->width:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkChannelWidthFromHalChannelWidth(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    iget v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->preamble:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkPreambleFromHalPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    return-object v0
.end method

.method private static frameworkRingBufferFlagsFromHal(I)I
    .locals 5

    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown WifiDebugRingBufferFlag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return v1
.end method

.method static frameworkRttResultFromHalRttResult(Landroid/hardware/wifi/V1_0/RttResult;)Landroid/net/wifi/RttManager$RttResult;
    .locals 4

    new-instance v0, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->status:I

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiRateInfo;->bitRateInKbps:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiRateInfo;->bitRateInKbps:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rxRate:I

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    iput-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    iput-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    iput-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distance:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    iput-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->ts:J

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    return-object v0
.end method

.method static frameworkRttTypeFromHalRttType(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRttResponder()Landroid/hardware/wifi/V1_0/RttResponder;
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v5

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$7;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->getResponderInfo(Landroid/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;->value:Landroid/hardware/wifi/V1_0/RttResponder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v1

    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static halBwFromFrameworkBw(I)I
    .locals 5

    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    return v1
.end method

.method static halChannelWidthFromFrameworkChannelWidth(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static halPeerFromFrameworkPeer(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :pswitch_4
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static halPreambleFromFrameworkPreamble(I)I
    .locals 5

    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return v1
.end method

.method static halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/wifi/RttManager$RttParams;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/RttConfig;",
            ">;"
        }
    .end annotation

    array-length v3, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p0, v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigFromFrameworkRttParams(Landroid/net/wifi/RttManager$RttParams;)Landroid/hardware/wifi/V1_0/RttConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static halRttConfigFromFrameworkRttParams(Landroid/net/wifi/RttManager$RttParams;)Landroid/hardware/wifi/V1_0/RttConfig;
    .locals 5

    new-instance v2, Landroid/hardware/wifi/V1_0/RttConfig;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/RttConfig;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    aget-byte v4, v0, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->halRttTypeFromFrameworkRttType(I)I

    move-result v3

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->halPeerFromFrameworkPeer(I)I

    move-result v3

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    iget-object v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v4, p0, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiVendorHal;->halChannelWidthFromFrameworkChannelWidth(I)I

    move-result v4

    iput v4, v3, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->width:I

    iget-object v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v4, p0, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    iput v4, v3, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    iget-object v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v4, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    iput v4, v3, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq0:I

    iget-object v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v4, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    iput v4, v3, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq1:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->interval:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    iget-boolean v3, p0, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    iput-boolean v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    iget-boolean v3, p0, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    iput-boolean v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->halPreambleFromFrameworkPreamble(I)I

    move-result v3

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    iget v3, p0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->halBwFromFrameworkBw(I)I

    move-result v3

    iput v3, v2, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    return-object v2
.end method

.method static halRttTypeFromFrameworkRttType(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private halToFrameworkPktFateFrameType(I)B
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private halToFrameworkRxPktFate(I)B
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x5

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

    :pswitch_8
    const/16 v0, 0x8

    return v0

    :pswitch_9
    const/16 v0, 0x9

    return v0

    :pswitch_a
    const/16 v0, 0xa

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private halToFrameworkTxPktFate(I)B
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x5

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

    :pswitch_8
    const/16 v0, 0x8

    return v0

    :pswitch_9
    const/16 v0, 0x9

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static halToFrameworkWakeReasons(Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/net/wifi/WifiWakeReasonAndCounts;

    invoke-direct {v0}, Landroid/net/wifi/WifiWakeReasonAndCounts;-><init>()V

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxUnicastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxMulticastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxBroadcastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmpPkt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Pkt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Ra:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Na:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Ns:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->ipv4RxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->ipv6RxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->otherRxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->intsFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->intsFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    return-object v0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "% RemoteException in HIDL call %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    return-void
.end method

.method private static hidlIeArrayToFrameworkIeBlob(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/WifiInformationElement;",
            ">;)[B"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [B

    return-object v3

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    iget-byte v3, v0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v3

    return-object v3
.end method

.method private static hidlToFrameworkScanDataFlags(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hidlToFrameworkScanDatas(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/StaScanData;",
            ">;)[",
            "Landroid/net/wifi/WifiScanner$ScanData;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-array v0, v4, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/wifi/V1_0/StaScanData;

    iget v0, v9, Landroid/hardware/wifi/V1_0/StaScanData;->flags:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanDataFlags(I)I

    move-result v2

    iget-object v0, v9, Landroid/hardware/wifi/V1_0/StaScanData;->results:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResults(Ljava/util/ArrayList;)[Landroid/net/wifi/ScanResult;

    move-result-object v5

    add-int/lit8 v8, v7, 0x1

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    iget v3, v9, Landroid/hardware/wifi/V1_0/StaScanData;->bucketsScanned:I

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    aput-object v0, v6, v7

    move v7, v8

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private static hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult;-><init>()V

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iget-wide v2, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    iput-wide v2, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->informationElements:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->hidlIeArrayToFrameworkIeBlob(Ljava/util/ArrayList;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->bytes:[B

    return-object v0
.end method

.method private static hidlToFrameworkScanResults(Ljava/util/ArrayList;)[Landroid/net/wifi/ScanResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/StaScanResult;",
            ">;)[",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/net/wifi/ScanResult;

    return-object v5

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/StaScanResult;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->id:B

    iput-byte v1, v0, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    return-object v0
.end method

.method private intArrayFromArrayList(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [I

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static intsFromArrayList(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [I

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private makeReportSchemeFromBucketSettingsReportEvents(I)I
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget v2, v1, Lcom/android/server/wifi/util/BitMask;->value:I

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return v0
.end method

.method private static makeRingBufferStatusArray(Ljava/util/ArrayList;)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;",
            ">;)[",
            "Lcom/android/server/wifi/WifiNative$RingBufferStatus;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    add-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private makeStaBackgroundScanBucketParametersFromBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    .locals 7

    new-instance v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;-><init>()V

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->makeWifiBandFromFrameworkBand(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget-object v5, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->makeReportSchemeFromBucketSettingsReportEvents(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->max_period_ms:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    const/4 v2, 0x2

    iput v2, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->step_count:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    return-object v1
.end method

.method private makeWifiBandFromFrameworkBand(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x6

    return v0

    :pswitch_6
    const/4 v0, 0x3

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private static niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 6

    array-length v4, p0

    if-lt p1, v4, :cond_0

    const-string/jumbo v4, ""

    return-object v4

    :cond_0
    aget-object v3, p0, p1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "lambda$"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(l."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    .locals 5

    const/4 v4, 0x0

    iget v2, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v3, "% failed %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/wifi/V1_0/WifiStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    return v4
.end method

.method private registerChipCallback()Z
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerRttEventCallback()Z
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerStaIfaceCallback()Z
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private requestChipDebugInfo()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "Driver: % Firmware: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method private static ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 2

    new-instance v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$RingBufferStatus;-><init>()V

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->ringName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->flags:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkRingBufferFlagsFromHal(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->ringId:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferId:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->sizeInBytes:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferByteSize:I

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->verboseLevel:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->verboseLevel:I

    return-object v0
.end method

.method private startFailedTo(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v1, "Failed to %. Vendor Hal start failed"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->stop()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v7, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    monitor-exit v7

    return v6

    :cond_0
    :try_start_1
    iget v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    monitor-exit v7

    return v6

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/RttConfig;

    iget-object v6, v4, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v8, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    invoke-interface {v6, v8, v0}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    monitor-exit v7

    return v9

    :cond_3
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    :catch_0
    move-exception v1

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    return v9
.end method

.method public configureNeighborDiscoveryOffload(Z)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "enabled=%"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return v4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v4

    :cond_1
    monitor-exit v3

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public configureRoaming(Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z
    .locals 17

    sget-object v15, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v14, :cond_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    monitor-exit v15

    return v14

    :cond_0
    :try_start_1
    new-instance v8, Landroid/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {v8}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    iget-object v14, v8, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v14, 0x0

    monitor-exit v15

    return v14

    :cond_1
    :try_start_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v14, 0x20

    if-le v6, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v16, "configureRoaming: skip invalid SSID %"

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v14

    invoke-interface {v14, v13}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v16, "Illegal argument for roaming configuration"

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x0

    monitor-exit v15

    return v14

    :cond_2
    :try_start_5
    new-array v9, v6, [B

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v14, v8, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-interface {v14, v8}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v14

    if-nez v14, :cond_5

    const/4 v14, 0x0

    monitor-exit v15

    return v14

    :cond_5
    const/4 v14, 0x1

    monitor-exit v15

    return v14
.end method

.method public disableRttResponder()Z
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->disableResponder(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v3

    return v5

    :cond_2
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public enableFirmwareRoaming(I)I
    .locals 7

    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const/4 v3, 0x6

    monitor-exit v4

    return v3

    :cond_0
    packed-switch p1, :pswitch_data_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableFirmwareRoaming invalid argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x7

    monitor-exit v4

    return v3

    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-interface {v3, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRoamingState returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    iget v3, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v3

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v3, 0x9

    monitor-exit v4

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->getRttResponder()Landroid/hardware/wifi/V1_0/RttResponder;

    move-result-object v3

    sget-object v6, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    monitor-exit v6

    return-object v9

    :cond_0
    :try_start_1
    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v7, "responder mode already enabled - this shouldn\'t happen"

    invoke-interface {v5, v7}, Lcom/android/server/wifi/WifiLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v9

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iget v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v7, 0x0

    invoke-interface {v5, v2, v7, p1, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController;->enableResponder(ILandroid/hardware/wifi/V1_0/WifiChannelInfo;ILandroid/hardware/wifi/V1_0/RttResponder;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->frameworkResponderConfigFromHalRttResponder(Landroid/hardware/wifi/V1_0/RttResponder;)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "enabling rtt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit v6

    return-object v0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return-object v9

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public enableVerboseLogging(Z)V
    .locals 2

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v0, "verbose=true"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "verbose=false"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getApfCapabilities()Landroid/net/apf/ApfCapabilities;
    .locals 5

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$8;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->value:Landroid/net/apf/ApfCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getBgScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 7

    const/4 v6, 0x0

    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object v2, p1

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$12;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$12;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    iget-boolean v3, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getBgScanResults()[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    return-object v2

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getChannelsForBand(I)[I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "%"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->makeWifiBandFromFrameworkBand(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$11;

    invoke-direct {v5, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$11;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;->value:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$1;

    invoke-direct {v5, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2, v5}, Landroid/hardware/wifi/V1_0/IWifiApIface;->getValidFrequenciesForBand(ILandroid/hardware/wifi/V1_0/IWifiApIface$getValidFrequenciesForBandCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getDriverStateDump()[B
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v5

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$4;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;->value:[B

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->requestChipDebugInfo()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->requestChipDebugInfo()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFwMemoryDump()[B
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v5

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$5;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;->value:[B

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ringName %"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v5

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$3;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRoamingCapabilities(Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z
    .locals 7

    const/4 v6, 0x0

    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_0
    :try_start_1
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object v2, p1

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$15;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    iget-boolean v3, v1, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v5

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$6;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->value:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    return v2

    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_1
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$13;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    iget-boolean v2, v1, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getSupportedFeatureSet()I
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Landroid/util/MutableInt;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/util/MutableInt;-><init>(I)V

    sget-object v5, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v6, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$9;

    invoke-direct {v6, p0, v1}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v5

    iget v2, v1, Landroid/util/MutableInt;->value:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x10

    :cond_2
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    or-int/lit8 v2, v2, 0x40

    :cond_4
    return v2

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    return v7
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    return v2

    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_1
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$14;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$14;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    iget-boolean v2, v1, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getWifiLinkLayerStats()Landroid/net/wifi/WifiLinkLayerStats;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v4

    return-object v6

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$10;

    invoke-direct {v5, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    iget-object v3, v0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->frameworkFromHalLinkLayerStats(Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v5

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$Lambda$-8OLNNnyamdUDQS-yMRzScsmdRA$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    invoke-static {v2}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkWakeReasons(Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)Landroid/net/wifi/WifiWakeReasonAndCounts;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public initialize(Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;)Z
    .locals 4

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->initialize()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public installPacketFilter([B)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4

    return v4

    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v4, "filter length %"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    array-length v5, p1

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    sget-object v5, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-interface {v4, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    return v8

    :cond_2
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return v8

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isGetChannelsForBandSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->getChannelsForBand(I)[I

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isHalStarted()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isVendorHalSupported()Z
    .locals 2

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_15610(Lcom/android/server/wifi/WifiNative$ScanCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v1, "scan capabilities %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-virtual {p4}, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_25173(Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_31591(Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->wifiFeatureMaskFromStaCapabilities(I)I

    move-result v0

    iput v0, p1, Landroid/util/MutableInt;->value:I

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_33082(Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "rtt capabilites %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {p3}, Landroid/hardware/wifi/V1_0/RttCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttOneSidedSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttFtmSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->lciSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->lcrSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    iget v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->preambleSupport:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkPreambleFromHalPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->bwSupport:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkBwFromHalBw(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->responderSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    iget-byte v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->mcVersion:B

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->value:Landroid/net/wifi/RttManager$RttCapabilities;

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_49464(Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttResponder;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;->value:Landroid/hardware/wifi/V1_0/RttResponder;

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_54218(Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->intArrayFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;->value:[I

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_54731(Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mChannelsForBandSupport:Ljava/lang/Boolean;

    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->intArrayFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;->value:[I

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_56618(Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/apf/ApfCapabilities;

    iget v1, p3, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->version:I

    iget v2, p3, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->maxLength:I

    sget v3, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfCapabilities;-><init>(III)V

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->value:Landroid/net/apf/ApfCapabilities;

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_63535(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->driverDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    iget-object v0, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->firmwareDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_66478(Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/WifiVendorHal;->makeRingBufferStatusArray(Ljava/util/ArrayList;)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_67749(Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;->value:[B

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_68443(Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;->value:[B

    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_73310([Lcom/android/server/wifi/WifiNative$TxFateReport;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 10

    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;

    array-length v0, p1

    if-lt v8, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    return-void

    :cond_2
    iget v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->fate:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkTxPktFate(I)B

    move-result v1

    iget-object v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-wide v2, v0, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    iget-object v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget v0, v0, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkPktFateFrameType(I)B

    move-result v4

    iget-object v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-object v0, v0, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v5

    add-int/lit8 v9, v8, 0x1

    new-instance v0, Lcom/android/server/wifi/WifiNative$TxFateReport;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative$TxFateReport;-><init>(BJB[B)V

    aput-object v0, p1, v8

    move v8, v9

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_75097([Lcom/android/server/wifi/WifiNative$RxFateReport;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 10

    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;

    array-length v0, p1

    if-lt v8, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    return-void

    :cond_2
    iget v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkRxPktFate(I)B

    move-result v1

    iget-object v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-wide v2, v0, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    iget-object v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget v0, v0, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkPktFateFrameType(I)B

    move-result v4

    iget-object v0, v6, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-object v0, v0, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v5

    add-int/lit8 v9, v8, 0x1

    new-instance v0, Lcom/android/server/wifi/WifiNative$RxFateReport;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative$RxFateReport;-><init>(BJB[B)V

    aput-object v0, p1, v8

    move v8, v9

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_82538(Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_WifiVendorHal_84165(Lcom/android/server/wifi/WifiNative$RoamingCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->maxBlacklistSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    iget v0, p4, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->maxWhitelistSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    return-void
.end method

.method public pauseBgScan()V
    .locals 5

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v4, v4, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-object v5, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v5, "Illegal argument for RTT request"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    return v7

    :cond_0
    :try_start_2
    iget v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :cond_1
    :try_start_3
    iget v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    iput-object p2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    iget v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    invoke-interface {v4, v6, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v5

    return v8

    :cond_3
    const/4 v4, 0x0

    :try_start_5
    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return v7

    :catch_1
    move-exception v0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v7

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public resetLogHandler()Z
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v3

    return v5

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v3

    return v5

    :cond_3
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public restartBgScan()V
    .locals 6

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v4, v4, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v5, v5, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-interface {v2, v4, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setCountryCodeHal(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4

    return v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4

    return v4

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget-object v5, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :catch_0
    move-exception v2

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4

    return v4

    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiApIface;->setCountryCode([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    monitor-exit v5

    return v6

    :cond_3
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :catch_1
    move-exception v1

    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return v6

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    return v2

    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v3

    return v5

    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return v6

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setScanningMacOui([B)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    return v2

    :cond_0
    array-length v2, p1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    return v2

    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v3

    return v4

    :cond_3
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startBgScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v3

    return v3

    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v5, v5, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v3, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    :cond_2
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    rem-int/lit8 v3, v3, 0x9

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    invoke-direct {v1, p0, v3, p1}, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;-><init>(Lcom/android/server/wifi/WifiVendorHal;ILcom/android/server/wifi/WifiNative$ScanSettings;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget v5, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    iget-object v6, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-interface {v3, v5, v6}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    monitor-exit v4

    return v7

    :cond_3
    :try_start_2
    iput-object p2, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return v7

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v2, "verboseLevel=%, flags=%, maxIntervalInSec=%, minDataSizeInBytes=%, ringName=%"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v4, p3

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v4, p4

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2, p5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v2, p5, p1, p3, p4}, Landroid/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v6

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startPktFateMonitoring()Z
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-interface {v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v2, "maxRssi=% minRssi=%"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v4, p2

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    if-gt p1, p2, :cond_0

    return v6

    :cond_0
    if-nez p3, :cond_1

    return v6

    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v3

    return v6

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    const/16 v4, 0x1d7f

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    const/16 v4, 0x1d7f

    invoke-interface {v2, v4, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v3

    return v6

    :cond_3
    :try_start_2
    iput-object p3, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return v6

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startSendingOffloadedPacket(I[BLcom/android/server/connectivity/KeepalivePacketData;I)I
    .locals 11

    const/4 v10, -0x1

    const-string/jumbo v0, "slot=% periodInMs=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v4, p1

    invoke-interface {v0, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v4, p4

    invoke-interface {v0, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    iget-object v0, p3, Lcom/android/server/connectivity/KeepalivePacketData;->data:[B

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    iget v0, p3, Lcom/android/server/connectivity/KeepalivePacketData;->protocol:I

    int-to-short v3, v0

    sget-object v9, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v9

    return v10

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-object v5, p3, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    move v1, p1

    move-object v4, p2

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v9

    return v10

    :cond_1
    const/4 v0, 0x0

    monitor-exit v9

    return v0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    return v10

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public startVendorHal(Z)Z
    .locals 5

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->start()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "start the vendor HAL"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_2
    if-eqz p1, :cond_7

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/HalDeviceManager;->createStaIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    if-nez v1, :cond_3

    const-string/jumbo v1, "create STA Iface"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->registerStaIfaceCallback()Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "register sta iface callback"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/HalDeviceManager;->createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiRttController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v1, :cond_5

    const-string/jumbo v1, "create RTT controller"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_5
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->registerRttEventCallback()Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "register RTT iface callback"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_6
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->enableLinkLayerStats()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/HalDeviceManager;->getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v1, :cond_9

    const-string/jumbo v1, "get the chip created for the Iface"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/HalDeviceManager;->createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    if-nez v1, :cond_8

    const-string/jumbo v1, "create AP Iface"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_8
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIface:Landroid/hardware/wifi/V1_0/IWifiApIface;

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->registerChipCallback()Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "register chip callback"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->startFailedTo(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v3, "Vendor Hal started successfully"

    invoke-interface {v1, v3}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startVendorHalAp()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal(Z)Z

    move-result v0

    return v0
.end method

.method public startVendorHalSta()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal(Z)Z

    move-result v0

    return v0
.end method

.method public stopBgScan()V
    .locals 4

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopRssiMonitoring()I
    .locals 6

    const/4 v5, -0x1

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return v5

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    const/16 v4, 0x1d7f

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    const/16 v4, 0x1d7f

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return v5

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public stopSendingOffloadedPacket(I)I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v2, "slot=%"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v4, p1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIface:Landroid/hardware/wifi/V1_0/IWifiStaIface;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return v6

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v6

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public stopVendorHal()V
    .locals 3

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->stop()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v2, "Vendor Hal stopped"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method wifiFeatureMaskFromStaCapabilities(I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sFeatureCapabilityTranslation:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sFeatureCapabilityTranslation:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sFeatureCapabilityTranslation:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    or-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
