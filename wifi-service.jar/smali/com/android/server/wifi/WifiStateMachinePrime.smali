.class public Lcom/android/server/wifi/WifiStateMachinePrime;
.super Ljava/lang/Object;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
    }
.end annotation


# static fields
.field static final BASE:I = 0x20000

.field static final CMD_AP_STOPPED:I = 0x20018

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20016

.field static final CMD_STOP_AP:I = 0x20017

.field private static final TAG:Ljava/lang/String; = "WifiStateMachinePrime"


# instance fields
.field private mApConfigQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;

.field private mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWificond:Landroid/net/wifi/IWificond;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiStateMachinePrime;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mApConfigQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/IWificond;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWificond:Landroid/net/wifi/IWificond;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiStateMachinePrime;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWificond:Landroid/net/wifi/IWificond;

    return-object p1
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiInjector;Landroid/os/Looper;Landroid/os/INetworkManagementService;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mApConfigQueue:Ljava/util/Queue;

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mNMService:Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWificond:Landroid/net/wifi/IWificond;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWificond:Landroid/net/wifi/IWificond;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v1}, Landroid/net/wifi/IWificond;->tearDownInterfaces()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiStateMachinePrime"

    const-string/jumbo v2, "wificond died during framework startup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "Received call to disable wifi when it is already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(I)V

    return-void
.end method


# virtual methods
.method public disableWifi()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->changeMode(I)V

    return-void
.end method

.method public enterClientMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->changeMode(I)V

    return-void
.end method

.method public enterScanOnlyMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->changeMode(I)V

    return-void
.end method

.method public enterSoftAPMode(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mApConfigQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->changeMode(I)V

    return-void
.end method

.method protected getCurrentMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime;->mModeStateMachine:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "WifiDisabledState"

    return-object v0
.end method
