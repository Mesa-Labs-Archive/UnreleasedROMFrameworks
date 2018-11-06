.class public Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;,
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_MAX_AP_PER_SCAN:I = 0x20

.field public static final DEFAULT_MAX_BUCKETS:I = 0x8

.field public static final DEFAULT_MAX_CHANNELS_PER_BUCKET:I = 0x10

.field public static final DEFAULT_MAX_SCANS_TO_BATCH:I = 0xa

.field private static final DEFAULT_PERIOD_MS:I = 0x7530

.field private static final DEFAULT_REPORT_THRESHOLD_PERCENTAGE:I = 0x64

.field private static final EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

.field private static final NUM_OF_REGULAR_BUCKETS:I

.field private static final PERIOD_MIN_GCD_MS:I = 0x2710

.field private static final PREDEFINED_BUCKET_PERIODS:[I

.field private static final TAG:Ljava/lang/String; = "BackgroundScanScheduler"


# instance fields
.field private final mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private mMaxApPerScan:I

.field private mMaxBatch:I

.field private mMaxBuckets:I

.field private mMaxChannelsPerBucket:I

.field private mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mSettingsToScheduledBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    return v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    return-void

    :array_0
    .array-data 4
        0x7530
        0x1d4c0
        0x75300
        0x2710
        0xea60
        0x1d4c00
        0x3a980
        0xea600
        0x3a9800
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    return-void
.end method

.method private addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v1, v2, :cond_0

    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    return-void

    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    sget v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 2

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    return-object v0
.end method

.method private compactBuckets(I)V
    .locals 7

    move v1, p1

    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    sget v6, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, p1, -0x1

    :cond_0
    sget v5, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getActiveRegularBucketCount()I

    move-result v5

    if-le v5, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-static {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clear(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v1, v0, 0x1

    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v6, v5, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private createSchedule(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;I)V"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v5, Lcom/android/server/wifi/WifiNative$ScanSettings;

    invoke-direct {v5}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    iput v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    iput-object v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    iput v10, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBatch()I

    move-result v8

    iput v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    iget-object v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iget v9, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-le v8, v9, :cond_1

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    :cond_1
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    if-eqz v8, :cond_0

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iget v9, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    if-ge v8, v9, :cond_0

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v8, 0x64

    iput v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    iget v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-eqz v8, :cond_4

    iget v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    move-result v9

    if-le v8, v9, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    move-result v8

    iput v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    :cond_5
    iget v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-lez v8, :cond_8

    iget-object v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v8, v8, v10

    iget v4, v8, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    const/4 v0, 0x1

    :goto_2
    iget v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v0, v8, :cond_6

    iget-object v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    invoke-static {v8, v4}, Landroid/util/Rational;->gcd(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/16 v8, 0x2710

    if-ge v4, v8, :cond_7

    const-string/jumbo v8, "BackgroundScanScheduler"

    const-string/jumbo v9, "found gcd less than min gcd"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x2710

    :cond_7
    iput v4, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    :goto_3
    iput-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-void

    :cond_8
    const/16 v8, 0x7530

    iput v8, v5, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    goto :goto_3
.end method

.method private createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v4, :cond_0

    move-object v5, p1

    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    goto :goto_2

    :cond_0
    new-instance v5, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method private createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getMissingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getContainingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v1, v0, 0x1

    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v6, v5, v0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v5, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    and-int/lit8 v5, v5, 0x6

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    return-object v4
.end method

.method private static findBestRegularBucketIndex(II)I
    .locals 7

    sget v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, -0x1

    const v3, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sget-object v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    aget v4, v4, v1

    sub-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    move v3, v0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    const-string/jumbo v4, "BackgroundScanScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not find best bucket for period "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " buckets"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private fixBuckets(Ljava/util/List;II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    invoke-virtual {v7}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getChannelSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v11

    if-le v11, p3, :cond_2

    invoke-direct {p0, v3, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v10

    add-int/lit8 v6, v11, -0x1

    if-gt v6, p2, :cond_1

    invoke-direct {p0, v7, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v10, v6

    goto :goto_0

    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method private mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-object v0, v3

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->partiallyContainsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v1, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    move-result-object v2

    :goto_1
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private optimizeBuckets()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getSortedActiveRegularBucketList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-interface {v5}, Ljava/util/ListIterator;->previousIndex()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v7}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;

    move-result-object v8

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiScanner$ScanSettings;

    if-eqz v9, :cond_0

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-virtual {v1, v13}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    move-object/from16 v16, v0

    sget v17, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    move-object/from16 v16, v0

    sget v17, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v12
.end method

.method private partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method


# virtual methods
.method public filterResultsForSettings([Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApPerScan()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    return v0
.end method

.method public getMaxBatch()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    return v0
.end method

.method public getMaxBuckets()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    return v0
.end method

.method public getMaxChannelsPerBucket()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    return v0
.end method

.method public getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object v0
.end method

.method public getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    return v1

    :cond_0
    const-string/jumbo v1, "BackgroundScanScheduler"

    const-string/jumbo v2, "No bucket found for settings"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public setMaxApPerScan(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    return-void
.end method

.method public setMaxBatch(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    return-void
.end method

.method public setMaxBuckets(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    return-void
.end method

.method public setMaxChannelsPerBucket(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    return-void
.end method

.method public shouldReportFullScanResultForSettings(Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {p0, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v0

    return v0
.end method

.method public updateSchedule(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clearAll()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->compactBuckets(I)V

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->optimizeBuckets()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->fixBuckets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    return-void
.end method
