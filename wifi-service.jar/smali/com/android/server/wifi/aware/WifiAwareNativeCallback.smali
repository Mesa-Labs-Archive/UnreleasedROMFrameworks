.class public Lcom/android/server/wifi/aware/WifiAwareNativeCallback;
.super Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;
.source "WifiAwareNativeCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareNativeCallback"

.field private static final VDBG:Z


# instance fields
.field private final mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    return-void
.end method

.method private convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiNanStatus;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, "status=null"

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public eventClusterEvent(Landroid/hardware/wifi/V1_0/NanClusterEventInd;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->addr:[B

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInterfaceAddressChangeNotification([B)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->addr:[B

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onClusterChangeNotification(I[B)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->addr:[B

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onClusterChangeNotification(I[B)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eventClusterEvent: invalid eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanClusterEventInd;->eventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public eventDataPathConfirm(Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->ndpInstanceId:I

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->peerNdiMacAddr:[B

    iget-boolean v3, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->dataPathSetupSuccess:Z

    iget-object v4, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->status:Landroid/hardware/wifi/V1_0/WifiNanStatus;

    iget v4, v4, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    iget-object v5, p1, Landroid/hardware/wifi/V1_0/NanDataPathConfirmInd;->appInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathConfirmNotification(I[BZI[B)V

    return-void
.end method

.method public eventDataPathRequest(Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-byte v1, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    iget-object v2, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    iget v3, p1, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathRequestNotification(I[BI)V

    return-void
.end method

.method public eventDataPathTerminated(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDataPathEndNotification(I)V

    return-void
.end method

.method public eventDisabled(Landroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p1, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownNotification(I)V

    return-void
.end method

.method public eventFollowupReceived(Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-byte v1, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    iget-object v3, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    iget-object v4, p1, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageReceivedNotification(II[B[B)V

    return-void
.end method

.method public eventMatch(Landroid/hardware/wifi/V1_0/NanMatchInd;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-byte v1, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    iget v2, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    iget-object v3, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    iget-object v4, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->convertArrayListToNativeByteArray(Ljava/util/ArrayList;)[B

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMatchNotification(II[B[B[B)V

    return-void
.end method

.method public eventMatchExpired(BI)V
    .locals 0

    return-void
.end method

.method public eventPublishTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionTerminatedNotification(IIZ)V

    return-void
.end method

.method public eventSubscribeTerminated(BLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionTerminatedNotification(IIZ)V

    return-void
.end method

.method public eventTransmitFollowup(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 2

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendSuccessNotification(S)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendFailNotification(SI)V

    goto :goto_0
.end method

.method public notifyCapabilitiesResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;Landroid/hardware/wifi/V1_0/NanCapabilities;)V
    .locals 4

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/server/wifi/aware/Capabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/aware/Capabilities;-><init>()V

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxConcurrentAwareClusters:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxPublishes:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribes:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxServiceNameLen:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxMatchFilterLen:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxTotalMatchFilterLen:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxServiceSpecificInfoLen:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxExtendedServiceSpecificInfoLen:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxNdiInterfaces:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxNdpSessions:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxAppInfoLen:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxQueuedTransmitMessages:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribeInterfaceAddresses:I

    iget v1, p3, Landroid/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    iput v1, v0, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCapabilitiesUpdateResponse(SLcom/android/server/wifi/aware/Capabilities;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "WifiAwareNativeCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyCapabilitiesResponse: error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyConfigResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 2

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigSuccessResponse(S)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigFailedResponse(SI)V

    goto :goto_0
.end method

.method public notifyCreateDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCreateDataPathInterfaceResponse(SZI)V

    return-void
.end method

.method public notifyDeleteDataInterfaceResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDeleteDataPathInterfaceResponse(SZI)V

    return-void
.end method

.method public notifyDisableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDisableResponse: failure - code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyEnableResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 2

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigSuccessResponse(S)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigFailedResponse(SI)V

    goto :goto_0
.end method

.method public notifyInitiateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;I)V
    .locals 2

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseSuccess(SI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseFail(SI)V

    goto :goto_0
.end method

.method public notifyRespondToDataPathIndicationResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onRespondToDataPathSetupRequestResponse(SZI)V

    return-void
.end method

.method public notifyStartPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, v2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigSuccessResponse(SZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigFailResponse(SZI)V

    goto :goto_0
.end method

.method public notifyStartSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;B)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, v2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigSuccessResponse(SZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigFailResponse(SZI)V

    goto :goto_0
.end method

.method public notifyStopPublishResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStopPublishResponse: failure - code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyStopSubscribeResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiAwareNativeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStopSubscribeResponse: failure - code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyTerminateDataPathResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v2, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onEndDataPathResponse(SZI)V

    return-void
.end method

.method public notifyTransmitFollowupResponse(SLandroid/hardware/wifi/V1_0/WifiNanStatus;)V
    .locals 2

    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendQueuedSuccessResponse(S)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p2, Landroid/hardware/wifi/V1_0/WifiNanStatus;->status:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendQueuedFailResponse(SI)V

    goto :goto_0
.end method
