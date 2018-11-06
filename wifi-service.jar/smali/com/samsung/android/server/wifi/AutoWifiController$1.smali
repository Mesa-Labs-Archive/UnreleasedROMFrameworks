.class Lcom/samsung/android/server/wifi/AutoWifiController$1;
.super Ljava/lang/Object;
.source "AutoWifiController.java"

# interfaces
.implements Lcom/android/server/wifi/WifiGeofenceManager$WifiGeofenceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeofenceStateChanged(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap10(Lcom/samsung/android/server/wifi/AutoWifiController;I)I

    move-result v0

    move v1, v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get15(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AutoWifiController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Geofence manual mode:ON, geofence configKeys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->updateGeofenceEnterNetwork(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->hasFavoriteApInGeofenceArea()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap19(Lcom/samsung/android/server/wifi/AutoWifiController;II)V

    return-void
.end method
