.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-get8(Lcom/android/server/wifi/SoftApManager;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v1, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-set0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/StateMachineDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/StateMachineDeathRecipient;->unlinkToDeath()V

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->unregisterObserver()V

    const-string/jumbo v0, "SoftApManager"

    const-string/jumbo v1, "Idle State enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0xe

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v4, p1, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return v10

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v5, 0xc

    invoke-static {v4, v5, v8}, Lcom/android/server/wifi/SoftApManager;->-wrap7(Lcom/android/server/wifi/SoftApManager;II)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/android/server/wifi/SoftApManager;->-set2(Lcom/android/server/wifi/SoftApManager;I)I

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/StateMachineDeathRecipient;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->-get1(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/IApInterface;

    move-result-object v5

    invoke-interface {v5}, Landroid/net/wifi/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/StateMachineDeathRecipient;->linkToDeath(Landroid/os/IBinder;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/StateMachineDeathRecipient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/StateMachineDeathRecipient;->unlinkToDeath()V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v9, v8}, Lcom/android/server/wifi/SoftApManager;->-wrap7(Lcom/android/server/wifi/SoftApManager;II)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get14(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v8}, Lcom/android/server/wifi/SoftApManager;->-set2(Lcom/android/server/wifi/SoftApManager;I)I

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    new-instance v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7}, Lcom/android/server/wifi/SoftApManager;->-get1(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/IApInterface;

    move-result-object v7

    invoke-interface {v7}, Landroid/net/wifi/IApInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-set0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get8(Lcom/android/server/wifi/SoftApManager;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v5, v4}, Lcom/android/server/wifi/SoftApManager;->-wrap0(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    if-ne v3, v10, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/StateMachineDeathRecipient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/StateMachineDeathRecipient;->unlinkToDeath()V

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->unregisterObserver()V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v9, v1}, Lcom/android/server/wifi/SoftApManager;->-wrap7(Lcom/android/server/wifi/SoftApManager;II)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get14(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4, v8, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v1}, Lcom/android/server/wifi/SoftApManager;->-set2(Lcom/android/server/wifi/SoftApManager;I)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/StateMachineDeathRecipient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/StateMachineDeathRecipient;->unlinkToDeath()V

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->unregisterObserver()V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v9, v8}, Lcom/android/server/wifi/SoftApManager;->-wrap7(Lcom/android/server/wifi/SoftApManager;II)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get14(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4, v8}, Lcom/android/server/wifi/SoftApManager;->-set2(Lcom/android/server/wifi/SoftApManager;I)I

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get13(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85002

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85001

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85003

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85004

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85005

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85006

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85007

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85008

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85009

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x8500a

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x8500b

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x8500d

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x8500e

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x8500f

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85010

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->-get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x85011

    invoke-virtual {v4, v2, v6, v5}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get3(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    const-string/jumbo v4, "SoftApManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
