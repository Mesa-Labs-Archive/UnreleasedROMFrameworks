.class public Lcom/android/server/wifi/aware/WifiAwareServiceImpl;
.super Landroid/net/wifi/aware/IWifiAwareManager$Stub;
.source "WifiAwareServiceImpl.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareService"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeathRecipientsByClientId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextClientId:I

.field private mNextRangingId:I

.field private mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field private final mUidByClientId:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I

    iput v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextRangingId:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    const-string/jumbo v2, "WifiAwareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    const-string/jumbo v2, "WifiAwareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceClientValidity(II)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempting to use invalid uid+clientId mapping: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "WifiAwareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceLocationPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string/jumbo v2, "WifiAwareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Callback must not be null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Binder must not be null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceLocationPermission()V

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceConnectivityInternalPermission()V

    :goto_0
    invoke-virtual {p4}, Landroid/net/wifi/aware/ConfigRequest;->validate()V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v2

    invoke-static {}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getCallingPid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    new-instance v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;

    invoke-direct {v8, p0, v1, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;-><init>(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;ILandroid/os/IBinder;)V

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v8, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->connect(IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    return-void

    :cond_3
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest$Builder;

    invoke-direct {v0}, Landroid/net/wifi/aware/ConfigRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/aware/ConfigRequest$Builder;->build()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object p4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "WifiAwareService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error on linkToDeath - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_3
    invoke-interface {p3, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception v10

    const-string/jumbo v0, "WifiAwareService"

    const-string/jumbo v4, "Error on onConnectFail()"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public disconnect(ILandroid/os/IBinder;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Binder must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disconnect(I)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump WifiAwareService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "Wi-Fi Aware Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mNextClientId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mDeathRecipientsByClientId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mUidByClientId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/Capabilities;->toPublicCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    goto :goto_0
.end method

.method public getMockableCallingUid()I
    .locals 1

    invoke-static {}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public isUsageEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->isUsageEnabled()Z

    move-result v0

    return v0
.end method

.method public publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceLocationPermission()V

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "PublishConfig must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/wifi/aware/PublishConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    return-void
.end method

.method public sendMessage(III[BII)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    if-eqz p6, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceConnectivityInternalPermission()V

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Message length longer than supported by device characteristics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p6, :cond_2

    invoke-static {}, Landroid/net/wifi/aware/DiscoverySession;->getMaxSendRetryCount()I

    move-result v0

    if-le p6, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid \'retryCount\' must be non-negative and <= DiscoverySession.MAX_SEND_RETRY_COUNT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v7

    invoke-direct {p0, v7, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendMessage(III[BII)V

    return-void
.end method

.method public start(Landroid/os/HandlerThread;Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 3

    const-string/jumbo v0, "WifiAwareService"

    const-string/jumbo v1, "Starting Wi-Fi Aware service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public startLate()V
    .locals 2

    const-string/jumbo v0, "WifiAwareService"

    const-string/jumbo v1, "Late initialization of Wi-Fi Aware service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->startLate()V

    return-void
.end method

.method public startRanging(IILandroid/net/wifi/RttManager$ParcelableRttParams;)I
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceLocationPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceConnectivityInternalPermission()V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    iget-object v2, p3, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v2, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Empty ranging parameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextRangingId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextRangingId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p3, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->startRanging(II[Landroid/net/wifi/RttManager$RttParams;I)V

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceLocationPermission()V

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "SubscribeConfig must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/wifi/aware/SubscribeConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    return-void
.end method

.method public terminateSession(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->terminateSession(II)V

    return-void
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "PublishConfig must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/net/wifi/aware/PublishConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    return-void
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "SubscribeConfig must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/net/wifi/aware/SubscribeConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    return-void
.end method
