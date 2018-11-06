.class Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceExitState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    return v3

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get23(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_0
    return v4

    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get24(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap9(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get21(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_4
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$GeofenceExitState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setGeofenceStateExit()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
