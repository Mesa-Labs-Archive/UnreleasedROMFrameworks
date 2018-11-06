.class Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidAggressiveState"
.end annotation


# instance fields
.field private mAggInvalidPassed:I

.field private mGoodTargetCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mAggInvalidPassed:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap25(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->getName()Ljava/lang/String;

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

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    return v9

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    return v9

    :cond_0
    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "connectivity check by GMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v10, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    :cond_1
    :goto_0
    return v10

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    iput v2, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xe

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v3, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    if-ne v0, v10, :cond_2

    iput v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mAggInvalidPassed:I

    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "WifiConnectivityMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v10

    :cond_4
    if-ne v2, v5, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xf

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_5
    const/4 v6, 0x5

    if-ne v2, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0x10

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xb

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_7
    if-lt v2, v3, :cond_e

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iput v9, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRetry:I

    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mAggInvalidPassed:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mAggInvalidPassed:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v7

    if-eqz v7, :cond_8

    move v4, v5

    :cond_8
    if-ge v6, v4, :cond_b

    if-ge v0, v5, :cond_b

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AGG_MODE[LOSS] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " more check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x6

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    :cond_a
    :goto_2
    return v10

    :cond_b
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "@L - PASSED!!!"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "AGG_MODE[LOSS] - pass"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVAGG:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVAGG:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    iput v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mAggInvalidPassed:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get6(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-lt v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set4(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const/4 v6, 0x5

    if-ne v2, v6, :cond_f

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    return v10

    :cond_f
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v6

    if-nez v6, :cond_11

    if-ge v0, v5, :cond_11

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mAggInvalidPassed:I

    sub-int v5, v0, v5

    if-ge v5, v4, :cond_11

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AGG_MODE[Verifying] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " more check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonAGG:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonAGG:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "AGG_MODE[Verifying] - fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iput v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mGoodTargetCount:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    if-eqz v4, :cond_13

    if-nez v2, :cond_15

    const/4 v1, 0x2

    :goto_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    :cond_13
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v5

    const v6, 0x21015

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_14
    :goto_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v6

    const v7, 0x2100b

    invoke-virtual {v5, v7, v6, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iput v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->mAggInvalidPassed:I

    goto/16 :goto_2

    :cond_15
    const/4 v1, 0x1

    goto :goto_3

    :cond_16
    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "Skip poor link detected because of multi network feature"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_17
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "Roamed Network is verified as poor."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set9(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v5

    const v6, 0x21015

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_4

    :cond_18
    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "Skip sending poor detected for mNetworkRequested"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "[Invalid] DELAYED_QUALITY_CHECK"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0xf

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mCancelledEnhancedQCId:I

    if-lez v4, :cond_1a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mCancelledEnhancedQCId:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSetsVerifyingState:I

    if-gt v4, v5, :cond_1a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mCancelledEnhancedQCId:I

    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto/16 :goto_0

    :cond_1a
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v10, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x10

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v6, 0xbb8

    const v5, 0x2101f

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_1b
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "No QC ongoing ata EVENT_LINK_DETECTION_DISABLED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2101f -> :sswitch_2
        0x21023 -> :sswitch_1
        0x2104f -> :sswitch_3
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
