.class Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set63(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get74()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set62(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set62(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/16 v2, 0x12e

    invoke-static {v1, v2, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap42(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set21(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set59(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/Network;)Landroid/net/Network;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set41(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set37(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set10(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set28(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set46(Z)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x21062

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get20(Lcom/android/server/wifi/WifiConnectivityMonitor;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v0

    const-string/jumbo v1, "WFCP"

    const-string/jumbo v2, "CRes"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get24(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get20(Lcom/android/server/wifi/WifiConnectivityMonitor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set12(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v0

    const-string/jumbo v1, "WFCP"

    const-string/jumbo v2, "CDur"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get19(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v0

    const-string/jumbo v1, "WFCP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v0

    const-string/jumbo v1, "WFCP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set13(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set12(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set5(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set84(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set85(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set35(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set36(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public exit()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->getName()Ljava/lang/String;

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
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    return v2

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get60(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    return v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get60(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2104b
        :pswitch_0
    .end packed-switch
.end method
