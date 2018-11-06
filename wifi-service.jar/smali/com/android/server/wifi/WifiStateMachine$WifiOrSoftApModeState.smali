.class Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiOrSoftApModeState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;
    }
.end annotation


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mMode:I

.field private mResetSoftAp:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    return-void
.end method

.method private endsoftAp()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endsoftAp mOperationalMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager;->sendHistoricalDumplog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->cleanSoftApManager()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v0, v2, v4, v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set42(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/SoftApModeConfiguration;)Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    return-void
.end method

.method private moveToWifiState()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToWifiState : MHS Disabled WifiState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get131(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current WifiStateMachine State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get131(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get131(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get127(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20083

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private startSoftAp(Lcom/android/server/wifi/SoftApModeConfiguration;)Z
    .locals 8

    const/4 v7, 0x1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "startSoftAp"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "config is null , so not starting softAP"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-static {v2, v5, v4, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChangeAndUpdate(Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get125(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->setupForSoftApMode()Landroid/net/wifi/IApInterface;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-static {v2, v5, v4, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "startSoftAp apInterface == null"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v4

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IApInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mIfaceName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    new-instance v5, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;

    invoke-direct {v5, p0, v6}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;)V

    invoke-virtual {p1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/android/server/wifi/WifiInjector;->makeSoftApManager(Landroid/os/INetworkManagementService;Lcom/android/server/wifi/SoftApManager$Listener;Landroid/net/wifi/IApInterface;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SoftApManager;->setRvfMode(I)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v2

    const-string/jumbo v3, "swlan0"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SoftApManager;->setInterface(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getExtenderMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SoftApManager;->setExtenderMode(I)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SoftApManager;->enableVerboseLogging(Z)V

    return v7

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-static {v2, v5, v4, v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "startSoftAp mIfaceName == null"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v4
.end method


# virtual methods
.method public enter()V
    .locals 2

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "enter WifiOrSoftApModeState"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "exit WifiOrSoftApModeState"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    return v4

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get125(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string/jumbo v2, "swlan0"

    invoke-virtual {v1, v2, v6}, Lcom/android/server/wifi/WifiNative;->setApInterface(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->startSoftAp(Lcom/android/server/wifi/SoftApModeConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "setApInterface SUP_CONNECTION_EVENT create Sucess swlan0"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager;->start()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-static {v1, v8, v4, v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "setApInterface SUP_CONNECTION_EVENT create FAILED swlan0"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20016

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_2
    return v4

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApModeConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->startSoftAp(Lcom/android/server/wifi/SoftApModeConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager;->start()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "Failed to softap create interface =swlan0"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get126(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20016

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager;->stop()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "SoftApManager is null so ignoring stop & post endsoftAp"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->endsoftAp()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->moveToWifiState()V

    goto/16 :goto_0

    :sswitch_3
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get125(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string/jumbo v2, "swlan0"

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wifi/WifiNative;->setApInterface(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "swlan0 interface deletion failed"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->endsoftAp()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->moveToWifiState()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got Driver Hung event, restart supplicant mResetSoftAp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->endsoftAp()V

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    if-ne v1, v6, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    const v2, 0x24002

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x1388

    const v4, 0x2000b

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-static {v1, v8, v4, v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get125(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string/jumbo v2, "swlan0"

    invoke-virtual {v1, v2, v6}, Lcom/android/server/wifi/WifiNative;->setApInterface(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "setApInterface CMD_DISABLE_P2P_RSP create Sucess"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20134

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "setApInterface CMD_DISABLE_P2P_RSP create FAILEDswlan0"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20016

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got CMD_DISABLE_P2P_RSP to start AP, it illegal wifiapstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Supplicant start getCurrent State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get126(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    if-ne v1, v2, :cond_e

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    :cond_d
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x24001

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_e
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v7, :cond_f

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v8, :cond_f

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v3, 0x20015

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    return v4

    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "Deferring CMD_SET_OPERATIONAL_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection lost, restart supplicant mSoftApOperationalMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_14

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get126(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    if-ne v1, v2, :cond_12

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x2400c

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap62(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    :cond_12
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x24002

    if-ne v1, v2, :cond_13

    const v1, 0x24002

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    goto :goto_2

    :cond_13
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->mResetSoftAp:I

    goto :goto_2

    :cond_14
    return v4

    :sswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal CMD_START_AP msg received. Move to initalstate mSoftApOperationalMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v1, v7, :cond_15

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :cond_15
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, -0x4

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set63(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_5
        0x20015 -> :sswitch_8
        0x20016 -> :sswitch_3
        0x20017 -> :sswitch_2
        0x20018 -> :sswitch_3
        0x20048 -> :sswitch_6
        0x20085 -> :sswitch_4
        0x20134 -> :sswitch_1
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_7
        0x2400c -> :sswitch_7
    .end sparse-switch
.end method
