.class Lcom/android/server/wifi/WifiStateMachine$SoftApState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;
    }
.end annotation


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiStateMachine$SoftApState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v3

    iget v4, v3, Landroid/os/Message;->what:I

    const v5, 0x20015

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal transition to SoftApState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get125(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->setupForSoftApMode()Landroid/net/wifi/IApInterface;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IApInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mIfaceName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    new-instance v7, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;

    invoke-direct {v7, p0, v8}, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachine$SoftApState;Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;)V

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApModeConfiguration;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/android/server/wifi/WifiInjector;->makeSoftApManager(Landroid/os/INetworkManagementService;Lcom/android/server/wifi/SoftApManager$Listener;Landroid/net/wifi/IApInterface;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/SoftApManager;->setRvfMode(I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/SoftApManager;->enableVerboseLogging(Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/SoftApManager;->start()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get132(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateTracker;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateTracker;->updateState(I)V

    return-void

    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "config is null in SoftApState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager;->sendHistoricalDumplog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->cleanSoftApManager()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set42(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiCountryCode;->setReadyForChange(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mIfaceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set38(Lcom/android/server/wifi/WifiStateMachine;I)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->setSoftApReset()V

    :cond_0
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->stop()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
