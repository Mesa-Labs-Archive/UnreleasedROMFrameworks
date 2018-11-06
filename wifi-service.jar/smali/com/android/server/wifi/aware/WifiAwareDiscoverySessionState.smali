.class public Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
.super Ljava/lang/Object;
.source "WifiAwareDiscoverySessionState.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareDiscSessState"

.field private static final VDBG:Z


# instance fields
.field private mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

.field private mIsPublishSession:Z

.field private final mMacByRequestorInstanceId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPubSubId:I

.field private mSessionId:I

.field private final mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeApi;IILandroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iput p2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mSessionId:I

    iput p3, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    iput-object p4, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    iput-boolean p5, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "AwareSessionState:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mIsPublishSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPubSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mMacByRequestorInstanceId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    return-object v0
.end method

.method public getMac(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPubSubId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mSessionId:I

    return v0
.end method

.method public isPubSubIdSession(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPublishSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    return v0
.end method

.method public onMatch(I[B[B[B)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/String;

    invoke-static {p2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v2, p1, p3, p4}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMatch(I[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMatch: RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessageReceived(I[B[B)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/String;

    invoke-static {p2}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v2, p1, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageReceived(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMessageReceived: RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMessage(SI[BI)Z
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mMacByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_0

    const-string/jumbo v0, "WifiAwareDiscSessState"

    const-string/jumbo v1, "sendMessage: attempting to send a message to an address which didn\'t match/contact us"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p4, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendFail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v10

    :catch_0
    move-exception v7

    const-string/jumbo v0, "WifiAwareDiscSessState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessage: RemoteException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v10}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    move v1, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->sendMessage(SII[B[BI)Z

    move-result v9

    if-nez v9, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p4, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendFail(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v10

    :catch_1
    move-exception v7

    const-string/jumbo v0, "WifiAwareDiscSessState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessage: RemoteException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return v9
.end method

.method public terminate()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->stopPublish(SI)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->stopSubscribe(SI)Z

    goto :goto_0
.end method

.method public updatePublish(SLandroid/net/wifi/aware/PublishConfig;)Z
    .locals 5

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    const-string/jumbo v3, "A SUBSCRIBE session is being used to publish"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePublish: RemoteException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->publish(SILandroid/net/wifi/aware/PublishConfig;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePublish onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateSubscribe(SLandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 5

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    const-string/jumbo v3, "A PUBLISH session is being used to subscribe"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSubscribe: RemoteException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:I

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->subscribe(SILandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSubscribe onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
