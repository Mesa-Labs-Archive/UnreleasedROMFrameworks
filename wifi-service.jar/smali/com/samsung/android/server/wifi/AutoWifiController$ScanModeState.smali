.class Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field private mScanCounter:I

.field private final mScanIntervalArr:[I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 5

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/16 v0, 0x8

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/16 v3, 0x40

    const/16 v4, 0x80

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanIntervalArr:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    return-void
.end method

.method private getNextScanInterval(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanIntervalArr:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get20(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanIntervalArr:[I

    aget v0, v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private startScanPoll()V
    .locals 5

    const/16 v4, 0xb

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap16(Lcom/samsung/android/server/wifi/AutoWifiController;I)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->getNextScanInterval(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set8(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get19(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private stopScanPoll()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap16(Lcom/samsung/android/server/wifi/AutoWifiController;I)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->setUpdateFlag()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get13(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->startScanPoll()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set0(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap17(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    return-void
.end method

.method public exit()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->stopScanPoll()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->isFoundConnectableApInScanResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_ON:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap8(Lcom/samsung/android/server/wifi/AutoWifiController;Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_0
    :pswitch_2
    return v4

    :cond_1
    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "Can\'t change Wi-Fi state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->getFavoriteNetworkCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->getGoefenceEnteredNetworkCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const-string/jumbo v1, "samsung.wifi.autowifi"

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->startScanPoll()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "not exist geofence entered Wi-Fi networks. skip scan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "Skip scan, There is no saved favorite Wi-Fi networks. Transition to Wi-Fi off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap21(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get22(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_4

    iput v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->startScanPoll()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const-string/jumbo v1, "samsung.wifi.autowifi"

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->stopScanPoll()V

    goto :goto_2

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_5

    iput v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->mScanCounter:I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->startScanPoll()V

    :goto_3
    return v2

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanModeState;->stopScanPoll()V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
