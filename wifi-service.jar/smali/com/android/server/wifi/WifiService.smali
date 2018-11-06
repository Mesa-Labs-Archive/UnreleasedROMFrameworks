.class public final Lcom/android/server/wifi/WifiService;
.super Lcom/android/server/SystemService;
.source "WifiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiService"


# instance fields
.field final mImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl;

    new-instance v1, Lcom/android/server/wifi/WifiInjector;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/WifiInjector;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/wifi/util/WifiAsyncChannel;

    const-string/jumbo v3, "WifiService"

    invoke-direct {v2, v3}, Lcom/android/server/wifi/util/WifiAsyncChannel;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/internal/util/AsyncChannel;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "WifiService"

    const-string/jumbo v1, "Registering wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi"

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->handleUserStop(I)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->handleUserUnlock(I)V

    return-void
.end method
