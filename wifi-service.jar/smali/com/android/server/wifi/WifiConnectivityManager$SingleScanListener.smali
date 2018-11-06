.class Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleScanListener"
.end annotation


# instance fields
.field private final mIsFullBandScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SingleScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v1, "Do not schedule delayed single scan since it is stopped"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get5(Lcom/android/server/wifi/WifiConnectivityManager;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap5(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v1, "Failed to successfully start single scan for 5 times"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SingleScanListener onPeriodChanged: actual scan period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
