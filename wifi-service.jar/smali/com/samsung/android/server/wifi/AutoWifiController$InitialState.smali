.class Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap15(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setEnable(Z)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->setAutoWifiState(Z)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v1, "AutoWifiController"

    const-string/jumbo v2, "Auto Wi-Fi Disabled, deinitialize geofence"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->setGeofenceState(Z)V

    :cond_1
    return-void
.end method

.method public exit()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap15(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setAutoWifiState(Z)V

    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "Auto Wi-Fi Enabled, initialize geofence"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setGeofenceState(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set1(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->checkDeviceStatusInIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "can\'t enable Auto Wi-Fi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v2

    if-ne v2, v4, :cond_7

    if-eq v1, v6, :cond_2

    if-ne v1, v5, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get24(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->setUpdateFlag()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->getFavoriteNetworkCount()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap9(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get21(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get22(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap21(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get22(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_7
    if-eq v1, v6, :cond_8

    if-ne v1, v5, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get23(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap22(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "Auto Wi-Fi option : off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "Auto Wi-Fi disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$InitialState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setGeofenceStateExit()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
