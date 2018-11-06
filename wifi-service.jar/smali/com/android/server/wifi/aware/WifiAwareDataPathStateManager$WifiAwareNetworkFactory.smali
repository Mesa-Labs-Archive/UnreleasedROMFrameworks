.class Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiAwareNetworkFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const-string/jumbo v0, "WIFI_AWARE_FACTORY"

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->isUsageEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get0(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiAwareNetworkFactory.acceptRequest: request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- No Aware interfaces are up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    instance-of v3, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-nez v3, :cond_2

    const-string/jumbo v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiAwareNetworkFactory.acceptRequest: request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - not a WifiAwareNetworkSpecifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    if-eqz v2, :cond_3

    return v4

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->processNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    move-result-object v2

    if-nez v2, :cond_4

    const-string/jumbo v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiAwareNetworkFactory.acceptRequest: request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - can\'t parse network specifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 11

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v9

    const/4 v1, 0x0

    instance-of v0, v9, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-eqz v0, :cond_0

    move-object v1, v9

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    if-nez v10, :cond_1

    const-string/jumbo v0, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WifiAwareNetworkFactory.needNetworkFor: networkRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not in cache!?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v0, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-nez v0, :cond_3

    iget v0, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0, v10}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-wrap1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v2, v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3, v10}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-wrap0(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I

    move-result v4

    iget-object v5, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    iget-object v6, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v7, v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v3, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v8, v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->initiateDataPathSetup(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;)V

    const/16 v0, 0x65

    iput v0, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    :goto_0
    return-void

    :cond_3
    iget v0, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    return-void

    :cond_4
    const/16 v0, 0xc9

    iput v0, v10, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    goto :goto_0
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 6

    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v3, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get2(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    if-nez v2, :cond_1

    const-string/jumbo v3, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiAwareNetworkFactory.releaseNetworkFor: networkRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not in cache!?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v3, v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-nez v3, :cond_3

    iget v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v4, 0x65

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v3

    iget v4, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    :cond_3
    iget-object v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v3, v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget v3, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v4, 0xc9

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v3

    iget v4, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    :cond_4
    return-void
.end method
