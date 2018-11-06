.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;
.super Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftAPModeActiveState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "WifiStateMachinePrime"

    const-string/jumbo v2, "Entering SoftApModeActiveState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get0(Lcom/android/server/wifi/WifiStateMachinePrime;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiStateMachinePrime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Passing config to SoftApManager! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get5(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get4(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/INetworkManagementService;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;

    invoke-direct {v4, p0, v5}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-get1(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->getInterface()Landroid/net/wifi/IApInterface;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/android/server/wifi/WifiInjector;->makeSoftApManager(Landroid/os/INetworkManagementService;Lcom/android/server/wifi/SoftApManager$Listener;Landroid/net/wifi/IApInterface;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->mActiveModeManager:Lcom/android/server/wifi/ActiveModeManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->mActiveModeManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-interface {v1}, Lcom/android/server/wifi/ActiveModeManager;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "Received CMD_START_AP when active - invalid message - drop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->mActiveModeManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-interface {v0}, Lcom/android/server/wifi/ActiveModeManager;->stop()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "Failed to start SoftApMode.  Return to SoftApMode (inactive)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-get1(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "SoftApModeActiveState stopped.  Return to SoftApMode (inactive)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-get1(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
