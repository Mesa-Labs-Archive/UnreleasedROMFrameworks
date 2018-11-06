.class public Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;
.super Ljava/lang/Object;
.source "WifiAwareDataPathStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;,
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;,
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;,
        Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;
    }
.end annotation


# static fields
.field private static final AGENT_TAG_PREFIX:Ljava/lang/String; = "WIFI_AWARE_AGENT_"

.field private static final AWARE_INTERFACE_PREFIX:Ljava/lang/String; = "aware_data"

.field private static final DBG:Z = false

.field private static final NETWORK_FACTORY_BANDWIDTH_AVAIL:I = 0x1

.field private static final NETWORK_FACTORY_SCORE_AVAIL:I = 0x1

.field private static final NETWORK_FACTORY_SIGNAL_STRENGTH_AVAIL:I = 0x1

.field private static final NETWORK_TAG:Ljava/lang/String; = "WIFI_AWARE_FACTORY"

.field private static final TAG:Ljava/lang/String; = "WifiAwareDataPathStMgr"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private final mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

.field private final mNetworkRequestsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mNiWrapper:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

.field private mNwService:Landroid/os/INetworkManagementService;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->selectChannelForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->selectInterfaceForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;-><init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNiWrapper:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    return-void
.end method

.method private getNetworkRequestByNdpId(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v2, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private selectChannelForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)I
    .locals 1

    const/16 v0, 0x985

    return v0
.end method

.method private selectInterfaceForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectInterfaceForRequest: req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - but no interfaces available!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1
.end method

.method private tearDownInterface(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V
    .locals 4

    iget-object v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->reconfigureAgentAsDisconnected()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tearDownInterface: nnri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": can\'t bring interface down - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public createAllInterfaces()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "WifiAwareDataPathStMgr"

    const-string/jumbo v3, "createAllInterfaces: capabilities aren\'t initialized yet!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/aware/Capabilities;->maxNdiInterfaces:I

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "aware_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiAwareDataPathStMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createAllInterfaces(): interface already up, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", possibly failed to delete - deleting/creating again to be safe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteDataPathInterface(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->createDataPathInterface(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public deleteAllInterfaces()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteDataPathInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WifiAwareDataPathStateManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInterfaces: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNetworkCapabilitiesFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNetworkRequestsCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNetworkFactory:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public handleDataPathTimeout(Landroid/net/NetworkSpecifier;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    return-void
.end method

.method public onAwareDownCleanupDataPaths()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->tearDownInterface(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onDataPathConfirm(I[BZI[B)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 21

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->getNetworkRequestByNdpId(I)Ljava/util/Map$Entry;

    move-result-object v20

    if-nez v20, :cond_1

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDataPathConfirm: network request not found for ndpId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-object v1, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v1, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-nez v1, :cond_3

    iget v1, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v4, 0x66

    if-eq v1, v4, :cond_3

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDataPathConfirm: INITIATOR in invalid state="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    :cond_2
    return-object v3

    :cond_3
    iget-object v1, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v1, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    iget v1, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v4, 0xcb

    if-eq v1, v4, :cond_5

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDataPathConfirm: RESPONDER in invalid state="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    :cond_4
    return-object v3

    :cond_5
    if-eqz p3, :cond_8

    iget-object v1, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v1, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-nez v1, :cond_6

    const/16 v1, 0x67

    :goto_0
    iput v1, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDataMac:[B

    new-instance v5, Landroid/net/NetworkInfo;

    const-string/jumbo v1, "WIFI_AWARE_FACTORY"

    const-string/jumbo v4, ""

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v1, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v6, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v4, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v4, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNiWrapper:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$NetworkInterfaceWrapper;->configureAgentProperties(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;ILandroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_7

    return-object v3

    :cond_6
    const/16 v1, 0xcc

    goto :goto_0

    :catch_0
    move-exception v19

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDataPathConfirm: ACCEPT nnri="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ": can\'t configure network - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    return-object v3

    :cond_7
    new-instance v8, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mLooper:Landroid/os/Looper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WIFI_AWARE_AGENT_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/net/NetworkInfo;

    const-string/jumbo v1, "WIFI_AWARE_FACTORY"

    const-string/jumbo v4, ""

    const/16 v9, 0xd

    const/4 v14, 0x0

    invoke-direct {v13, v9, v14, v1, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    move-object/from16 v9, p0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v17, v3

    move/from16 v18, p1

    invoke-direct/range {v8 .. v18}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;-><init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    iput-object v8, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    iget-object v1, v2, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkAgent:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :goto_1
    return-object v3

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onDataPathEnd(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->getNetworkRequestByNdpId(I)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->tearDownInterface(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataPathInitiateFail: network request not found for networkSpecifier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataPathInitiateFail: network request in incorrect state: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDataPathInitiateSuccess(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    if-nez v0, :cond_0

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataPathInitiateSuccess: network request not found for networkSpecifier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    return-void

    :cond_0
    iget v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataPathInitiateSuccess: network request in incorrect state: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    return-void

    :cond_1
    const/16 v1, 0x66

    iput v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    iput p2, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    return-void
.end method

.method public onDataPathRequest(I[BI)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v0, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->pubSubId:I

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v0, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->pubSubId:I

    if-ne v0, p1, :cond_0

    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-object v0, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget-object v0, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->peerDiscoveryMac:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    :cond_3
    if-nez v9, :cond_4

    const-string/jumbo v0, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataPathRequest: can\'t find a request with specified pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const-string/jumbo v3, ""

    move v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;)V

    return-object v4

    :cond_4
    iget v0, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "WifiAwareDataPathStMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataPathRequest: request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is incorrect state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const-string/jumbo v3, ""

    move v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_5
    const/16 v0, 0xca

    iput v0, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    iput p3, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    invoke-direct {p0, v9}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->selectInterfaceForRequest(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->interfaceName:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v1, v9, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->networkSpecifier:Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget-object v5, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;)V

    return-object v8
.end method

.method public onInterfaceCreated(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiAwareDataPathStMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterfaceCreated: already contains interface -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInterfaceDeleted(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiAwareDataPathStMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterfaceDeleted: interface not on list -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRespondToDataPathRequest(IZ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    iget v4, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->ndpId:I

    if-ne v4, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;

    :cond_1
    if-nez v3, :cond_2

    const-string/jumbo v4, "WifiAwareDataPathStMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRespondToDataPathRequest: can\'t find a request with specified ndpId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p2, :cond_3

    const-string/jumbo v4, "WifiAwareDataPathStMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRespondToDataPathRequest: request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed responding"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget v4, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    const/16 v5, 0xca

    if-eq v4, v5, :cond_4

    const-string/jumbo v4, "WifiAwareDataPathStMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRespondToDataPathRequest: request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is incorrect state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mMgr:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPath(I)V

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkRequestsCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const/16 v4, 0xcb

    iput v4, v3, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$AwareNetworkRequestInformation;->state:I

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mLooper:Landroid/os/Looper;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->clearAll()V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    new-instance v2, Landroid/net/MatchAllNetworkSpecifier;

    invoke-direct {v2}, Landroid/net/MatchAllNetworkSpecifier;-><init>()V

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)V

    new-instance v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;-><init>(Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->setScoreFilter(I)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNetworkFactory:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager$WifiAwareNetworkFactory;->register()V

    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mNwService:Landroid/os/INetworkManagementService;

    return-void
.end method
