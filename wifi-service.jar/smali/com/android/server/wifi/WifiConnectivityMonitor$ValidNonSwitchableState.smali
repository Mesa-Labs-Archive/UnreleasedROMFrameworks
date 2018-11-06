.class Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidNonSwitchableState"
.end annotation


# instance fields
.field private final FREQUENT_CHECK_MIN_INTERVAL:I

.field mCheckId:I

.field private mLastValidTime:J

.field public mMinQualifiedRssi:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mLastValidTime:J

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    const v0, 0xea60

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->FREQUENT_CHECK_MIN_INTERVAL:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mLastValidTime:J

    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    if-le v1, v0, :cond_1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_2
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

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    const/4 v8, 0x0

    return v8

    :sswitch_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "connectivity check by GMS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v8

    const v9, 0x21029

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    :sswitch_1
    const/4 v8, 0x1

    return v8

    :cond_1
    :sswitch_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    if-lez v8, :cond_2

    const/4 v8, 0x1

    return v8

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mLastValidTime:J

    sub-long v6, v8, v10

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    if-gt v3, v0, :cond_3

    const-wide/32 v8, 0xea60

    cmp-long v8, v6, v8

    if-lez v8, :cond_7

    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "check Internet connectivity - chn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "check Internet connectivity"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v8

    const v9, 0x21029

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    const v10, 0x2100a

    invoke-virtual {v8, v10, v3, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(III)V

    goto/16 :goto_0

    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_8

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_8
    if-nez v5, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mLastValidTime:J

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    if-ge v8, v0, :cond_9

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    :cond_9
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v10

    const v11, 0x2100b

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v10, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get5()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x6

    if-ne v5, v8, :cond_b

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    const/16 v9, 0x10

    iput v9, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const/4 v8, 0x6

    if-ne v5, v8, :cond_e

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v8

    const v9, 0x21029

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    const/4 v8, 0x1

    return v8

    :cond_b
    const/4 v8, 0x3

    if-ne v5, v8, :cond_c

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    const/4 v9, 0x6

    iput v9, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_c
    const/4 v8, 0x2

    if-ne v5, v8, :cond_d

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    const/4 v9, 0x6

    iput v9, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_d
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    const/16 v9, 0x9

    iput v9, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_e
    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v8

    iget v9, v8, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNonSwitchable:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNonSwitchable:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "check Internet connectivity one more"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v8

    const v9, 0x21029

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_10
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    const/4 v8, 0x2

    if-ne v5, v8, :cond_11

    const/4 v4, 0x2

    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get6()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    iput v2, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string/jumbo v8, "WifiConnectivityMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v8, -0x1

    if-ne v2, v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 v8, 0x1

    return v8

    :cond_13
    const/4 v8, 0x4

    if-eq v2, v8, :cond_14

    const/4 v8, 0x3

    if-ne v2, v8, :cond_15

    :cond_14
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_15

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "ICMP failed!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    if-lt v2, v8, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mLastValidTime:J

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    if-ge v8, v0, :cond_16

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    :cond_16
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v10

    const v11, 0x2100b

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v10, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get5()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    if-ne v2, v8, :cond_18

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    const/16 v9, 0x10

    iput v9, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const/4 v8, 0x5

    if-ne v2, v8, :cond_1a

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    const/4 v8, 0x1

    return v8

    :cond_18
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v9

    if-nez v2, :cond_19

    const/16 v8, 0xa

    :goto_4
    iput v8, v9, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_3

    :cond_19
    const/16 v8, 0xb

    goto :goto_4

    :cond_1a
    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1c

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string/jumbo v8, "WifiConnectivityMonitor"

    const-string/jumbo v9, "check Internet connectivity one more"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v8

    iget v9, v8, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNonSwitchable:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNonSwitchable:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto/16 :goto_0

    :cond_1c
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_1d

    const/4 v4, 0x2

    :goto_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get6()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_1d
    const/4 v4, 0x1

    goto :goto_5

    :sswitch_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mCheckId:I

    const/4 v8, 0x0

    return v8

    :sswitch_data_0
    .sparse-switch
        0x21009 -> :sswitch_5
        0x2100a -> :sswitch_1
        0x2100d -> :sswitch_2
        0x21023 -> :sswitch_4
        0x2102a -> :sswitch_3
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
