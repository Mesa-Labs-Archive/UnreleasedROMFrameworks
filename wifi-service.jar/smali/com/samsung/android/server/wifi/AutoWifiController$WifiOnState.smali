.class Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiOnState"
.end annotation


# instance fields
.field public mScanReceiverCount:I

.field private mStateEnterTime:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mStateEnterTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mScanReceiverCount:I

    return-void
.end method

.method private increaseScoreAndTranstion()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mScanReceiverCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mScanReceiverCount:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get18(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get10(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap5(Lcom/samsung/android/server/wifi/AutoWifiController;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get9(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "last connected network is not favorite AP, reset scan counter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mScanReceiverCount:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "com.android.settings"

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap12(Lcom/samsung/android/server/wifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "settings activity is showing, reset scan counter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mScanReceiverCount:I

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mStateEnterTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get17(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap9(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get21(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private resetWifiOffTransitionScanCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mScanReceiverCount:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->resetWifiOffTransitionScanCounter()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->resetWifiOffTransitionTime()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get24(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap1(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap20(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    return v0

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap20(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    :cond_1
    :goto_0
    :sswitch_1
    return v1

    :sswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->resetWifiOffTransitionScanCounter()V

    :cond_2
    return v0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get24(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->isFoundConnectableApInScanResult()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->resetWifiOffTransitionScanCounter()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "AutoWifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received scan result but not found connectable ap, AlwaysWifiOnUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->getFavoriteNetworkCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->increaseScoreAndTranstion()V

    goto :goto_0

    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_5

    const-string/jumbo v2, "com.android.settings"

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap12(Lcom/samsung/android/server/wifi/AutoWifiController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get13(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v2, "Ignore to change Wi-Fi state off, because settings activity is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public resetWifiOffTransitionTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->mStateEnterTime:J

    return-void
.end method
