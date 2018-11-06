.class Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptivePortalState"
.end annotation


# instance fields
.field mCaptivePortalResult:I

.field private mConnectivityCheckOneMore:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->mCaptivePortalResult:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->mConnectivityCheckOneMore:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get83(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->mConnectivityCheckOneMore:Z

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set46(Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "MODE_NO_CHECK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_3
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

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    return v9

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "start to check Captive portal"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v8, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x21029

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return v8

    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get92(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    if-eq v4, v8, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set6(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;)Landroid/os/Message;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get50(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_4

    if-ne v3, v8, :cond_4

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "CAPTIVE_PORTAL_RESULT_DETECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set8(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get108(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    if-ne v4, v8, :cond_e

    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    if-eqz v0, :cond_5

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x21019

    const v6, 0x2101b

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set84(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_6
    if-ne v3, v7, :cond_7

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x6

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v10

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->mConnectivityCheckOneMore:Z

    if-nez v4, :cond_9

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->mConnectivityCheckOneMore:Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "start to check Captive portal one more"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v8, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x21029

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    goto/16 :goto_0

    :cond_7
    if-ne v3, v10, :cond_8

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x6

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x9

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    if-ne v3, v10, :cond_b

    const/4 v2, 0x2

    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->isManualConnection()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get83(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/16 v6, 0x12e

    invoke-static {v5, v6, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap58(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    :cond_a
    :goto_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x1

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap58(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto :goto_3

    :cond_d
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/16 v6, 0x12e

    invoke-static {v5, v6, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V

    if-eqz v0, :cond_a

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap58(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto :goto_3

    :cond_e
    if-nez v3, :cond_14

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    if-eqz v0, :cond_f

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x21019

    const v6, 0x2101b

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_f
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->isManualConnection()Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    if-le v4, v5, :cond_13

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_13

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v4

    if-ne v4, v8, :cond_13

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/16 v5, -0x40

    if-gt v4, v5, :cond_12

    :cond_10
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Connedted But link might be still poor, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_12
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/16 v5, -0x46

    if-le v4, v5, :cond_10

    :cond_13
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v10, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    goto :goto_4

    :cond_14
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->mConnectivityCheckOneMore:Z

    if-nez v4, :cond_16

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->mConnectivityCheckOneMore:Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v8, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "start to check Captive portal one more"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x21029

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    :cond_15
    :goto_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_0

    :cond_16
    if-ne v3, v10, :cond_18

    const/4 v2, 0x2

    :goto_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->isManualConnection()Z

    move-result v4

    if-nez v4, :cond_17

    if-eqz v0, :cond_1a

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a

    :cond_17
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get80(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotifyNoInternetState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_5

    :cond_18
    const/4 v2, 0x1

    goto :goto_6

    :cond_19
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap58(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_5

    :cond_1a
    if-eqz v0, :cond_1b

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->isManualConnection()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1b

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap58(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    :cond_1b
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_5

    :sswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v5, "MODE_NO_CHECK transition to mValidState"

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_1c
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v8, :cond_1d

    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_1e

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set21(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_1d
    const/4 v1, 0x0

    goto :goto_7

    :cond_1e
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_2
        0x2100e -> :sswitch_3
        0x2102a -> :sswitch_1
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
