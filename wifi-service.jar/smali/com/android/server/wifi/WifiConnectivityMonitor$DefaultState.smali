.class Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap51(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap35(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap36(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap34(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unhandled message "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " in state "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    const/16 v21, 0x1

    return v21

    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Async - Full connection with NetworkMonitor established"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set60(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    :goto_1
    const/16 v21, 0x1

    return v21

    :cond_1
    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Async - Full connection failure, error = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set60(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Async - Send failed, client connection lost"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get72(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Messenger;

    move-result-object v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get72(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Messenger;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set60(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set61(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_3
    :goto_3
    const/16 v21, 0x1

    return v21

    :cond_4
    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Async - Client connection lost reason: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Async - Disconnection message from different src"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :sswitch_3
    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Async - Half connection with NetworkMonitor established"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set60(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set61(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;

    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set26(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_6
    const/16 v21, 0x1

    return v21

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get71(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v21

    if-nez v21, :cond_7

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Ignore Connected msg from NM"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    return v21

    :cond_7
    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Connected - Move to CaptivePortalState"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v21

    const v22, 0x21061

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Stop scan. SNS initial connection check is ongoing"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get12(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    const/16 v21, 0x1

    return v21

    :sswitch_5
    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Disconnected"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set56(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set60(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set61(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Disconnected - move to NotConnectedState"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_8
    const/16 v21, 0x1

    return v21

    :sswitch_6
    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "EVENT_NETWORK_STATE_CHANGE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    const-string/jumbo v21, "networkInfo"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_9

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Network state change "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v21

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string/jumbo v21, "wifiInfo"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v21

    if-eqz v21, :cond_f

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    :cond_b
    :goto_4
    const/16 v21, 0x1

    return v21

    :cond_c
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_a

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v23, v0

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v21

    :goto_5
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v21

    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_4

    :cond_d
    const/16 v21, 0x0

    move-object/from16 v22, v21

    goto :goto_5

    :cond_e
    const/16 v21, -0x1

    goto :goto_6

    :cond_f
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v23

    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_4

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_10

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Wi-Fi Radio state change : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    if-eqz v7, :cond_0

    iget v14, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get8(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_11
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get9(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v14, :cond_11

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "BssidStatistics removed - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get8(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v21

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap16(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set23(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/LinkProperties;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set53(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap54(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v8, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap4(Lcom/android/server/wifi/WifiConnectivityMonitor;II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v21

    const-string/jumbo v22, "WFSN"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v21

    const-string/jumbo v22, "WFSN"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_12

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "EVENT_ROAM_TIMEOUT"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :sswitch_10
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_13

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "EVENT_DHCP_TIMEOUT"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set38(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_14

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "WWSM_FORGET_NETWORK, netId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get82(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v21

    move/from16 v0, v21

    if-ne v9, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_15

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "EVENT_INET_CONDITION_ACTION, NetworkType : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", valid : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/16 v21, 0x1

    return v21

    :sswitch_13
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_16

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "EVENT_PARALLEL_CP_CHECK_RESULT"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/16 v21, 0x1

    return v21

    :sswitch_14
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_17

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "EVENT_SCAN_STARTED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/16 v21, 0x1

    return v21

    :sswitch_15
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_18

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "EVENT_SCAN_COMPLETE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v21, 0x1

    return v21

    :sswitch_16
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v21, "UID"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string/jumbo v21, "requestID"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_19

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MultiNetwork request"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get32(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get74()Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isRelatedWithSystem(I)Z

    move-result v21

    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap8(Lcom/android/server/wifi/WifiConnectivityMonitor;I)Z

    move-result v21

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_1a

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "New MultiNetwork request "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "size = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " + 1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const v23, 0x21006

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->multiNetworkDump(III)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set63(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1d
    :goto_8
    monitor-exit v22

    goto/16 :goto_0

    :cond_1e
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v21

    if-eqz v21, :cond_1f

    const-string/jumbo v21, "WifiConnectivityMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Del MultiNetwork request "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "size = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " - 1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->multiNetworkDump(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set63(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v21

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap14(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    :sswitch_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    if-nez v21, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get9(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Message;

    move-result-object v21

    if-eqz v21, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get12(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get9(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set6(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;)Landroid/os/Message;

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get92(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set77(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get9(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Message;

    move-result-object v21

    if-eqz v21, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get9(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Message;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get9(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set6(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;)Landroid/os/Message;

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get92(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set77(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get104(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    const-string/jumbo v21, "WifiConnectivityMonitor"

    const-string/jumbo v22, "Rematch completed - mode no check"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DefaultState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11001 -> :sswitch_3
        0x11004 -> :sswitch_2
        0x200ea -> :sswitch_d
        0x21002 -> :sswitch_6
        0x21003 -> :sswitch_c
        0x21004 -> :sswitch_0
        0x21005 -> :sswitch_9
        0x21006 -> :sswitch_b
        0x21008 -> :sswitch_7
        0x21009 -> :sswitch_8
        0x2103d -> :sswitch_14
        0x2103e -> :sswitch_15
        0x2104c -> :sswitch_a
        0x2104d -> :sswitch_12
        0x2104e -> :sswitch_13
        0x21051 -> :sswitch_f
        0x21052 -> :sswitch_10
        0x21070 -> :sswitch_e
        0x25064 -> :sswitch_4
        0x25065 -> :sswitch_5
        0x2506a -> :sswitch_11
        0x2506b -> :sswitch_16
        0x2506c -> :sswitch_17
    .end sparse-switch
.end method
