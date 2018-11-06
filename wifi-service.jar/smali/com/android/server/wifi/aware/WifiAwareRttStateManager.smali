.class public Lcom/android/server/wifi/aware/WifiAwareRttStateManager;
.super Ljava/lang/Object;
.source "WifiAwareRttStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareRttStateMgr"

.field private static final VDBG:Z


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mPendingOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;I)Lcom/android/server/wifi/aware/WifiAwareClientState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->getAndRemovePendingOperationClient(I)Lcom/android/server/wifi/aware/WifiAwareClientState;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mPendingOperations:Landroid/util/SparseArray;

    return-void
.end method

.method private getAndRemovePendingOperationClient(I)Lcom/android/server/wifi/aware/WifiAwareClientState;
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mPendingOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mPendingOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WifiAwareRttStateManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingOperations: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mPendingOperations:Landroid/util/SparseArray;

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

.method public start(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    const-string/jumbo v2, "rttmanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IRttManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "WifiAwareRttStateMgr"

    const-string/jumbo v3, "start(): not able to get WIFI_RTT_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->startWithRttService(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/IRttManager;)V

    return-void
.end method

.method public startRanging(ILcom/android/server/wifi/aware/WifiAwareClientState;[Landroid/net/wifi/RttManager$RttParams;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiAwareRttStateMgr"

    const-string/jumbo v2, "startRanging(): AsyncChannel to RTT service not configured - failing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Aware service not able to configure connection to RTT service"

    const/4 v2, -0x2

    invoke-virtual {p2, p1, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onRangingFailure(IILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mPendingOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v0, p3}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27200

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startWithRttService(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/IRttManager;)V
    .locals 4

    :try_start_0
    invoke-interface {p3}, Landroid/net/wifi/IRttManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v3, Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;-><init>(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;Landroid/os/Looper;)V

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiAwareRttStateMgr"

    const-string/jumbo v3, "start(): not able to getMessenger() of WIFI_RTT_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
