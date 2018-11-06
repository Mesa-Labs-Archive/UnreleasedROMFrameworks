.class Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidNonSwitchableState"
.end annotation


# instance fields
.field mCaptivePortalResult:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->mCaptivePortalResult:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public exit()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v10, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    return v8

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "connectivity check by GMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x21029

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return v9

    :cond_1
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x33

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "check Internet connectivity - chn"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v5, 0x2101f

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "check Internet connectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x21029

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v10, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNonSwitchable:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNonSwitchable:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    if-ne v3, v6, :cond_8

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x10

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    if-ne v3, v6, :cond_b

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v4

    const v5, 0x21029

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    return v9

    :cond_8
    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v6, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_9
    if-ne v3, v7, :cond_a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v6, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x9

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_b
    if-ne v3, v7, :cond_c

    const/4 v2, 0x2

    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailNonSwitchable:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailNonSwitchable:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v6

    const v7, 0x2100b

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v1, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v4, -0x1

    if-ne v1, v4, :cond_e

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v9

    :cond_e
    const/4 v4, 0x4

    if-eq v1, v4, :cond_f

    const/4 v4, 0x3

    if-ne v1, v4, :cond_10

    :cond_f
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "ICMP failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    if-lt v1, v4, :cond_11

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNonSwitchable:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNonSwitchable:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_11
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_12
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    if-ne v1, v10, :cond_13

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x10

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    if-ne v1, v10, :cond_15

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v9, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto/16 :goto_0

    :cond_13
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    if-nez v1, :cond_14

    const/16 v4, 0xa

    :goto_4
    iput v4, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_3

    :cond_14
    const/16 v4, 0xb

    goto :goto_4

    :cond_15
    if-nez v1, :cond_16

    const/4 v2, 0x2

    :goto_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailNonSwitchable:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailNonSwitchable:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v6

    const v7, 0x2100b

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x1

    goto :goto_5

    :sswitch_4
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "[Invalid] DELAYED_QUALITY_CHECK"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0xf

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v9, v9, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap32(Lcom/android/server/wifi/WifiConnectivityMonitor;IIZ)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x10

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v6, 0xbb8

    const v5, 0x2101f

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "No QC ongoing at EVENT_LINK_DETECTION_DISABLED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2100d -> :sswitch_1
        0x2101f -> :sswitch_4
        0x21023 -> :sswitch_3
        0x2102a -> :sswitch_2
        0x2104f -> :sswitch_5
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
