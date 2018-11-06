.class Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FavoriteGeofenceEnterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private obtainGeofenceExitTimerMessage()Landroid/os/Message;
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get14(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    div-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get16(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v0, v2, 0x32

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set6(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get4(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "do not update alaways Wi-Fi on user flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set1(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z

    :cond_1
    :goto_0
    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Geofence Enter with AlwaysWifiOnUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set0(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap17(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set0(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z

    goto :goto_1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const/16 v5, 0xd

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap22(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get5(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get24(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set7(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get22(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set7(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->obtainGeofenceExitTimerMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get14(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set6(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    :cond_4
    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set geofence exit timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get14(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->obtainGeofenceExitTimerMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get16(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get14(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get16(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap16(Lcom/samsung/android/server/wifi/AutoWifiController;I)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->obtainGeofenceExitTimerMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set6(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap16(Lcom/samsung/android/server/wifi/AutoWifiController;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get14(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get14(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get16(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "geofence exit, AlwaysWifiOnUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastConnectedNetworkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get10(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setGeofenceStateExit()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get8(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->getFavoriteNetworkCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get10(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap5(Lcom/samsung/android/server/wifi/AutoWifiController;I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get9(Lcom/samsung/android/server/wifi/AutoWifiController;)J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    :cond_7
    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "Wi-Fi turnning off because last connected network is favorite AP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap22(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get23(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap22(Lcom/samsung/android/server/wifi/AutoWifiController;Z)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$FavoriteGeofenceEnterState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get24(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
