.class Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitAuthCompleteState"
.end annotation


# static fields
.field private static final CHECK_AUTH_POLL:I = 0x1

.field private static final POLL_PERIOD:J = 0x2710L


# instance fields
.field private final SUCCESS:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->SUCCESS:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get83(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v7, 0x2101a

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "CAPTIVE_PORTAL_RESULT_DETECTED start CHECK_AUTH_POLL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v7, 0x1

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v6

    const-string/jumbo v7, "WFCP"

    const-string/jumbo v8, "CSec"

    invoke-virtual {v6, v7, v8, v5}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isManualConnection()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v6

    const-string/jumbo v7, "WFCP"

    const-string/jumbo v8, "CDet"

    invoke-virtual {v6, v7, v8, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_3

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v6

    const-string/jumbo v7, "WFCP"

    const-string/jumbo v8, "COui"

    invoke-virtual {v6, v7, v8, v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set13(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "CP variable set error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "WifiConnectivityMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IllegalStateException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x2

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    const v10, 0x2101b

    const v9, 0x21019

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    return v3

    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiConnectivityMonitor"

    const-string/jumbo v5, "start to check Captive portal at WaitAuthCompleteState"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v3

    const/4 v5, 0x3

    iput v5, v3, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v3

    const v5, 0x21029

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return v4

    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get20(Lcom/android/server/wifi/WifiConnectivityMonitor;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set18(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v4

    const-string/jumbo v5, "WFCP"

    const-string/jumbo v6, "CUna"

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get25(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    return v3

    :cond_2
    const/4 v5, 0x5

    if-ne v2, v5, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_3
    if-ne v2, v8, :cond_4

    return v3

    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    if-ne v2, v4, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "App response received  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set84(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "WifiConnectivityMonitor"

    const-string/jumbo v6, "CaptivePortal AP - APP_RETURN_WANTED_AS_IS and Multi-Network"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v3, "WifiConnectivityMonitor"

    const-string/jumbo v5, "keep connection on CHN network"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    const v6, 0x21012

    invoke-virtual {v3, v6, v5, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set84(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set21(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v5, 0x2101c

    invoke-virtual {v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set17(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2100e -> :sswitch_3
        0x2102a -> :sswitch_1
        0x25068 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
