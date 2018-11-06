.class Lcom/android/server/wifi/RttService$RttServiceImpl;
.super Landroid/net/wifi/IRttManager$Stub;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RttServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$1;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27300

.field private static final CMD_CLIENT_INTERFACE_DOWN:I = 0x27305

.field private static final CMD_CLIENT_INTERFACE_READY:I = 0x27304

.field private static final CMD_DRIVER_LOADED:I = 0x27300

.field private static final CMD_DRIVER_UNLOADED:I = 0x27301

.field private static final CMD_ISSUE_NEXT_REQUEST:I = 0x27302

.field private static final CMD_RTT_RESPONSE:I = 0x27303

.field private static final MAX_RESPONDER_DURATION_SECONDS:I = 0x258


# instance fields
.field private mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

.field private mClients:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiInjector;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$1;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/server/wifi/WifiInjector;->getWifiNative()Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump RttService from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->currentState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "clients:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method enforcePermissionCheck(Landroid/os/Message;)Z
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.LOCATION_HARDWARE"

    iget v3, p1, Landroid/os/Message;->sendingUid:I

    const-string/jumbo v4, "LocationRTT"

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has no LOCATION_HARDWARE Permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

.method issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Issued next RTT request with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string/jumbo v1, "RttService"

    const-string/jumbo v2, "Fail to issue key at native layer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    const-string/jumbo v2, "Failed to start"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "RttService"

    const-string/jumbo v2, "No more requests left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const v3, 0x27202

    iput v3, v2, Landroid/os/Message;->what:I

    iput p2, v2, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 3

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x27203

    iput v2, v1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startService()V
    .locals 4

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$2;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "wifi_scan_available"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->start()V

    return-void
.end method
