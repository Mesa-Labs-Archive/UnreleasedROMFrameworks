.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field private mSupDisconnectMsgCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->mSupDisconnectMsgCount:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;)V

    const-string/jumbo v1, "init.svc.wpa_supplicant"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get95(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v1

    const v2, 0x2006f

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SupplicantStoppingState: disableSupplicant  init.svc.wpa_supplicant="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get125(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->disableSupplicant()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->semSetConcurrentEnabled(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x201ff

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    return v2

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Supplicant connection received while stopping"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set63(Lcom/android/server/wifi/WifiStateMachine;I)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->mSupDisconnectMsgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->mSupDisconnectMsgCount:I

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->mSupDisconnectMsgCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Supplicant connection lost"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x1388

    const v1, 0x201ff

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set63(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20017 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x201ff -> :sswitch_1
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
