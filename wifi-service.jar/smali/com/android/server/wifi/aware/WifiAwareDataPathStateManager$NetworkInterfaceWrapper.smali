.class public Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;
.super Ljava/lang/Object;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkInterfaceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureAgentProperties(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;ILandroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v5, "WifiAwareDataPathStMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": can\'t get network interface (null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v5}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "WifiAwareDataPathStMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": can\'t get network interface - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v5}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    const/4 v5, 0x0

    return v5

    :cond_0
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    instance-of v5, v2, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v2

    :cond_2
    if-nez v3, :cond_3

    const-string/jumbo v5, "WifiAwareDataPathStMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": no link local addresses"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->this$0:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-static {v5}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    const/4 v5, 0x0

    return v5

    :cond_3
    const/4 v5, 0x1

    invoke-virtual {p4, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p4, v5, v6, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    iget-object v5, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-virtual {p6, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    new-instance v5, Landroid/net/LinkAddress;

    const/16 v6, 0x40

    invoke-direct {v5, v3, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p6, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    const-string/jumbo v7, "fe80::/64"

    invoke-direct {v6, v7}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {p6, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    const/4 v5, 0x1

    return v5
.end method
