.class Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeWeightedEMA"
.end annotation


# instance fields
.field private final mAlpha:D

.field private mProduct:D

.field private mValue:D

.field private mVolume:D

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mValue:D

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mVolume:D

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;D)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mValue:D

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mVolume:D

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mProduct:D

    iput-wide p2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mAlpha:D

    return-void
.end method


# virtual methods
.method public update(DI)V
    .locals 11

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-gtz p3, :cond_0

    return-void

    :cond_0
    int-to-double v2, p3

    mul-double v0, p1, v2

    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mAlpha:D

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mProduct:D

    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mAlpha:D

    int-to-double v4, p3

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mVolume:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mVolume:D

    iget-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mProduct:D

    iget-wide v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mVolume:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->mValue:D

    return-void
.end method
