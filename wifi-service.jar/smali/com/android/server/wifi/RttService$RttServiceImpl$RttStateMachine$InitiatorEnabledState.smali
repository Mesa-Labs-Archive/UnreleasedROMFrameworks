.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitiatorEnabledState"
.end annotation


# instance fields
.field mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const v5, 0x27302

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RequestPendingState got"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    return v4

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get6(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    const-string/jumbo v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abort key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    iput-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new mOutstandingRequest.key is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "RttService"

    const-string/jumbo v1, "CMD_ISSUE_NEXT_REQUEST: mOutstandingRequest =null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current mOutstandingRequest.key is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "RttService"

    const-string/jumbo v1, "Ignoring CMD_ISSUE_NEXT_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received an RTT response from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/net/wifi/RttManager$RttResult;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResult(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;[Landroid/net/wifi/RttManager$RttResult;)V

    iput-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancelling ongoing RTT of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get6(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    iput-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_4
    return v4

    :sswitch_data_0
    .sparse-switch
        0x27201 -> :sswitch_3
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_1
        0x27303 -> :sswitch_2
    .end sparse-switch
.end method
