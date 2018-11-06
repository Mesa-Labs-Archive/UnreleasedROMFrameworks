.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get5(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-set2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Landroid/net/wifi/IWificond;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "RttService"

    const-string/jumbo v3, "Failed to get wificond binder handler"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    new-instance v3, Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    invoke-static {v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-set1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;)Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Landroid/net/wifi/IWificond;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-get1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/wifi/IWificond;->RegisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Landroid/net/wifi/IWificond;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/wifi/IWificond;->GetClientInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/net/wifi/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IClientInterface;

    move-result-object v2

    const v4, 0x27304

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Landroid/net/wifi/IWificond;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-get1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWificond;->UnregisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-set1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;)Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x4

    const/4 v8, 0x0

    const-string/jumbo v5, "RttService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EnabledState got"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v5

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    return v10

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_0
    :sswitch_1
    const/4 v5, 0x1

    return v5

    :sswitch_2
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->deferMessage(Landroid/os/Message;)V

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v6, "No params"

    invoke-virtual {v5, p1, v9, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v5, v3, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v5, v5

    if-eqz v5, :cond_1

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v6, "Unspecified"

    invoke-virtual {v5, p1, v9, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    const v6, 0x27302

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto :goto_0

    :sswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v5, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_4

    const-string/jumbo v5, "RttService"

    const-string/jumbo v6, "Cancelling not-yet-scheduled RTT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v6, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    goto/16 :goto_0

    :sswitch_5
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get6(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    const/16 v7, 0x258

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    const-string/jumbo v5, "RttService"

    const-string/jumbo v6, "mWifiNative.enableRttResponder called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get6(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addResponderRequest(I)V

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResponderEnableSucceed(ILandroid/net/wifi/RttManager$ResponderConfig;)V

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "RttService"

    const-string/jumbo v6, "enable responder failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResponderEnableFailed(II)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Landroid/net/wifi/IClientInterface;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/IClientInterface;

    if-ne v6, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-set0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/net/wifi/IClientInterface;)Landroid/net/wifi/IClientInterface;

    goto/16 :goto_0

    :sswitch_7
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/IClientInterface;

    invoke-static {v6, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-set0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/net/wifi/IClientInterface;)Landroid/net/wifi/IClientInterface;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_3
        0x27201 -> :sswitch_4
        0x27205 -> :sswitch_5
        0x27206 -> :sswitch_1
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_2
        0x27304 -> :sswitch_7
        0x27305 -> :sswitch_6
    .end sparse-switch
.end method
