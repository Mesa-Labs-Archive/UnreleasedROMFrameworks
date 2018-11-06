.class public final Lcom/android/server/wifi/RttService;
.super Lcom/android/server/SystemService;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "RttService"

.field private static final WIFICOND_SERVICE_NAME:Ljava/lang/String; = "wificond"


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiRttService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string/jumbo v0, "RttService"

    const-string/jumbo v1, "Creating rttmanager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "RttService"

    const-string/jumbo v1, "Registering rttmanager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->startService()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiInjector;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v0, "RttService"

    const-string/jumbo v1, "Starting rttmanager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "rttmanager"

    iget-object v1, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
