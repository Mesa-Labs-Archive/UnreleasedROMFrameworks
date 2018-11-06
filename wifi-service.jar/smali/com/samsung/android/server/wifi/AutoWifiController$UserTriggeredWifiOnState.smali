.class Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserTriggeredWifiOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap1(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap20(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    return v1

    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap22(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    :cond_0
    :goto_0
    return v2

    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap20(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    goto :goto_0

    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setGeofenceStateExit()V

    goto :goto_0

    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    const-string/jumbo v3, "AutoWifiController"

    const-string/jumbo v4, "wifi Connect event on UserTriggeredWifiOnState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v1, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v1, v4, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get10(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap4(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutoWifiController"

    const-string/jumbo v3, "current network has been favorite AP. re-enter geofence state"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap13(Lcom/samsung/android/server/wifi/AutoWifiController;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$UserTriggeredWifiOnState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x11 -> :sswitch_4
    .end sparse-switch
.end method
