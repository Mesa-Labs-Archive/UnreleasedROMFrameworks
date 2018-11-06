.class public Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
.super Ljava/lang/Object;
.source "SupplicantP2pIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;,
        Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final DEFAULT_OPERATING_CLASS:I = 0x51

.field private static final RESULT_NOT_VALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SupplicantP2pIfaceHal"

.field private static final WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final P2P_GO_OPER_FREQ:I

.field private mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

.field private mHidlSupplicantIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

.field private mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private final mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;


# direct methods
.method static synthetic -com_android_server_wifi_p2p_SupplicantP2pIfaceHal-mthref-0([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -get0(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initSupplicantP2pIface()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->initSupplicantService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mHidlSupplicantIface:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$1;-><init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    new-instance v0, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$19;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$19;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    new-instance v0, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$20;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$20;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->P2P_GO_OPER_FREQ:I

    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    return-void
.end method

.method private checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": ISupplicantP2pIface is null"

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

.method private getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getNetwork"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNetwork("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$4;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$4;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "getNetwork got null network"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getP2pNetworkMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2
.end method

.method private initSupplicantP2pIface()Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v7, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$2;

    invoke-direct {v7, v4}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v7}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return v9

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISupplicant.listInterfaces exception: "

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
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v5, "getInterface()"

    invoke-direct {v3, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    iget v5, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v5, v8, :cond_1

    :try_start_5
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v7, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$1;

    invoke-direct {v7, v3}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v1, v7}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "initSupplicantP2pIface got null iface"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    return v9

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISupplicant.getInterface exception: "

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
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getP2pIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantP2pIfaceDeath()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    monitor-exit v6

    return v9

    :cond_4
    monitor-exit v6

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    if-eqz v5, :cond_6

    new-instance v5, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    const-string/jumbo v6, "p2p0"

    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;-><init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V

    iput-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Callback registration failed. Initialization incomplete."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mCallback:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Sec callback registration failed. Initialization incomplete."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_6
    return v8
.end method

.method private initSupplicantService()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v3, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ISupplicant.getService exception: "

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
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToSupplicantDeath()Z
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

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_10849(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_15824(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_27006(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_35363(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    const-string/jumbo v3, "Could not process reported address."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_36995(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    const-string/jumbo v3, "Could not encode SSID."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_42892(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_56203(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    .locals 2

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_63268(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_67845(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_68888(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_70507(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_71706(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_72578(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_73478(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_78244(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_79321(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_84518(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_94796(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_95893(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_9743(Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

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

.method private linkToServiceManagerDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on IServiceManager"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v2, "IServiceManager.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private linkToSupplicantDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on ISupplicant"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v2, "ISupplicant.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private linkToSupplicantP2pIfaceDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on ISupplicantP2pIface"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v2, "ISupplicantP2pIface.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private listNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "listNetworks"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "listNetworks()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$5;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$5;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected static logCompletion(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

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
    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

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

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

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

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static stringToWpsConfigMethod(Ljava/lang/String;)S
    .locals 3

    const-string/jumbo v0, "usba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "ethernet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    const-string/jumbo v0, "int_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    return v0

    :cond_4
    const-string/jumbo v0, "ext_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    return v0

    :cond_5
    const-string/jumbo v0, "nfc_interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x40

    return v0

    :cond_6
    const-string/jumbo v0, "push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x80

    return v0

    :cond_7
    const-string/jumbo v0, "keypad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x100

    return v0

    :cond_8
    const-string/jumbo v0, "virtual_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x280

    return v0

    :cond_9
    const-string/jumbo v0, "physical_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x480

    return v0

    :cond_a
    const-string/jumbo v0, "p2ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1000

    return v0

    :cond_b
    const-string/jumbo v0, "virtual_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x2008

    return v0

    :cond_c
    const-string/jumbo v0, "physical_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4008

    return v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid WPS config method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private supplicantServiceDiedHandler()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private wpsInfoToConfigMethod(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported WPS provision method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelConnect()Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "cancelConnect"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "cancelConnect()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->cancelConnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public cancelServiceDiscovery(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "cancelServiceDiscovery"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v6

    return v9

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "cancelServiceDiscovery requires a valid tag."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return v9

    :cond_1
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    :try_start_3
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cancelServiceDiscovery("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v5, v2, v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->cancelServiceDiscovery(J)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    monitor-exit v6

    return v5

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Service discovery identifier invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    return v9

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISupplicantP2pIface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public cancelWps(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "cancelWps"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v5

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "Group name required when requesting WPS KEYPAD."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v5

    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelWps("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->cancelWps(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public configureExtListen(ZII)Z
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-ge p3, p2, :cond_0

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "configureExtListen"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return v6

    :cond_1
    if-nez p1, :cond_2

    const/4 p2, 0x0

    const/4 p3, 0x0

    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    :cond_3
    :try_start_1
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid parameters supplied to configureExtListen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v6

    :cond_4
    :try_start_2
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "configureExtListen("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p2, p3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->configureExtListen(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 13

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v12, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    const-string/jumbo v0, "setSsidPostfix"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "Could not connect: null config."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :cond_2
    :try_start_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "Could not parse null mac address."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :cond_3
    :try_start_3
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "Expected empty pin for PBC."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :cond_4
    const/4 v1, 0x0

    :try_start_4
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :try_start_5
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->wpsInfoToConfigMethod(I)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_5

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid WPS config method: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v7, v7, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :catch_0
    move-exception v9

    :try_start_6
    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "Could not parse peer mac address."

    invoke-static {v0, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :cond_5
    :try_start_7
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v3, ""

    :goto_0
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    const/4 v4, -0x2

    if-ne v0, v4, :cond_a

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    if-nez p2, :cond_8

    iget v10, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    if-ltz v10, :cond_6

    const/16 v0, 0xf

    if-le v10, v0, :cond_7

    :cond_6
    const/4 v10, 0x6

    :cond_7
    move v6, v10

    :cond_8
    new-instance v11, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connect("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v7, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$6;

    invoke-direct {v7, v11}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$6;-><init>(Ljava/lang/Object;)V

    move v4, p2

    invoke-interface/range {v0 .. v7}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->connect([BILjava/lang/String;ZZILandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    invoke-virtual {v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v12

    return-object v0

    :cond_9
    :try_start_a
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v3, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v8

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public enableWfd(Z)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "enableWfd"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableWfd("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->enableWfd(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public find(I)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "find"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    if-gez p1, :cond_1

    :try_start_1
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid timeout value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v6

    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "find("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public find(II)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "find"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    if-gez p1, :cond_1

    :try_start_1
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid timeout value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v6

    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "find("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_2

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->find(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_2
    const/16 v2, 0x64b

    if-ne p2, v2, :cond_3

    :try_start_5
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->findSocial()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_4

    const/16 v2, 0x1770

    if-ne p2, v2, :cond_5

    :cond_4
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    div-int/lit16 v4, p2, 0x3e8

    invoke-interface {v2, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->findChannel(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x2af8

    if-eq p2, v2, :cond_4

    if-lez p2, :cond_6

    const/16 v2, 0xa9

    if-gt p2, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->findChannel(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    goto :goto_0

    :cond_6
    const/16 v2, -0x3e7

    if-ne p2, v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->findGoOperFreq(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    goto :goto_0

    :cond_7
    const v2, 0x1869f

    if-ne p2, v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->findSearch(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_8
    monitor-exit v3

    return v6
.end method

.method public flush()Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "flush"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "flush()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->flush()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getClientList(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "getClientList"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v5

    return-object v8

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Invalid network id "

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v8

    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getClientList("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$15;

    invoke-direct {v4, v3}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$15;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getClientList(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    return-object v8

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo;

    invoke-direct {v6}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo;-><init>()V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return-object v4
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getDeviceAddress"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "getDeviceAddress()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$9;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$9;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->getDeviceAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v6

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 9

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "getGroupCapability"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v5

    return v8

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Cannot parse peer mac address."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v8

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    new-instance v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getGroupCapability("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v6, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$10;

    invoke-direct {v6, v0}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$10;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v3, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->getGroupCapability([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    return v8

    :catch_0
    move-exception v2

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse group address."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v8

    :catch_1
    move-exception v1

    :try_start_7
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    monitor-exit v5

    return v4
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getName"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "getName()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$3;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$3;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getNfcHandoverRequest"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "getNfcHandoverRequest()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$7;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$7;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->createNfcHandoverRequestMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "getNfcHandoverSelect"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return-object v6

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "getNfcHandoverSelect()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$8;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$8;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->createNfcHandoverSelectMessage(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-object v6

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2
.end method

.method protected getP2pIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;
    .locals 1

    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    move-result-object v0

    return-object v0
.end method

.method protected getP2pNetworkMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;
    .locals 1

    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v0

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

.method public getSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "getSsid"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v5

    return-object v8

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Cannot parse peer mac address."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v8

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSsid("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v6, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$11;

    invoke-direct {v6, v3}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$11;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->getSsid([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return-object v4

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse mac address."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return-object v8

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v5

    return-object v8

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v0

    return-object v0
.end method

.method public groupAdd(IZ)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "groupAdd"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "groupAdd("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->addGroup(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public groupAdd(Z)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->groupAdd(IZ)Z

    move-result v0

    return v0
.end method

.method public groupAdd(ZI)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "groupAdd"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "groupAdd("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->addGroupSpecificFreq(ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public groupRemove(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "groupRemove"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return v4

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "groupRemove("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->removeGroup(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public initialize()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v2, "Registering ISupplicant service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v3, "Supplicant HAL already initialized."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v7

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v3, "Failed to get HIDL Service Manager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v6

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->linkToServiceManagerDeath()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v2

    return v6

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v1, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    const-string/jumbo v3, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
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
    const-string/jumbo v1, "SupplicantP2pIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while trying to register a listener for ISupplicant service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "initiatorReportNfcHandover"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    return v7

    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initiatorReportNfcHandover("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    return v7

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public invite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v8

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "invite"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v6

    return v8

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Cannot invite to null group."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return v8

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Cannot invite to group with null owner."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return v8

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Group owner has no mac address."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return v8

    :cond_4
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-nez p2, :cond_5

    :try_start_5
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Cannot parse peer mac address."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    return v8

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Group owner mac address parse error."

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    return v8

    :cond_5
    :try_start_7
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v3

    :try_start_8
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invite("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v2, v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_0
    :try_start_a
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v5

    monitor-exit v6

    return v5

    :catch_1
    move-exception v1

    :try_start_b
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Peer mac address parse error."

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v6

    return v8

    :catch_2
    move-exception v0

    :try_start_c
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISupplicantP2pIface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public isInitializationComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

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

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_4240(J)V
    .locals 3

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

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

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_wifi_p2p_SupplicantP2pIfaceHal_4630(J)V
    .locals 3

    const-string/jumbo v0, "SupplicantP2pIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicant/ISupplicantStaIface died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public loadGroups(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    const-string/jumbo v12, "loadGroups"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    monitor-exit v13

    return v12

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->listNetworks()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    const/4 v12, 0x0

    monitor-exit v13

    return v12

    :cond_2
    :try_start_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v4

    if-nez v4, :cond_4

    const-string/jumbo v12, "SupplicantP2pIfaceHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to retrieve network object for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_4
    :try_start_3
    new-instance v9, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isCurrent("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v12, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$17;

    invoke-direct {v12, v9}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$17;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v12}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->isCurrent(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isCurrentCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-virtual {v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const-string/jumbo v12, "SupplicantP2pIfaceHal"

    const-string/jumbo v14, "Skipping current network"

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v12, "SupplicantP2pIfaceHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ISupplicantP2pIface exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/net/wifi/p2p/WifiP2pGroupList;->contains(I)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    new-instance v11, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getSsid("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v12, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$16;

    invoke-direct {v12, v11}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$16;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v12}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getSsidCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    :cond_7
    new-instance v8, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getBssid("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v12, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$14;

    invoke-direct {v12, v8}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$14;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v12}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getBssidCallback;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    invoke-virtual {v8}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-static {v12}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_8
    new-instance v10, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isGo("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    new-instance v12, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$18;

    invoke-direct {v12, v10}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$18;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v12}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->isGo(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$isGoCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    :try_start_b
    invoke-virtual {v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v3, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v12, "SupplicantP2pIfaceHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ISupplicantP2pIface exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    goto/16 :goto_2

    :catch_2
    move-exception v2

    const-string/jumbo v12, "SupplicantP2pIfaceHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ISupplicantP2pIface exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    goto/16 :goto_3

    :catch_3
    move-exception v2

    const-string/jumbo v12, "SupplicantP2pIfaceHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ISupplicantP2pIface exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :cond_a
    monitor-exit v13

    const/4 v12, 0x1

    return v12
.end method

.method public p2pGetAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v8

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v8

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "p2pGetAttribute"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    return-object v8

    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "p2pGetAttribute("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v6, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$21;

    invoke-direct {v6, v3}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$21;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p1, v2, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->p2pGetAttribute(Ljava/lang/String;[BLvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetAttributeCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    monitor-exit v5

    return-object v8

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse peer address."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return-object v8

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    :try_start_7
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v5

    return-object v4
.end method

.method public p2pGetPeerInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "p2pGetPeerInfo"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-object v4

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p2pGetPeerInfo("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v4, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$22;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$22;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->p2pGetPeerInfo(Ljava/lang/String;Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface$p2pGetPeerInfoCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public p2pListen(I)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "p2pListen"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    if-gez p1, :cond_1

    :try_start_1
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid timeout value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v6

    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p2pListen("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->p2pListen(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public p2pRemoveClient(Ljava/lang/String;Z)Z
    .locals 8

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v5, "Cannot parse peer mac address."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    const-string/jumbo v4, "p2pRemoveClient"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    return v6

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v5, "Peer mac address parse error."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    :cond_2
    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "p2pRemoveClient("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v4, v2, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->p2pRemoveClient([BZ)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "p2pSetCmd"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v3

    return v4

    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p2pSetCmd("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->p2pSetCmd(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public provisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v9

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "provisionDiscovery"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v6

    return v9

    :cond_1
    :try_start_1
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->wpsInfoToConfigMethod(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unrecognized WPS configuration method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v8, v8, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return v9

    :cond_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x2

    :cond_3
    :goto_0
    :try_start_2
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    if-nez v5, :cond_5

    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Cannot parse null mac address."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return v9

    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :try_start_3
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :try_start_4
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "provisionDiscovery("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v7, v7, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v5, v2, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->provisionDiscovery([BI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    monitor-exit v6

    return v5

    :catch_0
    move-exception v1

    :try_start_7
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    const-string/jumbo v7, "Could not parse peer mac address."

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v6

    return v9

    :catch_1
    move-exception v0

    :try_start_8
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISupplicantP2pIface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "registerCallback"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "registerCallback()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "registerCallbackEx"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "registerCallbackEx()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public reinvoke(ILjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v7

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "reinvoke"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    return v7

    :cond_2
    if-nez p2, :cond_3

    :try_start_1
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Cannot parse peer mac address."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v7

    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reinvoke("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v4, p1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->reinvoke(I[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse mac address."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v7

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public reject(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "reject"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v5

    return v7

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Cannot parse rejected peer\'s mac address."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v7

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reject("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v4, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->reject([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse peer mac address."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v7

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public removeNetwork(I)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "removeNetwork"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNetwork("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestServiceDiscovery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v6, "requestServiceDiscovery"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v7

    return-object v10

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v6, "SupplicantP2pIfaceHal"

    const-string/jumbo v8, "Cannot parse peer mac address."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-object v10

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-nez p2, :cond_2

    :try_start_3
    const-string/jumbo v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot parse service discovery query: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    return-object v10

    :catch_0
    move-exception v2

    :try_start_4
    const-string/jumbo v6, "SupplicantP2pIfaceHal"

    const-string/jumbo v8, "Could not process peer MAC address."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    return-object v10

    :cond_2
    const/4 v0, 0x0

    :try_start_5
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    :try_start_6
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestServiceDiscovery("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v8, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$12;

    invoke-direct {v8, v4}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$12;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v3, v0, v8}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    :try_start_8
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v5, :cond_3

    monitor-exit v7

    return-object v10

    :catch_1
    move-exception v2

    :try_start_9
    const-string/jumbo v6, "SupplicantP2pIfaceHal"

    const-string/jumbo v8, "Could not parse service query."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v7

    return-object v10

    :catch_2
    move-exception v1

    :try_start_a
    const-string/jumbo v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v6

    monitor-exit v7

    return-object v6
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "responderReportNfcHandover"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    return v7

    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responderReportNfcHandover("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    return v7

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public saveConfig()Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "saveConfig"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "saveConfig()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->saveConfig()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public serviceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 15

    iget-object v12, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    const-string/jumbo v11, "serviceAdd"

    invoke-direct {p0, v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v11, "SupplicantP2pIfaceHal"

    const-string/jumbo v13, "Null service info passed."

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_3

    const-string/jumbo v11, "SupplicantP2pIfaceHal"

    const-string/jumbo v13, "Invalid service description (null)."

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :cond_3
    :try_start_3
    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v11, v0

    const/4 v13, 0x3

    if-ge v11, v13, :cond_4

    const-string/jumbo v11, "SupplicantP2pIfaceHal"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Service specification invalid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :cond_4
    const/4 v6, 0x0

    :try_start_4
    const-string/jumbo v11, "upnp"

    const/4 v13, 0x0

    aget-object v13, v0, v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    if-eqz v11, :cond_7

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_5
    aget-object v11, v0, v11

    const/16 v13, 0x10

    invoke-static {v11, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    :try_start_6
    new-instance v7, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addUpnpService("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x1

    aget-object v13, v0, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x2

    aget-object v13, v0, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v11, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    const/4 v13, 0x2

    aget-object v13, v0, v13

    invoke-interface {v11, v10, v13}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v6, v7

    :cond_5
    :goto_0
    if-eqz v6, :cond_6

    :try_start_8
    invoke-virtual {v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    :cond_6
    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :catch_0
    move-exception v3

    :try_start_9
    const-string/jumbo v11, "SupplicantP2pIfaceHal"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UPnP Service specification invalid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :cond_7
    :try_start_a
    const-string/jumbo v11, "bonjour"

    const/4 v13, 0x0

    aget-object v13, v0, v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    aget-object v11, v0, v11

    if-eqz v11, :cond_5

    const/4 v11, 0x2

    aget-object v11, v0, v11
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    :try_start_b
    aget-object v11, v0, v11

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v11, 0x2

    aget-object v11, v0, v11

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v5

    :try_start_c
    new-instance v7, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addBonjourService("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x1

    aget-object v13, v0, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x2

    aget-object v13, v0, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v11, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v11, v4, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v6, v7

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_e
    const-string/jumbo v11, "SupplicantP2pIfaceHal"

    const-string/jumbo v13, "Invalid bonjour service description."

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :cond_8
    const/4 v11, 0x0

    monitor-exit v12

    return v11

    :catch_2
    move-exception v1

    :goto_1
    :try_start_f
    const-string/jumbo v11, "SupplicantP2pIfaceHal"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ISupplicantP2pIface exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_9
    const/4 v11, 0x1

    monitor-exit v12

    return v11

    :catch_3
    move-exception v1

    move-object v6, v7

    goto :goto_1
.end method

.method public serviceFlush()Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "serviceFlush"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "serviceFlush()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->flushServices()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public serviceRemove(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 14

    iget-object v11, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    const-string/jumbo v10, "serviceRemove"

    invoke-direct {p0, v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v10, "SupplicantP2pIfaceHal"

    const-string/jumbo v12, "Null service info passed."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_3

    const-string/jumbo v10, "SupplicantP2pIfaceHal"

    const-string/jumbo v12, "Invalid service description (null)."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :cond_3
    :try_start_3
    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v12, 0x3

    if-ge v10, v12, :cond_4

    const-string/jumbo v10, "SupplicantP2pIfaceHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Service specification invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :cond_4
    const/4 v5, 0x0

    :try_start_4
    const-string/jumbo v10, "upnp"

    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_5
    aget-object v10, v0, v10

    const/16 v12, 0x10

    invoke-static {v10, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    :try_start_6
    new-instance v6, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeUpnpService("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v12, 0x2

    aget-object v12, v0, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v10, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    const/4 v12, 0x2

    aget-object v12, v0, v12

    invoke-interface {v10, v9, v12}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v5, v6

    :cond_5
    :goto_0
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    :cond_6
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :catch_0
    move-exception v3

    :try_start_9
    const-string/jumbo v10, "SupplicantP2pIfaceHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UPnP Service specification invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :cond_7
    :try_start_a
    const-string/jumbo v10, "bonjour"

    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    aget-object v10, v0, v10
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    const/4 v10, 0x1

    :try_start_b
    aget-object v10, v0, v10

    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v4

    :try_start_c
    new-instance v6, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeBonjourService("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v10, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v10, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v5, v6

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_e
    const-string/jumbo v10, "SupplicantP2pIfaceHal"

    const-string/jumbo v12, "Invalid bonjour service description."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :cond_8
    :try_start_f
    const-string/jumbo v10, "SupplicantP2pIfaceHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown / unsupported P2P service requested: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :catch_2
    move-exception v1

    :goto_1
    :try_start_10
    const-string/jumbo v10, "SupplicantP2pIfaceHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ISupplicantP2pIface exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_9
    const/4 v10, 0x1

    monitor-exit v11

    return v10

    :catch_3
    move-exception v1

    move-object v5, v6

    goto :goto_1
.end method

.method public setClientList(ILjava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v7, "setClientList"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    monitor-exit v8

    return v11

    :cond_0
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SupplicantP2pIfaceHal"

    const-string/jumbo v9, "Invalid client list"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return v11

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->getNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v7, "SupplicantP2pIfaceHal"

    const-string/jumbo v9, "Invalid network id "

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return v11

    :cond_2
    :try_start_3
    new-instance v6, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setClientList("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "\\s+"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    const-string/jumbo v7, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ISupplicantP2pIface exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V

    :goto_1
    invoke-virtual {v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    monitor-exit v8

    return v7

    :cond_3
    :try_start_6
    invoke-interface {v5, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork;->setClientList(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_7
    const-string/jumbo v7, "SupplicantP2pIfaceHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal argument "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v8

    return v11

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public setGroupIdle(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setGroupIdle"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    return v6

    :cond_0
    if-gez p2, :cond_1

    :try_start_1
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid group timeout value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v6

    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGroupIdle("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setListenChannel(II)Z
    .locals 13

    const/16 v12, 0xa5

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v6, "setListenChannel"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v7

    return v10

    :cond_0
    if-lt p1, v11, :cond_1

    const/16 v6, 0xb

    if-gt p1, v6, :cond_1

    :try_start_1
    new-instance v5, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setListenChannel("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x51

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    const/16 v8, 0x51

    invoke-interface {v6, p1, v8}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setListenChannel(II)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    monitor-exit v7

    return v10

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    if-eqz p1, :cond_2

    monitor-exit v7

    return v10

    :cond_2
    if-ltz p2, :cond_5

    if-gt p2, v12, :cond_5

    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lt p2, v11, :cond_3

    if-gt p2, v12, :cond_3

    const/16 v6, 0xe

    if-gt p2, v6, :cond_4

    const/16 v6, 0x967

    :goto_1
    mul-int/lit8 v8, p2, 0x5

    add-int v1, v6, v8

    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;-><init>()V

    const/16 v6, 0x3e8

    iput v6, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    add-int/lit8 v6, v1, -0x5

    iput v6, v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;-><init>()V

    add-int/lit8 v6, v1, 0x5

    iput v6, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    const/16 v6, 0x1770

    iput v6, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v5, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDisallowedFrequencies("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v6, v4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v6

    monitor-exit v7

    return v6

    :cond_4
    const/16 v6, 0x1388

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    const-string/jumbo v6, "SupplicantP2pIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISupplicantP2pIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :cond_5
    monitor-exit v7

    return v10
.end method

.method public setMiracastMode(I)Z
    .locals 7

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "setMiracastMode"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    return v3

    :cond_0
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMiracastMode("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v3, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setMiracastMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setP2pIncBw(Ljava/lang/String;ZI)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setP2pIncBw"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setP2pIncBw("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2, p3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setP2pIncBw(Ljava/lang/String;ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setP2pNoa(Ljava/lang/String;ZI)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setP2pNoa"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setP2pNoa("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2, p3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setP2pNoa(Ljava/lang/String;ZI)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setPowerSave(Ljava/lang/String;Z)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setPowerSave"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPowerSave("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setSsidPostfix(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "setSsidPostfix"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v7

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    const-string/jumbo v5, "Invalid SSID postfix value (null)."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v7

    :cond_1
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSsidPostfix("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    const-string/jumbo v5, "Could not decode SSID."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v4

    return v7

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v3, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ISupplicantP2pIface exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "setWfdDeviceInfo"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v5

    return v7

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Cannot parse null WFD info string."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v7

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    new-instance v2, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWfdDeviceInfo("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v4, v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setWfdDeviceInfo([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse WFD Device Info string."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v7

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public setWpsConfigMethods(Ljava/lang/String;)Z
    .locals 9

    iget-object v6, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "setWpsConfigMethods"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :cond_0
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWpsConfigMethods("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v5, "\\s+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    aget-object v5, v1, v3

    invoke-static {v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->stringToWpsConfigMethod(Ljava/lang/String;)S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    or-int/2addr v5, v0

    int-to-short v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v5, v0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    monitor-exit v6

    return v5

    :catch_0
    move-exception v2

    :try_start_4
    const-string/jumbo v5, "SupplicantP2pIfaceHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISupplicantP2pIface exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setWpsDeviceName(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "setWpsDeviceName"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return v4

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWpsDeviceName("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setWpsDeviceType(Ljava/lang/String;)Z
    .locals 14

    const/4 v10, 0x3

    const/4 v13, 0x0

    :try_start_0
    sget-object v9, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    if-eq v9, v10, :cond_1

    :cond_0
    const-string/jumbo v9, "SupplicantP2pIfaceHal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Malformed WPS device type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    const/16 v9, 0x8

    new-array v1, v9, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v9, "setWpsDeviceType"

    invoke-direct {p0, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    return v13

    :cond_2
    :try_start_3
    new-instance v7, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setWpsDeviceType("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v9, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v9, v1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v7}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    return v9

    :catch_0
    move-exception v3

    :try_start_7
    const-string/jumbo v9, "SupplicantP2pIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ISupplicantP2pIface exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_8
    monitor-exit v10

    throw v9
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v4

    const-string/jumbo v9, "SupplicantP2pIfaceHal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Illegal argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v13
.end method

.method public startP2pListenOffloading(IIII)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "startP2pListenOffloading"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startP2pListenOffloading("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->startP2pListenOffloading(IIII)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Group name required when requesting WPS PBC. Got ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "startWpsPbc"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v5

    return v7

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startWpsPbc("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v4, p1, v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse BSSID."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return v7

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v7

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "startWpsPinDisplay"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v5

    return-object v7

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Group name required when requesting WPS KEYPAD."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v3, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startWpsPinDisplay("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    new-instance v6, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$13;

    invoke-direct {v6, v3}, Lcom/android/server/wifi/p2p/-$Lambda$gT4KmMIiMXRpxldJVwXfElmESAo$13;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p1, v2, v6}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v5

    return-object v4

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    const-string/jumbo v6, "Could not parse BSSID."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return-object v7

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "SupplicantP2pIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISupplicantP2pIface exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "startWpsPinKeypad"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v3

    return v5

    :cond_2
    if-nez p1, :cond_3

    :try_start_1
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "Group name required when requesting WPS KEYPAD."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v5

    :cond_3
    if-nez p2, :cond_4

    :try_start_2
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    const-string/jumbo v4, "PIN required when requesting WPS KEYPAD."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v5

    :cond_4
    :try_start_3
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startWpsPinKeypad("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public stopFind()Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "stopFind"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "stopFind()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->stopFind()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public stopP2pListenOffloading()Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "stopP2pListenOffloading"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->checkSupplicantP2pIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    const-string/jumbo v2, "stopP2pListenOffloading()"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->mISupplicantP2pIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;

    invoke-interface {v2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIface;->stopP2pListenOffloading()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SupplicantP2pIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISupplicantP2pIface exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
