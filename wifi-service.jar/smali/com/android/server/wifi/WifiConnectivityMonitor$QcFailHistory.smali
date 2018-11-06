.class Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QcFailHistory"
.end annotation


# instance fields
.field apIndex:I

.field avoidance:Z

.field bssid:Ljava/lang/String;

.field bytes:I

.field currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field dataRate:I

.field detection:Z

.field error:I

.field line:I

.field netstat:Ljava/lang/String;

.field qcId:I

.field qcStep:I

.field qcTrigger:I

.field qcTriggerAtQC:I

.field qcTriggerTemp:I

.field qcType:I

.field qcUrlIndex:I

.field rssi:I

.field ssid:Ljava/lang/String;

.field state:Ljava/lang/String;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->state:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcUrlIndex:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->rssi:I

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->dataRate:I

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->detection:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->avoidance:Z

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->apIndex:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->ssid:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bssid:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->currentDnsList:Ljava/util/List;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->netstat:Ljava/lang/String;

    return-void
.end method
