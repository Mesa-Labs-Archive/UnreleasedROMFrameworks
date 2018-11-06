.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftAPModeState"
.end annotation


# instance fields
.field mApInterface:Landroid/net/wifi/IApInterface;

.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->mApInterface:Landroid/net/wifi/IApInterface;

    return-void
.end method

.method private writeApConfigDueToStartFailure()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get0(Lcom/android/server/wifi/WifiStateMachinePrime;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get5(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    const v5, 0x20016

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "WifiStateMachinePrime"

    const-string/jumbo v3, "Entering SoftAPMode (idle)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->mApInterface:Landroid/net/wifi/IApInterface;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get5(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachinePrime;->-set0(Lcom/android/server/wifi/WifiStateMachinePrime;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get6(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/IWificond;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "WifiStateMachinePrime"

    const-string/jumbo v3, "Failed to get reference to wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->writeApConfigDueToStartFailure()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get6(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/IWificond;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/wifi/IWificond;->createApInterface()Landroid/net/wifi/IApInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->mApInterface:Landroid/net/wifi/IApInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->mApInterface:Landroid/net/wifi/IApInterface;

    if-nez v2, :cond_2

    const-string/jumbo v2, "WifiStateMachinePrime"

    const-string/jumbo v3, "Could not get IApInterface instance from wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->writeApConfigDueToStartFailure()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(I)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-get0(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    return-void
.end method

.method protected getInterface()Landroid/net/wifi/IApInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->mApInterface:Landroid/net/wifi/IApInterface;

    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "Received CMD_START_AP (now invalid message) - dropping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_1
    return v2

    :pswitch_2
    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "Failed to start SoftApMode.  Wait for next mode command."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "SoftApModeActiveState stopped.  Wait for next mode command."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
