.class public final Lcom/android/server/wifi/aware/WifiAwareService;
.super Lcom/android/server/SystemService;
.source "WifiAwareService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAwareService"


# instance fields
.field final mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 9

    const/16 v7, 0x1f4

    if-ne p1, v7, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v7, "WifiAwareService"

    const-string/jumbo v8, "onBootPhase(PHASE_SYSTEM_SERVICES_READY): NULL injector!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getHalDeviceManager()Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->initialize()V

    new-instance v5, Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-direct {v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;-><init>()V

    new-instance v3, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-direct {v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    new-instance v4, Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-direct {v4, v5, v1, v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V

    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-direct {v2, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    invoke-virtual {v5, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->setNative(Lcom/android/server/wifi/aware/WifiAwareNativeApi;)V

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiInjector;->getWifiAwareHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-virtual {v7, v0, v5}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->start(Landroid/os/HandlerThread;Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v7, 0x3e8

    if-ne p1, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->startLate()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "WifiAwareService"

    const-string/jumbo v1, "Registering wifiaware"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifiaware"

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareService;->mImpl:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
