.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bucket"
.end annotation


# instance fields
.field public bucketId:I

.field private final mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field private final mScanSettingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public period:I

.field final synthetic this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    iput p2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get3(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V
    .locals 3

    iget v2, p2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V

    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createChannelSettings(I)Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    iput p1, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    return-object v0
.end method


# virtual methods
.method public addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;
    .locals 10

    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget v5, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    and-int/lit8 v8, v5, 0x4

    if-nez v8, :cond_0

    and-int/lit8 v4, v4, -0x5

    :cond_0
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_1

    or-int/lit8 v4, v4, 0x1

    :cond_1
    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_2

    or-int/lit8 v4, v4, 0x2

    :cond_2
    if-nez v2, :cond_3

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    if-eqz v8, :cond_3

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v9, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v8, v9, :cond_3

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get1()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-wrap0(II)I

    move-result v0

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get2()[I

    move-result-object v8

    aget v8, v8, v0

    iput v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v9, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    if-ge v8, v9, :cond_4

    iget v3, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    :goto_1
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v3, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    iput p1, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    iput v4, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    iget v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    iput v8, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iput v3, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->max_period_ms:I

    iput v7, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->step_count:I

    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v8, v1, p2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V

    return-object v1
.end method

.method public getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    return-object v0
.end method

.method public getSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    return-object v0
.end method

.method public removeSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateChannelCollection()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    :cond_0
    return-void
.end method
