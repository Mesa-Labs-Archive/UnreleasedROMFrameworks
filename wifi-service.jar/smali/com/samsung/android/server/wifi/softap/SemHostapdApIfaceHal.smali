.class public Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;
.super Ljava/lang/Object;
.source "SemHostapdApIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;,
        Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;,
        Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SemHostapdApIfaceHal"


# instance fields
.field private mCallback:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;

.field private final mHostapdApDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

.field private mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private mLock:Ljava/lang/Object;

.field private mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->initISemHostapdIface()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->initSemHostapdService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$1;-><init>(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mHostapdApDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mCallback:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    return-void
.end method

.method private checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": IHostapdApIface is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private hostapdServiceDiedHandler()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initISemHostapdIface()Z
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    new-instance v7, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$3;

    invoke-direct {v7, v2}, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$3;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v7}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;->listInterfaces(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd$listInterfacesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "SemHostapdApIfaceHal"

    const-string/jumbo v7, "Got zero HIDL hostapd ifaces. Stopping hostapd HIDL startup."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return v9

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v5, "SemHostapdApIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IHostapdAp.listInterfaces exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return v9

    :cond_0
    :try_start_4
    new-instance v1, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;

    const-string/jumbo v5, "getInterface()"

    invoke-direct {v1, v5}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd$IfaceInfo;

    iget v5, v3, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd$IfaceInfo;->type:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_1

    :try_start_5
    iget-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    new-instance v7, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$2;

    invoke-direct {v7, v1}, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v3, v7}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;->getInterface(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd$IfaceInfo;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd$getInterfaceCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :try_start_6
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "SemHostapdApIfaceHal"

    const-string/jumbo v7, "initISemHostapdIface got null iface"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    return v9

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v5, "SemHostapdApIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IHostapdAp.getInterface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v6

    return v9

    :cond_3
    :try_start_8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface;

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->getApIfaceMockable(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->linkToIHostapdApIfaceDeath()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    monitor-exit v6

    return v9

    :cond_4
    monitor-exit v6

    iget-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    if-eqz v5, :cond_5

    new-instance v5, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;

    const-string/jumbo v6, "wlan0"

    iget-object v7, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mCallback:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mCallback:Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->registerCallback(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "SemHostapdApIfaceHal"

    const-string/jumbo v6, "Callback registration failed. Initialization incomplete."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_5
    const/4 v5, 0x1

    return v5
.end method

.method private initSemHostapdService()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->getHostapdApMockable()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v3, "Got null IHostapdAp service. Stopping hostapd HIDL startup"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SemHostapdApIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IHostapdAp.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v5

    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->linkToHostapdApDeath()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    return v5

    :cond_1
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic lambda$-com_samsung_android_server_wifi_softap_SemHostapdApIfaceHal_10172(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface;)V
    .locals 3

    iget v0, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get IHostapdApIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->setResult(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_samsung_android_server_wifi_softap_SemHostapdApIfaceHal_26440(Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/lang/String;)V
    .locals 1

    iget v0, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_samsung_android_server_wifi_softap_SemHostapdApIfaceHal_9073(Ljava/util/ArrayList;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;Ljava/util/ArrayList;)V
    .locals 3

    iget v0, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Getting HostapdAp Interfaces failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private linkToHostapdApDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mHostapdApDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on IHostapdAp"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "IHostapdAp.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private linkToIHostapdApIfaceDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mHostapdApDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on IHostapdApIface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "IHostapdApIface.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private linkToServiceManagerDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on IServiceManager"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "IServiceManager.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected static logCompletion(Ljava/lang/String;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed: no status code returned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " completed successfully."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SemHostapdApIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelWps()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "cancelWps"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->cancelWps()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public getAccessPointChannel()I
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getAccessPointChannel"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    monitor-exit v3

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->getAccessPointChannel()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccessPointStaList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getAccessPointNumConnectedSta()I
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getAccessPointNumConnectedSta"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->getAccessPointNumConnectedSta()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccessPointNumConnectedSta : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getAccessPointStaList()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getAccessPointStaList"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->getAccessPointStaList()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccessPointStaList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method protected getApIfaceMockable(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
    .locals 1

    invoke-interface {p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    move-result-object v0

    return-object v0
.end method

.method protected getHostapdApMockable()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;->getService()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wlan0"

    return-object v0
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getStationInfo"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->getStationInfo(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccessPointStaList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public initialize()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v2, "Registering IHostapdAp service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v3, "HostapdAp HAL already initialized."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v7

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapd:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapd;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v3, "Failed to get HIDL Service Manager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v6

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->linkToServiceManagerDeath()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v2

    return v6

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string/jumbo v3, "vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapd"

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v1, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SemHostapdApIfaceHal"

    const-string/jumbo v3, "Failed to register for notifications to vendor.samsung.hardware.wifi.sec_hostapd@1.0::ISemHostapd"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    return v6

    :cond_3
    monitor-exit v2

    return v7

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "SemHostapdApIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while trying to register a listener for IHostapdAp service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isInitializationComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitializationStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_samsung_android_server_wifi_softap_SemHostapdApIfaceHal_3469(J)V
    .locals 3

    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_samsung_android_server_wifi_softap_SemHostapdApIfaceHal_3863(J)V
    .locals 3

    const-string/jumbo v0, "SemHostapdApIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISemHostapd/ISemHostapdApStaIface died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readWhiteList()I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "readWhiteList"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->readWhiteList()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v3

    return v7

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readWhiteList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return v6
.end method

.method public registerCallback(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback;)Z
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "registerCallback"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;

    const-string/jumbo v2, "registerCallback()"

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->registerCallback(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->setResult(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$HostapdApResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "sendHostapdCommand"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    new-instance v4, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$4;

    invoke-direct {v4, v1}, Lcom/samsung/android/server/wifi/softap/-$Lambda$cJFsvGB6dG_K9afUdTuLrunWK1s$4;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->sendHostapdCommand(Ljava/lang/String;Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface$sendHostapdCommandCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v2, v1, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setAccessPointDisassocSta(Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setAccessPointDisassocSta"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->setAccessPointDisassocSta(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v3

    return v7

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAccessPointDisassocSta : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return v6
.end method

.method public setMaxClient(I)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setMaxClient"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->setMaxClient(I)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v3

    return v7

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMaxClient : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return v6
.end method

.method public setTxPower(I)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setTxPower"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->setTxPower(I)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return v7
.end method

.method public startWpsPbc()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "startWpsPbc"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->startWpsPbc()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public startWpsPinAp(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "startWpsPinAp"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->startWpsPinAp(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public startWpsPinApRandom()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "startWpsPinApRandom"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->startWpsPinApRandom()Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public startWpsPinClient(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "startWpsPinClient"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->startWpsPinClient(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public validatewpspin(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "validatewpspin"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->checkISemHostapdApIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->mISemHostapdApIface:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIface;->validatewpspin(Ljava/lang/String;)Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    iget v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "SemHostapdApIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISemHostapdApIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceHal;->hostapdServiceDiedHandler()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, v1, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2
.end method
