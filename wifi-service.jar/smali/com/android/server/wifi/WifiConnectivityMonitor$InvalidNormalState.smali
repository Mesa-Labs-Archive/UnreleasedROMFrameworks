.class Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidNormalState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

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

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap25(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->getName()Ljava/lang/String;

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
    .locals 12

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/4 v9, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v6, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    return v11

    :sswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-nez v6, :cond_0

    return v11

    :cond_0
    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "connectivity check by GMS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v10, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    :cond_1
    :goto_0
    return v10

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    iput v4, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xe

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v5, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesVerifyingState:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v6

    if-eqz v6, :cond_2

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

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v10

    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    iput v8, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_4
    if-ne v4, v9, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xb

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_6
    if-lt v4, v5, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxThreshold:I

    if-lt v4, v6, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const v9, 0x21038

    invoke-virtual {v7, v9, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendMessage(Landroid/os/Message;)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v6

    iget v7, v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNormal:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNormal:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_3
    return v10

    :cond_7
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    if-ne v4, v9, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    return v10

    :cond_9
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSetsVerifyingState:I

    if-ge v0, v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mEnhancedQCEnabled:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v6

    iget v7, v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonNormal:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonNormal:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v6, v7, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    return v10

    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    if-nez v4, :cond_c

    const/4 v1, 0x2

    :goto_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get46(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    invoke-virtual {v6, v7, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v7

    const v8, 0x21015

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_b
    :goto_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v8

    const v9, 0x2100b

    invoke-virtual {v7, v9, v8, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x1

    goto :goto_4

    :cond_d
    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "Skip poor link detected because of multi network feature"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "Roamed Network is verified as poor."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set9(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v7

    const v8, 0x21015

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_5

    :cond_f
    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "Skip sending poor detected for mNetworkRequested"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v6

    if-eqz v6, :cond_10

    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "[Invalid] DELAYED_QUALITY_CHECK"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    iput v8, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mCancelledEnhancedQCId:I

    if-lez v6, :cond_11

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mCancelledEnhancedQCId:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSetsVerifyingState:I

    if-gt v6, v7, :cond_11

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mCancelledEnhancedQCId:I

    invoke-static {v6, v7, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto/16 :goto_0

    :cond_11
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v10, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v8, 0xbb8

    const v7, 0x2101f

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "No QC ongoing ata EVENT_LINK_DETECTION_DISABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
