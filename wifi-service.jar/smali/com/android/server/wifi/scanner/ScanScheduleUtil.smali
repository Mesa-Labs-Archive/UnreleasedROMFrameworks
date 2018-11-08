.class public Lcom/android/server/wifi/scanner/ScanScheduleUtil;
.super Ljava/lang/Object;
.source "ScanScheduleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bucketEquals(Lcom/android/server/wifi/WifiNative$BucketSettings;Lcom/android/server/wifi/WifiNative$BucketSettings;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v3

    :cond_1
    if-ne p0, p1, :cond_2

    return v4

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->channelEquals(Lcom/android/server/wifi/WifiNative$ChannelSettings;Lcom/android/server/wifi/WifiNative$ChannelSettings;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return v4
.end method

.method public static channelEquals(Lcom/android/server/wifi/WifiNative$ChannelSettings;Lcom/android/server/wifi/WifiNative$ChannelSettings;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->dwell_time_ms:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->dwell_time_ms:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->passive:Z

    iget-boolean v3, p1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->passive:Z

    if-ne v2, v3, :cond_5

    :goto_0
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 12

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v7, p1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_6

    aget-object v2, p1, v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getBucketsScanned()I

    move-result v4

    invoke-static {p3, v4}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketMaybeScanned(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_1

    aget-object v3, v8, v4

    iget v10, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, p2, v10}, Lcom/android/server/wifi/scanner/ChannelHelper;->settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v10, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-lez v10, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    iget v11, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-lt v10, v11, :cond_3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v8

    array-length v8, v8

    if-ne v4, v8, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_5

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getBucketsScanned()I

    move-result v4

    invoke-static {p3, v4}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketDefinitlyScanned(II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_5
    new-instance v8, Landroid/net/wifi/WifiScanner$ScanData;

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getId()I

    move-result v9

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getFlags()I

    move-result v10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/ScanResult;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/wifi/ScanResult;

    invoke-direct {v8, v9, v10, v4}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    return-object v4

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ScanData;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object v4
.end method

.method private static isBucketDefinitlyScanned(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    shl-int v2, v0, p0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isBucketMaybeScanned(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-gez p0, :cond_1

    :cond_0
    return v0

    :cond_1
    shl-int v2, v0, p0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static scheduleEquals(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanSettings;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v3

    :cond_1
    if-ne p0, p1, :cond_2

    return v4

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->bucketEquals(Lcom/android/server/wifi/WifiNative$BucketSettings;Lcom/android/server/wifi/WifiNative$BucketSettings;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return v4
.end method

.method public static shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z
    .locals 1

    invoke-static {p4, p2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->isBucketMaybeScanned(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
