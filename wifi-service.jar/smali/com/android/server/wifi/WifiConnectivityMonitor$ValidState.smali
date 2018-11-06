.class Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidState"
.end annotation


# instance fields
.field private mCheckFastDisconnection:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->mCheckFastDisconnection:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/16 v5, 0x12e

    invoke-static {v4, v5, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap57(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set80(Z)Z

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set46(Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v5

    const v6, 0x2100b

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v1

    const v4, 0x21033

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v1

    const v4, 0x21037

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v8, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    :goto_1
    invoke-static {v4, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set83(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set68(Lcom/android/server/wifi/WifiConnectivityMonitor;D)D

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-ne v1, v8, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const v5, 0x21012

    invoke-virtual {v1, v5, v4, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get5()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get104(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get106(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get102(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, -0x40

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public exit()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v0

    const v1, 0x21034

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set27(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_0

    const/16 v28, 0x0

    return v28

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    :cond_0
    :goto_0
    const/16 v28, 0x1

    return v28

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v30

    const v31, 0x2100b

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v28

    const v29, 0x21033

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v28

    const v29, 0x21037

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v28, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get106(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 v28, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get102(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v28

    const v29, 0x21034

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get104(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNoCheckState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set21(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const v29, 0x21006

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v28

    if-nez v28, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v28

    const v29, 0x25014

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    :cond_a
    const-wide/16 v24, 0x1f4

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v30

    const v31, 0x2100b

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get1()J

    move-result-wide v24

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v28

    if-eqz v28, :cond_0

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "msg.arg1 != mRssiFetchToken"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v28

    if-nez v28, :cond_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/wifi/RssiPacketCountInfo;

    iget v0, v12, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get103(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    add-int v28, v28, v21

    div-int/lit8 v13, v28, 0x2

    iget v0, v12, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    move/from16 v26, v0

    iget v0, v12, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v27, v0

    const-string/jumbo v28, "wlan0"

    invoke-static/range {v28 .. v28}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->mCheckFastDisconnection:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    const/16 v28, 0x0

    :goto_3
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->mCheckFastDisconnection:I

    :goto_4
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_f

    const-string/jumbo v29, "WifiConnectivityMonitor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->mCheckFastDisconnection:I

    move/from16 v28, v0

    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    const-string/jumbo v28, "[FD]"

    :goto_5
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v30, "Fetch RSSI succeed, rssi="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v30, " mrssi="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v30, " txbad="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v30, " txgood="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-gt v13, v0, :cond_14

    const-string/jumbo v28, "WifiConnectivityMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "RSSI is under than level 0 - rssi:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v30

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mWeakSignalQCStartTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    const-wide/16 v30, 0x3e8

    div-long v14, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v28

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mWeakSignalQCStartTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v28, v14, v28

    if-lez v28, :cond_14

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    const/16 v29, 0x15

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mWeakSignalQCStartTime:J

    goto/16 :goto_0

    :cond_11
    const/16 v28, 0x1

    goto/16 :goto_3

    :cond_12
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->mCheckFastDisconnection:I

    goto/16 :goto_4

    :cond_13
    const-string/jumbo v28, ""

    goto/16 :goto_5

    :cond_14
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get26()Z

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->fastDisconnectUpdateRssi(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->fastDisconnectEvaluate()Z

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    const/16 v29, 0xd

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v29

    const/16 v30, 0x2

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINonSwitchable:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINonSwitchable:I

    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-nez v28, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->mCheckFastDisconnection:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get7(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J

    move-result-wide v28

    sub-long v28, v18, v28

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get1()J

    move-result-wide v30

    const-wide/16 v32, 0x2

    mul-long v30, v30, v32

    cmp-long v28, v28, v30

    if-gez v28, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v28

    if-nez v28, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v30, v0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;D)V

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set20(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get61(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    sub-int v6, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get62(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    sub-int v8, v27, v28

    add-int v9, v6, v8

    if-lez v9, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v28

    if-eqz v28, :cond_4d

    int-to-double v0, v6

    move-wide/from16 v28, v0

    int-to-double v0, v9

    move-wide/from16 v30, v0

    div-double v16, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->update(DI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v13, v1, v2, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->updateLoss(IDI)V

    const-string/jumbo v10, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-eqz v28, :cond_23

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_18

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - Scanning"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set81(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    :cond_19
    :goto_8
    new-instance v7, Ljava/text/DecimalFormat;

    const-string/jumbo v28, "#.##"

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " rssi="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " [V]Incremental loss="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " cumulative loss="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v30

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "% loss="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v16

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "% volume="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " mLinkLossOccurred="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " linkspeed="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_1a

    const-string/jumbo v28, "WifiConnectivityMonitor"

    move-object/from16 v0, v28

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_1e

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "@L - dbad : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " loss : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " mLinkLossOccurred : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_1b

    const-string/jumbo v28, "WifiConnectivityMonitor"

    move-object/from16 v0, v28

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get98(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "@L - Staying under last Poor link, r="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    :cond_1c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_1d

    const-string/jumbo v28, "WifiConnectivityMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "@L - Staying under last Poor link, r="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set81(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    const/16 v29, 0x16

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const-wide/16 v30, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set68(Lcom/android/server/wifi/WifiConnectivityMonitor;D)D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v29

    const/16 v30, 0x2

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-nez v28, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_1e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set50(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set51(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set83(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get61(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get62(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap49(Lcom/android/server/wifi/WifiConnectivityMonitor;IIJ)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINormal:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINormal:I

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v29

    const v30, 0x2105f

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_7

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get98(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_8

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get44(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-nez v28, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v28

    if-eqz v28, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v28

    const/16 v29, -0x46

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_27

    :cond_25
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_26

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - In Agg good Rx state"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v28

    const/16 v29, -0x40

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get4(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v28

    if-gez v28, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get4(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v28

    move/from16 v0, v28

    if-gt v0, v13, :cond_2c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_28

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - beyond Last good rssi"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-lez v6, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    if-nez v28, :cond_2a

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_29

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - loss begin occurring"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set68(Lcom/android/server/wifi/WifiConnectivityMonitor;D)D

    goto/16 :goto_8

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const-wide/16 v30, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set68(Lcom/android/server/wifi/WifiConnectivityMonitor;D)D

    goto/16 :goto_8

    :cond_2c
    const/16 v28, 0x1e

    move/from16 v0, v28

    if-ge v6, v0, :cond_2d

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpl-double v28, v16, v28

    if-ltz v28, :cond_31

    :cond_2d
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_2e

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - (dbad >= 30) || (loss >= 0.5)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpl-double v28, v16, v28

    if-ltz v28, :cond_2f

    const/16 v28, 0x5

    move/from16 v0, v28

    if-lt v6, v0, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_2f

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - (loss >= 0.5) && (dbad >= 5)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_b
    if-nez v6, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get65(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_19

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_30

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - loss has gone"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const-wide/16 v30, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set68(Lcom/android/server/wifi/WifiConnectivityMonitor;D)D

    goto/16 :goto_8

    :cond_31
    const/16 v28, 0x4

    move/from16 v0, v28

    if-le v6, v0, :cond_33

    const-wide v28, 0x3fb999999999999aL    # 0.1

    cmpl-double v28, v16, v28

    if-ltz v28, :cond_33

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_32

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - (dbad > 4)&&(loss >= 0.1)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto :goto_b

    :cond_33
    const/16 v28, -0x41

    move/from16 v0, v28

    if-ge v13, v0, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v28

    if-eqz v28, :cond_36

    const/16 v28, 0x4

    move/from16 v0, v28

    if-gt v6, v0, :cond_34

    const-wide v28, 0x3fb999999999999aL    # 0.1

    cmpl-double v28, v16, v28

    if-ltz v28, :cond_36

    :cond_34
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_35

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - rssi < -65) && (mWifiInfo.is24GHz()) && ((dbad > 4)||(loss >= 0.1))"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_b

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_38

    const-wide v28, 0x3fb999999999999aL    # 0.1

    cmpl-double v28, v16, v28

    if-ltz v28, :cond_38

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_37

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - (mWifiInfo.getLinkSpeed() <= 6) && (loss >= 0.1)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_b

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get65(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    if-nez v28, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get84(Lcom/android/server/wifi/WifiConnectivityMonitor;)D

    move-result-wide v28

    cmpl-double v28, v16, v28

    if-lez v28, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get84(Lcom/android/server/wifi/WifiConnectivityMonitor;)D

    move-result-wide v28

    const-wide v30, 0x3fb999999999999aL    # 0.1

    cmpl-double v28, v28, v30

    if-ltz v28, :cond_3a

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_39

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - loss increasing"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_b

    :cond_3a
    if-lez v6, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    if-nez v28, :cond_3c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_3b

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - loss begin occurring"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get63(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set52(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_b

    :cond_3c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_2f

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "@L - loss still can be seen, keep the value!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set54(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set68(Lcom/android/server/wifi/WifiConnectivityMonitor;D)D

    goto/16 :goto_8

    :cond_3e
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v28

    const-string/jumbo v29, "HIT @L!!!"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    const/16 v29, 0x18

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    goto/16 :goto_9

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v29

    const v30, 0x2105f

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_a

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v28

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    cmpl-double v28, v28, v30

    if-lez v28, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v28

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get2()D

    move-result-wide v30

    cmpl-double v28, v28, v30

    if-lez v28, :cond_4c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_42

    const-string/jumbo v28, "WifiConnectivityMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Poor link for link sample count, rssi="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->readOngoingId()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    const/16 v29, 0xc

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get66(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-eqz v28, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_a

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    const/16 v29, 0x19

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_49

    const/16 v28, -0x50

    move/from16 v0, v28

    if-ge v13, v0, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v29

    const/16 v30, 0x2

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v28

    const/16 v29, 0x1a

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v28

    if-nez v28, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINormal:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINormal:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_44
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_a

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v29

    const v30, 0x2105f

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto :goto_c

    :cond_46
    const/16 v28, -0x4b

    move/from16 v0, v28

    if-lt v13, v0, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_44

    :cond_47
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_48

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "from LinkMonitoring"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set56(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto/16 :goto_c

    :cond_49
    const/16 v28, -0x4b

    move/from16 v0, v28

    if-lt v13, v0, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_44

    :cond_4a
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_4b

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "from LinkMonitoring"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set56(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap40(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_c

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_a

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v28

    if-eqz v28, :cond_1e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_1e

    new-instance v7, Ljava/text/DecimalFormat;

    const-string/jumbo v28, "#.##"

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v28, "WifiConnectivityMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " rssi="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " [V]Incremental loss=0/0 cumulative loss="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v30

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v28

    if-eqz v28, :cond_0

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "RSSI_FETCH_FAILED"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set80(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v30

    const v31, 0x2100b

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v28

    const v29, 0x21033

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    const v29, 0x2100b

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v28

    if-eqz v28, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v28

    const v29, 0x21034

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v28

    if-eqz v28, :cond_0

    const-string/jumbo v28, "WifiConnectivityMonitor"

    const-string/jumbo v29, "EVENT_SCREEN_OFF, stopTCPMonitoring"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x200ef -> :sswitch_5
        0x21006 -> :sswitch_1
        0x21008 -> :sswitch_7
        0x21009 -> :sswitch_8
        0x2100b -> :sswitch_3
        0x2100e -> :sswitch_2
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_6
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
