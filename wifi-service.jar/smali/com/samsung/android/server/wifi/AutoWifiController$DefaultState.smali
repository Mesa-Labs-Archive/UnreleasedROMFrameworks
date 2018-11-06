.class Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    const/16 v4, 0x3f2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->updateFavoriteNetworkKey(Ljava/util/List;)I

    :cond_0
    :goto_0
    :pswitch_1
    return v5

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap18(Lcom/samsung/android/server/wifi/AutoWifiController;I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->checkDeviceStatusInIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "AutoWifiController"

    const-string/jumbo v3, "Can\'t check geofence state, Force turn on the Wi-Fi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    sget-object v3, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_ON:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap8(Lcom/samsung/android/server/wifi/AutoWifiController;Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get7(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap21(Lcom/samsung/android/server/wifi/AutoWifiController;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get7(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
