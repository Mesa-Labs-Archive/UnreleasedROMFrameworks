.class public Lcom/android/server/wifi/p2p/WifiP2pNative;
.super Ljava/lang/Object;
.source "WifiP2pNative.java"


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private final mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

.field private final mTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiP2pNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mTAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    return-void
.end method


# virtual methods
.method public closeSupplicantConnection()V
    .locals 0

    return-void
.end method

.method public connectToSupplicant()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isInitializationStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initialize()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->isInitializationComplete()Z

    move-result v0

    return v0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    return-void
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getGroupCapability(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNfcHandoverRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNfcHandoverSelect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pClientList(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getClientList(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initiatorReportNfcHandover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pCancelConnect()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->cancelConnect()Z

    move-result v0

    return v0
.end method

.method public p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->fw_dev:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->fw_dev:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const-string/jumbo v1, "fw_invite_dev"

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->fw_dev:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pExtListen(ZII)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->configureExtListen(ZII)Z

    move-result v0

    return v0
.end method

.method public p2pFind()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->p2pFind(I)Z

    move-result v0

    return v0
.end method

.method public p2pFind(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->find(I)Z

    move-result v0

    return v0
.end method

.method public p2pFind(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->find(II)Z

    move-result v0

    return v0
.end method

.method public p2pFlush()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->flush()Z

    move-result v0

    return v0
.end method

.method public p2pGetDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const-string/jumbo v1, "pri_dev_type"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pGetAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetListenFreq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const-string/jumbo v1, "listen_freq"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pGetAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetManufacturer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const-string/jumbo v1, "manufacturer"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pGetAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetModelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const-string/jumbo v1, "model_name"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pGetAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetPeerGoIntent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const-string/jumbo v1, "go_intent"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pGetAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGroupAdd(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(IZ)Z

    move-result v0

    return v0
.end method

.method public p2pGroupAdd(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(Z)Z

    move-result v0

    return v0
.end method

.method public p2pGroupAdd(ZI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(ZI)Z

    move-result v0

    return v0
.end method

.method public p2pGroupRemove(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupRemove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->invite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListNetworks(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->loadGroups(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z

    move-result v0

    return v0
.end method

.method public p2pListen()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pNative;->p2pListen(I)Z

    move-result v0

    return v0
.end method

.method public p2pListen(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pListen(I)Z

    move-result v0

    return v0
.end method

.method public p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pGetPeerInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->provisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method public p2pReinvoke(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->reinvoke(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pReject(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->reject(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pRemoveClient(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscCancelReq(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->cancelServiceDiscovery(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->requestServiceDiscovery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->serviceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->serviceRemove(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public p2pServiceFlush()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->serviceFlush()Z

    move-result v0

    return v0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSetChannel(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setListenChannel(II)Z

    move-result v0

    return v0
.end method

.method public p2pStopFind()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->stopFind()Z

    move-result v0

    return v0
.end method

.method public removeP2pNetwork(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->removeNetwork(I)Z

    move-result v0

    return v0
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->responderReportNfcHandover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveConfig()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->saveConfig()Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsConfigMethods(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setMiracastMode(I)Z

    return-void
.end method

.method public setP2pClientList(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setClientList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pDeviceName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pDeviceType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWpsDeviceType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pGroupIdle(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setGroupIdle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setP2pIncBw(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setP2pNoa(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setPowerSave(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setP2pSsidPostfix(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setSsidPostfix(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->setWfdDeviceInfo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnable(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->enableWfd(Z)Z

    move-result v0

    return v0
.end method

.method public startP2pListenOffloading(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->startP2pListenOffloading(IIII)Z

    move-result v0

    return v0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopP2pListenOffloading()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pNative;->mSupplicantP2pIfaceHal:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->stopP2pListenOffloading()Z

    move-result v0

    return v0
.end method
