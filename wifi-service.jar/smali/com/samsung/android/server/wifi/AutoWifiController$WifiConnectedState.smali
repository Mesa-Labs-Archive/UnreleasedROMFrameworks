.class Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiConnectedState"
.end annotation


# instance fields
.field private mGeofenceInitialized:Z

.field private mTimeAtConnectStart:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mTimeAtConnectStart:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    return-void
.end method

.method private checkGeofenceManagerInitialized()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getGeofenceEnterKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set6(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mTimeAtConnectStart:J

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->checkGeofenceManagerInitialized()V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mTimeAtConnectStart:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set3(Lcom/samsung/android/server/wifi/AutoWifiController;J)J

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    return v4

    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOnState;->resetWifiOffTransitionTime()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get27(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    return v5

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get11(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v2, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "geofence state is wrong, geofence "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "initialized"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get10(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap5(Lcom/samsung/android/server/wifi/AutoWifiController;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "netid"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get10(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v2, 0x190

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->report(ILandroid/os/Bundle;)V

    :cond_1
    return v5

    :cond_2
    const-string/jumbo v1, "not initialized"

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->checkGeofenceManagerInitialized()V

    const-string/jumbo v2, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "geofence "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiConnectedState;->mGeofenceInitialized:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "initialized"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v4

    :cond_5
    const-string/jumbo v1, "not initialized"

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method
