.class Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrentBackgroundScan"
.end annotation


# instance fields
.field public cmdId:I

.field public eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field public latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;

.field public param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

.field public paused:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;ILcom/android/server/wifi/WifiNative$ScanSettings;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;

    iput p2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    new-instance v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v3, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->basePeriodInMs:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v3, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->maxApPerScan:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v3, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->reportThresholdPercent:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget v3, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    iput v3, v2, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->reportThresholdNumScans:I

    iget-object v2, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;->buckets:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/wifi/WifiVendorHal;->-wrap0(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
