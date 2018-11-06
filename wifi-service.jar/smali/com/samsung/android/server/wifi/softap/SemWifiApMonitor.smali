.class public Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;
.super Ljava/lang/Object;
.source "SemWifiApMonitor.java"


# static fields
.field public static final AP_CHANGED_CHANNEL_EVENT:I = 0x8500b

.field public static final AP_CSA_FINISHED_EVENT:I = 0x8500a

.field public static final AP_STA_ASSOCIATION_EVENT:I = 0x85002

.field public static final AP_STA_DEAUTH_EVENT:I = 0x85011

.field public static final AP_STA_DISASSOCIATION_EVENT:I = 0x85003

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x85001

.field public static final AP_STA_JOIN_EVENT:I = 0x8500c

.field public static final AP_STA_NEW_EVENT:I = 0x8500d

.field public static final AP_STA_NOTALLOW_EVENT:I = 0x8500e

.field public static final AP_STA_NOTIFY_DISASSOCIATION_EVENT:I = 0x8500f

.field public static final AP_STA_POSSIBLE_PSK_MISMATCH_EVENT:I = 0x85008

.field public static final AP_STA_REMOVE_EVENT:I = 0x85010

.field private static final BASE:I = 0x85000

.field public static final CTRL_EVENT_DRIVER_STATE_EVENT:I = 0x85009

.field private static final TAG:Ljava/lang/String; = "SemWifiApMonitor"

.field public static final WPS_FAIL_EVENT:I = 0x85005

.field public static final WPS_OVERLAP_DETECTED:I = 0x85012

.field public static final WPS_PIN_NEEDED_EVENT:I = 0x85007

.field public static final WPS_SUCCESS_EVENT:I = 0x85004

.field public static final WPS_TIMEOUT_EVENT:I = 0x85006


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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mVerboseLoggingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mConnected:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mMonitoringMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-void
.end method

.method private ensureConnectedLocked()Z
    .locals 7

    const/4 v6, 0x1

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mConnected:Z

    if-eqz v3, :cond_0

    return v6

    :cond_0
    const-string/jumbo v3, "SemWifiApMonitor"

    const-string/jumbo v4, "connecting to hostapd"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getWifiApNative()Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->connectToHostapd()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mConnected:Z

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mConnected:Z

    if-eqz v3, :cond_1

    return v6

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

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

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mMonitoringMap:Ljava/util/Map;

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

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    iget-object v6, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->isMonitoring(Ljava/lang/String;)Z

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

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SemWifiApMonitor"

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
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "SemWifiApMonitor"

    const-string/jumbo v7, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mHandlerMap:Ljava/util/Map;

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

    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_5

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

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1
.end method

.method private setMonitoringNone()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mMonitoringMap:Ljava/util/Map;

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

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->setMonitoring(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastApStaConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85002

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastApStaDeauth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85011

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastApStaDisassociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85003

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastApStaDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85001

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastApStaNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x8500d

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastApStaNotAllow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x8500e

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastApStaPossiblePSKmismatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85008

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastApStaRemove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85010

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastChangedChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x8500b

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastCsaFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x8500a

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastCtrlEventDriverState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85009

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastHostapdConnectionEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public broadcastHostapdDisconnectionEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public broadcastStaNotifyDisassoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x8500f

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastWPSPinNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85007

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastWPSfail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85005

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastWPSsuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85004

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public broadcastWPStimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x85006

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mVerboseLoggingEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mVerboseLoggingEnabled:Z

    goto :goto_0
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mHandlerMap:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->ensureConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->setMonitoring(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastHostapdConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->setMonitoring(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastHostapdDisconnectionEvent(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->setMonitoring(Ljava/lang/String;Z)V

    const-string/jumbo v1, "SemWifiApMonitor"

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
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mConnected:Z

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->setMonitoringNone()V
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
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemWifiApMonitor"

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

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->setMonitoring(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastHostapdDisconnectionEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
