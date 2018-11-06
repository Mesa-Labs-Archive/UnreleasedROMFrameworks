.class public Lcom/samsung/android/server/wifi/WifiScanController;
.super Ljava/lang/Object;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;,
        Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DEFALUT_NLP_PACKAGE_NAME:Ljava/lang/String; = "may.be.nlp.package"

.field private static final MAX_DURATION:I = 0x927c0

.field public static final SCANLOG_TYPE_1_6_11_CHANNEL_SCAN_COUNTER:I = 0x4

.field public static final SCANLOG_TYPE_2_4GHZ_CHANNEL_SCAN_COUNTER:I = 0x3

.field public static final SCANLOG_TYPE_CACHED_SCAN_COUNTER:I = 0x6

.field public static final SCANLOG_TYPE_DELAYED_SCAN_COUNTER:I = 0x7

.field public static final SCANLOG_TYPE_EXPT_DFS_CHANNEL_SCAN_COUNTER:I = 0x5

.field public static final SCANLOG_TYPE_FULL_CHANNEL_SCAN_COUNTER:I = 0x2

.field public static final SCANLOG_TYPE_SCAN_COUNT_TOTAL:I = 0x0

.field public static final SCANLOG_TYPE_SCAN_INTERVAL:I = 0x1

.field public static final SCAN_TYPE_DO_NOTHING:I = 0x5

.field public static final SCAN_TYPE_EXCEPT_PASSIVE_CHANNELS:I = 0x3

.field public static final SCAN_TYPE_FORCE_FULL:I = 0x6

.field public static final SCAN_TYPE_FULL:I = 0x0

.field public static final SCAN_TYPE_MAX:I = 0x7

.field public static final SCAN_TYPE_PARTIAL_1_6_11_CHANNELS:I = 0x2

.field public static final SCAN_TYPE_PARTIAL_2_4_ONLY:I = 0x1

.field public static final SCAN_TYPE_USE_CACHED_RESULT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiScanController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisabledReason:Ljava/lang/String;

.field private mEnabled:Z

.field private mLastActualScanActionTime:J

.field private mLastNLPScanRequestTime:J

.field private mLastRequestPackageName:Ljava/lang/String;

.field private mMaxDuration:J

.field private mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

.field private final mNLPPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mScanCounter2_4GHz:I

.field private mScanCounterAll:I

.field private mScanCounterCached:I

.field private mScanCounterNlp:I

.field private final mScanLogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mEnabled:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mDisabledReason:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->updateNLPPackages()V

    return-void
.end method

.method private addOrUpdateNLPPackageSetting(Ljava/lang/String;IJ)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x7

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    invoke-direct {v2, p2, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkScanDelayForCachedScan(Ljava/lang/String;)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    sub-long v6, v2, v6

    iget-wide v8, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v6, v8

    if-gez v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_0
    monitor-exit v5

    :cond_1
    const/4 v4, 0x0

    return v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private getCustomScanType(Ljava/lang/String;)I
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiScanController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scan type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    :cond_2
    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    return-object v0

    :cond_1
    monitor-exit v3

    :cond_2
    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getScanLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isNLPPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateNLPPackages()V
    .locals 8

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string/jumbo v2, "com.google.process.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string/jumbo v2, "com.google.android.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string/jumbo v2, "com.google.android.gms"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string/jumbo v2, "may.be.nlp.package"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addHistoricalScanLog(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->addCounter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v3

    :cond_1
    return-void

    :pswitch_1
    :try_start_1
    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterCached:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterCached:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_2
    :try_start_2
    iget v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter2_4GHz:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter2_4GHz:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dump()Ljava/lang/String;
    .locals 12

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "WifiScanController:\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "-Enabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ", Reason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mDisabledReason:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "-SMD Supported:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->isSupported()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ", used:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "-MAX Duration:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " type:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v7, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " delay:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v7, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_0
    monitor-exit v9

    const-string/jumbo v8, "\nWifi scan command history\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    if-eqz v5, :cond_1

    add-int/lit8 v6, v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ". "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PackageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_2
    monitor-exit v9

    const-string/jumbo v8, "Counter ALL:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterAll:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v8, " NLP:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterNlp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v8, " Cached:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterCached:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v8, " 2.4GHz:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter2_4GHz:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "Last request package:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastRequestPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getBigDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->isReachedLimitation()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->getBigDataExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->resetCounter()V

    return-object v0

    :cond_1
    return-object v3
.end method

.method public getDisableReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mDisabledReason:Ljava/lang/String;

    return-object v0
.end method

.method public getScanCounterForBigdata(Z)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterAll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterNlp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterCached:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter2_4GHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    iput v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterAll:I

    iput v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterNlp:I

    iput v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterCached:I

    iput v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter2_4GHz:I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getScanLogData(Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->getScanLogData(I)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getScanType(Ljava/lang/String;)I
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastRequestPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterAll:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterAll:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v4, "WifiScanController"

    const-string/jumbo v5, "request package name is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v5, "WifiScanController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scan requested by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_1

    const-string/jumbo v4, " (it\'s NLP package. check moving state)"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mEnabled:Z

    if-nez v4, :cond_2

    const-string/jumbo v4, "WifiScanController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scan disabled reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mDisabledReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->isNLPPackage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v4, ""

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_b

    iget v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterNlp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounterNlp:I

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->resetTimer(J)V

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->checkScanDelayForCachedScan(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WifiScanController"

    const-string/jumbo v5, "Ignore scan request, reason:scan delay"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    :cond_4
    const-string/jumbo v4, "WifiScanController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignore scan request, policy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    return v1

    :cond_5
    const/4 v4, 0x6

    if-ne v1, v4, :cond_7

    :cond_6
    :goto_2
    const-string/jumbo v4, "WifiScanController"

    const-string/jumbo v5, "force scan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    return v1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->getMovingStatus()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "WifiScanController"

    const-string/jumbo v5, "SMD detected. Force scan"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    return v1

    :cond_8
    const-string/jumbo v4, "WifiScanController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time diff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    const-string/jumbo v4, "WifiScanController"

    const-string/jumbo v5, "Ignore scan request, use cached scan result"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    return v1

    :cond_9
    sget-boolean v4, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "WifiScanController"

    const-string/jumbo v5, "reset timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->checkAndStopMonitoring()V

    :cond_c
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    if-eqz p1, :cond_d

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    :cond_d
    return v1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mEnabled:Z

    return v0
.end method

.method public setCustomScanType(Ljava/lang/String;II)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiScanController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", scanType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", scanDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(sec.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addOrUpdateNLPPackageSetting(Ljava/lang/String;IJ)V

    return-void
.end method

.method public setDurationSettings(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    return-void
.end method

.method public setEnableSMD(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->setEnable(Z)Z

    return-void
.end method

.method public setEnableScan(ZLjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "WifiScanController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableScan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mEnabled:Z

    iput-object p2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mDisabledReason:Ljava/lang/String;

    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMotionDetector:Lcom/samsung/android/server/wifi/SemSmdMotionDetector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemSmdMotionDetector;->stopMonitoring()V

    return-void
.end method

.method public updateScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/16 v0, 0xb

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x96c

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v3

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x971

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v5

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x976

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x97b

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v6

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x980

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x985

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x98a

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x98f

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v7

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x994

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x999

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x99e

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    goto/16 :goto_0

    :pswitch_2
    iput v4, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    goto/16 :goto_0

    :pswitch_3
    iput v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    new-array v0, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x96c

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v3

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x985

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v5

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/16 v2, 0x99e

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v1, v0, v4

    goto/16 :goto_0

    :pswitch_4
    iput v7, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
