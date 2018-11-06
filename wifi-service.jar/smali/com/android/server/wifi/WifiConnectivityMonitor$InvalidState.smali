.class Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidState"
.end annotation


# static fields
.field private static final MAX_POLL_COUNT:I = 0x3

.field private static final POLL_PERIOD:J = 0x1388L

.field private static final TIME_204_CHECK_INTERVAL:I = 0x7530


# instance fields
.field private mIs204CheckInterval:Z

.field private mLastRxGood:J

.field private pollCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->pollCount:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mIs204CheckInterval:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set46(Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set76(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const v3, 0x21012

    invoke-virtual {v1, v3, v2, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v2, "MODE_NO_CHECK transition to mValidState"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_3
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mIs204CheckInterval:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get94(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v4, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    :goto_1
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set34(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v3

    const v4, 0x2100b

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v2

    const v3, 0x21015

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get17(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v2, "start CHECK_CONNECTION_POLL"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->pollCount:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v2, 0x2106f

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    return-void

    :cond_a
    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "Skip sending poor detected for mNetworkRequested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get47(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get48(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get45(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, -0x53

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set76(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v1, 0x2106f

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestWakeLock(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    const/16 v32, 0x0

    return v32

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap39(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    :cond_0
    :goto_0
    const/16 v32, 0x1

    return v32

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get47(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v34

    const v35, 0x2100b

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    :cond_1
    :goto_1
    const/16 v32, 0x1

    return v32

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    xor-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    const/16 v34, 0x12e

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v33

    const v34, 0x21015

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "POOR_LINK_DETECT_sent"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get48(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNormalState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v34

    const v35, 0x2100b

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_4

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "Skip sending poor detected for mNetworkRequested"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    const/16 v32, 0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    xor-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    const/16 v34, 0x12e

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-eqz v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v33

    const v34, 0x21015

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get45(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidAggressiveState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v34

    const v35, 0x2100b

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get75(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_7

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "Skip sending poor detected for mNetworkRequested"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    const/4 v12, 0x1

    :goto_4
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set21(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get47(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get47(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const v33, 0x21006

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-nez v32, :cond_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-nez v32, :cond_d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    xor-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v32

    const v33, 0x25014

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v34

    const v35, 0x2100b

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get1()J

    move-result-wide v34

    invoke-virtual/range {v32 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-nez v32, :cond_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/wifi/RssiPacketCountInfo;

    iget v0, v13, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    move/from16 v25, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_f

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Fetch RSSI succeed, rssi="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get46(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    add-int v32, v32, v25

    div-int/lit8 v17, v32, 0x2

    const-string/jumbo v32, "wlan0"

    invoke-static/range {v32 .. v32}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v26

    iget v0, v13, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    move/from16 v30, v0

    iget v0, v13, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v31, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_10

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "[Invalid]Fetch RSSI succeed, rssi="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " mrssi="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " txbad="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " txgood="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " rxgood="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get7(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J

    move-result-wide v32

    sub-long v32, v18, v32

    const-wide/16 v34, 0x7d0

    cmp-long v32, v32, v34

    if-gez v32, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get61(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    sub-int v7, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get62(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    sub-int v9, v31, v32

    add-int v11, v7, v9

    if-lez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v32

    if-eqz v32, :cond_14

    int-to-double v0, v7

    move-wide/from16 v32, v0

    int-to-double v0, v11

    move-wide/from16 v34, v0

    div-double v14, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14, v15, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->update(DI)V

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_11

    new-instance v8, Ljava/text/DecimalFormat;

    const-string/jumbo v32, "#.##"

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " rssi="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " [I]Incremental loss="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " Current loss="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v34

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "% volume="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " linkspeed="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14, v15, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->updateLoss(IDI)V

    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J

    move-result-wide v32

    sub-long v28, v32, v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v34

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mLastPoorDetectedTime:J

    move-wide/from16 v34, v0

    sub-long v22, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v32, 0x7530

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v32, v22, v32

    if-lez v32, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    move/from16 v32, v0

    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set2(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->mEnhancedTargetRssi:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_13

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "restore target rssi"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-nez v32, :cond_15

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-eqz v32, :cond_15

    const-wide/16 v32, 0x7530

    cmp-long v32, v28, v32

    if-gez v32, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x7530

    add-long v34, v34, v36

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)J

    move-result-wide v32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    sub-long v28, v32, v34

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v32

    if-eqz v32, :cond_12

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_12

    new-instance v8, Ljava/text/DecimalFormat;

    const-string/jumbo v32, "#.##"

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " rssi="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " [I]Incremental loss=0/0 cumulative loss="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)D

    move-result-wide v34

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mLastRxGood:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-lez v32, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mIs204CheckInterval:Z

    move/from16 v32, v0

    xor-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mLastRxGood:J

    move-wide/from16 v32, v0

    sub-long v32, v26, v32

    move-wide/from16 v0, v32

    long-to-int v10, v0

    const/16 v32, 0xa

    move/from16 v0, v32

    if-lt v10, v0, :cond_17

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_16

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "Rx packets are visible"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v32

    const/16 v33, 0xb

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v33, 0x1

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const v33, 0x2100b

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mLastRxGood:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set50(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set51(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set34(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get61(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get62(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mLastRxGood:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap49(Lcom/android/server/wifi/WifiConnectivityMonitor;IIJ)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v32

    const v33, 0x21029

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mIs204CheckInterval:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x7530

    const v33, 0x21028

    invoke-virtual/range {v32 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v32

    move/from16 v0, v17

    move/from16 v1, v32

    if-lt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get41(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get2(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_17

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_1a

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Good link detected, rssi="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v32

    const/16 v33, 0xc

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v33, 0x1

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const v33, 0x2100b

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v32

    const v33, 0x21029

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mIs204CheckInterval:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x7530

    const v33, 0x21028

    invoke-virtual/range {v32 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_17

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Link is still poor, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1d
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-gtz v32, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get67(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set56(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_1e

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Max avoid time elapsed. "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get67(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " times"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    if-eqz v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get6(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v33

    add-int/lit8 v33, v33, -0x3

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set4(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;I)I

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get67(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_20

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "Max count elapsed."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-eqz v32, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v32

    const/16 v33, 0xd

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v33, 0x1

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const v33, 0x2100b

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_7

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v32

    move/from16 v0, v25

    move/from16 v1, v32

    if-lt v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get41(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get2(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_17

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_23

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Good link detected, rssi="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v32

    const/16 v33, 0xc

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const v33, 0x2100b

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set56(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    goto/16 :goto_7

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_17

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Link is still poor, time left="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :sswitch_5
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_0

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "RSSI_FETCH_FAILED"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v32

    if-eqz v32, :cond_25

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "QC_RESET_204_CHECK_INTERVAL"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->mIs204CheckInterval:Z

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-nez v32, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v16

    const/16 v32, -0x42

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_26

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get97()Z

    move-result v32

    if-eqz v32, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "start QC with screen On. rssi : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set80(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap40(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->requestQualityCheck()V

    goto/16 :goto_0

    :cond_28
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set80(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set30(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v34

    const v35, 0x2100b

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-eqz v32, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const v33, 0x2100b

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    :cond_29
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v32

    if-eqz v32, :cond_0

    const-string/jumbo v32, "WifiConnectivityMonitor"

    const-string/jumbo v33, "EVENT_SCREEN_OFF INVALID state, stopTCPMonitoring"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v32

    if-eqz v32, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get17(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get4()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->pollCount:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->pollCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v32

    const/16 v33, 0x4

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v32

    const v33, 0x21029

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get17(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_30

    if-nez v24, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v32

    const-wide/16 v34, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v32

    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get107(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_9

    :cond_2d
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get108(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$WaitAuthCompleteState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->pollCount:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const v33, 0x2106f

    const-wide/16 v34, 0x1388

    invoke-virtual/range {v32 .. v35}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "poll count expired: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->pollCount:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get6()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set11(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Incorrect mCouldNotIdentifiedCaptivePortal: false"

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_34

    const/16 v20, 0x1

    :goto_a
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-nez v20, :cond_32

    if-eqz v6, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get8(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_31

    const-string/jumbo v32, "WifiConnectivityMonitor"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "BssidStatistics removed - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x9

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get8(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/util/LruCache;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, -0x1

    invoke-static/range {v32 .. v34}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_32
    if-nez v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get60(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v32

    if-eqz v32, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :cond_34
    const/16 v20, 0x0

    goto/16 :goto_a

    :sswitch_c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v32

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set66(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_1
        0x21008 -> :sswitch_7
        0x21009 -> :sswitch_8
        0x2100b -> :sswitch_3
        0x2100e -> :sswitch_2
        0x21028 -> :sswitch_6
        0x2102a -> :sswitch_a
        0x2103f -> :sswitch_c
        0x2104b -> :sswitch_b
        0x2106f -> :sswitch_9
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_5
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
