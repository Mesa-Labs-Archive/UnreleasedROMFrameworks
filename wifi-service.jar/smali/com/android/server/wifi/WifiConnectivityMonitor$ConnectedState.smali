.class Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiConnectivityMonitor"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->newLinkDetected()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get28(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v4, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;D)V

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set20(Lcom/android/server/wifi/WifiConnectivityMonitor;Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiConnectivityMonitor$VolumeWeightedEMA;

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap23(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set66(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get70(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap1(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set59(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/Network;)Landroid/net/Network;

    :cond_3
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mNetwork : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get70(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap29(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    if-eq v2, v9, :cond_d

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get58(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set71(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set72(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HTTP Proxy is in use. Proxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get85(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get86(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setUrlList()V

    :cond_6
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setEvaluationParameters()V

    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set19(Z)Z

    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set38(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set43(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set9(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set80(Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get101(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->updateSNSCResult(Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_b
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v10, :cond_c

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set5(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iput v9, v2, Lcom/android/server/wifi/WifiConnectivityMonitor;->mLastTearDownRequest:I

    return-void

    :cond_d
    move v2, v3

    goto/16 :goto_0

    :cond_e
    move v2, v3

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public exit()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v1, 0x21051

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v1, 0x21052

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v1, 0x21046

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v0

    const v1, 0x21034

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object v0

    iput v2, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set79(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set77(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->getName()Ljava/lang/String;

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
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v14, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    const/4 v14, 0x0

    return v14

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    const-string/jumbo v14, "networkInfo"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "WifiConnectivityMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Network state change "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14, v15}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "wifiInfo"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v14

    if-eqz v14, :cond_6

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    const/4 v14, 0x1

    return v14

    :cond_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v16, v0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v14

    :goto_2
    move-object/from16 v0, v16

    invoke-static {v0, v15, v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    move-object v15, v14

    goto :goto_1

    :cond_5
    const/4 v14, -0x1

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v16

    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap53(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get60(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set47(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const/4 v14, 0x1

    return v14

    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/LinkProperties;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set53(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap54(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x2101f

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x2100d

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v14

    const/16 v15, 0x34

    iput v15, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set80(Z)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get47(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-result-object v15

    if-ne v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v16, 0xbb8

    const v15, 0x2100d

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get33(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_b

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get113()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v14

    const v15, 0x21043

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v14

    const v15, 0x21043

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v14

    const v15, 0x21043

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v12, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    const/4 v14, 0x1

    return v14

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v16, 0xbb8

    const v15, 0x2101f

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto :goto_4

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get113()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_d

    const-string/jumbo v14, "start"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set38(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x21052

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v16, 0x7530

    const v15, 0x21052

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v14

    const v15, 0x21044

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v14

    const v15, 0x21044

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v14

    const v15, 0x21044

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    :goto_5
    const/4 v14, 0x1

    return v14

    :cond_e
    const-string/jumbo v14, "complete"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get51(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set38(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x21052

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v14

    const v15, 0x21045

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v14

    const v15, 0x21045

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v14

    const v15, 0x21045

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get113()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_f

    const-string/jumbo v14, "start"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get105(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object v14

    const/4 v15, 0x0

    iput v15, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNonSwitchableState;->mMinQualifiedRssi:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x21051

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v16, 0x7530

    const v15, 0x21051

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v14

    const v15, 0x21049

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v14

    const v15, 0x21049

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v14

    const v15, 0x21049

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    :goto_6
    const/4 v14, 0x1

    return v14

    :cond_10
    const-string/jumbo v14, "complete"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get52(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x21051

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v14

    const v15, 0x2104a

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v14

    const v15, 0x2104a

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v14

    const v15, 0x2104a

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x2100d

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v15, 0x2101f

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v14

    const/16 v15, 0x34

    iput v15, v14, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v14

    if-nez v14, :cond_11

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set80(Z)Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get47(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidNonSwitchableState;

    move-result-object v15

    if-ne v14, v15, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v16, 0xbb8

    const v15, 0x2100d

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-wide/16 v16, 0xbb8

    const v15, 0x2101f

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set9(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_6

    :sswitch_5
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_13

    const-string/jumbo v14, "WifiConnectivityMonitor"

    const-string/jumbo v15, "EVENT_SCANNING_SERVICE_SCAN_STARTED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v14, 0x1

    return v14

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v14

    const v15, 0x2103e

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v14

    const v15, 0x2103e

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v14

    const v15, 0x2103e

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    const/4 v14, 0x1

    return v14

    :sswitch_7
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v15, "WWSM_REPORT_CP_BIG_DATA"

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WWSM_REPORT_CP_BIG_DATA - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap28(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_15
    if-eqz v11, :cond_16

    const-string/jumbo v14, "CAut"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    :try_start_0
    const-string/jumbo v14, "CAut"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v14

    const-string/jumbo v15, "WFCP"

    const-string/jumbo v16, "CAut"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v10}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    const/4 v14, 0x1

    return v14

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$ConnectedState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v14

    const-string/jumbo v15, "WFCP"

    invoke-virtual {v14, v15, v11, v13}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x200ea -> :sswitch_2
        0x200eb -> :sswitch_3
        0x200ed -> :sswitch_4
        0x21002 -> :sswitch_0
        0x2103e -> :sswitch_6
        0x2104b -> :sswitch_1
        0x21053 -> :sswitch_5
        0x25069 -> :sswitch_7
    .end sparse-switch
.end method
