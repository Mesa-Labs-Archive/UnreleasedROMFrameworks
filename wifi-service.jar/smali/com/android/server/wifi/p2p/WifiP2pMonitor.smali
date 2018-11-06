.class public Lcom/android/server/wifi/p2p/WifiP2pMonitor;
.super Ljava/lang/Object;
.source "WifiP2pMonitor.java"


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field public static final AP_STA_POSSIBLE_PSK_MISMATCH:I = 0x2402b

.field private static final BASE:I = 0x24000

.field public static final P2P_BIGDATA_CONNECTION_RESULT_EVENT:I = 0x24051

.field public static final P2P_BIGDATA_DISCONNECT_EVENT:I = 0x24050

.field public static final P2P_BIGDATA_GROUP_OWNER_INTENT_EVENT:I = 0x24052

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field public static final P2P_GOPS_EVENT:I = 0x24031

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field public static final P2P_NO_COMMON_CHANNEL:I = 0x2403c

.field public static final P2P_P2P_SCONNECT_PROBE_REQ_EVENT:I = 0x24046

.field public static final P2P_PERSISTENT_PSK_FAIL_EVENT:I = 0x24028

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field public static final P2P_PROV_DISC_USER_REJECT_EVENT:I = 0x24047

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field public static final P2P_WPS_SKIP_EVENT:I = 0x24032

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "WifiP2pMonitor"


# instance fields
.field private mConnected:Z

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiInjector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mConnected:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-void
.end method

.method private ensureConnectedLocked()Z
    .locals 7

    const/4 v6, 0x1

    iget-boolean v3, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mConnected:Z

    if-eqz v3, :cond_0

    return v6

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiP2pMonitor"

    const-string/jumbo v4, "connecting to supplicant"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getWifiP2pNative()Lcom/android/server/wifi/p2p/WifiP2pNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/WifiP2pNative;->connectToSupplicant()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mConnected:Z

    iget-boolean v3, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mConnected:Z

    if-eqz v3, :cond_2

    return v6

    :cond_2
    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p2, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "WifiP2pMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dropping event because ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is stopped"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    return-void

    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "WifiP2pMonitor"

    const-string/jumbo v7, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_6

    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1
.end method

.method private setMonitoringNone()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastBigDataEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "P2P-BIGDATA-DISCONNECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x24050

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "P2P-BIGDATA-CONNECTION-RESULT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x24051

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "P2P-BIGDATA-GROUP-OWNER-INTENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x24052

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public broadcastGoPsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x24031

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    const v0, 0x2402a

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    const v0, 0x24029

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x24015

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pDeviceLost(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x24016

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pEventNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AP-STA-POSSIBLE-PSK-MISMATCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2402b

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pFindStopped(Ljava/lang/String;)V
    .locals 1

    const v0, 0x24025

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastP2pGoNegotiationFailure(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V
    .locals 1

    const v0, 0x2401a

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x24017

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pGoNegotiationSuccess(Ljava/lang/String;)V
    .locals 1

    const v0, 0x24019

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastP2pGroupFormationFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string/jumbo v1, "FREQ_CONFLICT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    :cond_0
    const v1, 0x2401c

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pGroupFormationSuccess(Ljava/lang/String;)V
    .locals 1

    const v0, 0x2401b

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x2401e

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x2401d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pInvitationReceived(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x2401f

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pInvitationResult(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V
    .locals 1

    const v0, 0x24020

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x24023

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const v0, 0x24047

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x24027

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public broadcastP2pProvisionDiscoveryPbcRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x24021

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryPbcResponse(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x24022

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x24024

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public broadcastP2pServiceDiscoveryResponse(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;)V"
        }
    .end annotation

    const v0, 0x24026

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastSconnectEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x24046

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    .locals 1

    const v0, 0x24001

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    .locals 1

    const v0, 0x24002

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    goto :goto_0
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setMonitoring(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->ensureConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    const-string/jumbo v1, "WifiP2pMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopAllMonitoring()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mConnected:Z

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoringNone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
