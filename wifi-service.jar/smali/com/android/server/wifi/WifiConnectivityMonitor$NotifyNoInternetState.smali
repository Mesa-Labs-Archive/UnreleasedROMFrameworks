.class Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyNoInternetState"
.end annotation


# instance fields
.field mCaptivePortalResult:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->mCaptivePortalResult:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    const v7, 0x21012

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v7, v3, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :cond_0
    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPoorNetworkDetectioneEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get83(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsScreenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "No Internet State, showing Dialog"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string/jumbo v2, "KTT"

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get35()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap12(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v3, "keep connection for KTCM"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v2

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v7, v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set21(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/16 v4, 0xb

    invoke-static {v3, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public exit()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    return v5

    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " CMD_USER_SELECTION : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    if-eqz v2, :cond_2

    move v3, v4

    :goto_1
    const v8, 0x21012

    invoke-virtual {v6, v8, v7, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_3
    :sswitch_1
    return v4

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Failed to send User Selection to WSM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v5, 0x20090

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_3

    :sswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_5

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2100e -> :sswitch_2
        0x21060 -> :sswitch_0
        0x25066 -> :sswitch_1
    .end sparse-switch
.end method
