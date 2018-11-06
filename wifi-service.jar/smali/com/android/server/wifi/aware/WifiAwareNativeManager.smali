.class Lcom/android/server/wifi/aware/WifiAwareNativeManager;
.super Ljava/lang/Object;
.source "WifiAwareNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;,
        Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareNativeManager"


# instance fields
.field private mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private mInterfaceAvailableForRequestListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

.field private mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

.field private final mLock:Ljava/lang/Object;

.field private mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

.field private mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field private mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/HalDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceAvailableForRequestListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->awareIsDown()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->tryToGetAware()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceAvailableForRequestListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v1, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/HalDeviceManager;->registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->tryToGetAware()V

    :cond_0
    return-void
.end method

.method private awareIsDown()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, "status=null"

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private tryToGetAware()V
    .locals 7

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wifi/HalDeviceManager;->createNanIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)Landroid/hardware/wifi/V1_0/IWifiNanIface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiAwareNativeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IWifiNanIface.registerEventCallback error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "WifiAwareNativeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IWifiNanIface.registerEventCallback exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-void

    :cond_2
    :try_start_4
    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->enableUsage()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WifiAwareNativeManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWifiNanIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/HalDeviceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
