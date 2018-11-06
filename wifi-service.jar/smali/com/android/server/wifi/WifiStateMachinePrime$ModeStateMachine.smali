.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;,
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;
    }
.end annotation


# static fields
.field public static final CMD_DISABLE_WIFI:I = 0x3

.field public static final CMD_START_CLIENT_MODE:I = 0x0

.field public static final CMD_START_SCAN_ONLY_MODE:I = 0x1

.field public static final CMD_START_SOFT_AP_MODE:I = 0x2


# instance fields
.field private final mClientModeActiveState:Lcom/android/internal/util/State;

.field private final mClientModeState:Lcom/android/internal/util/State;

.field private final mScanOnlyModeActiveState:Lcom/android/internal/util/State;

.field private final mScanOnlyModeState:Lcom/android/internal/util/State;

.field private final mSoftAPModeActiveState:Lcom/android/internal/util/State;

.field private final mSoftAPModeState:Lcom/android/internal/util/State;

.field private final mWifiDisabledState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->checkForAndHandleModeChange(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->tearDownInterfaces()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    const-string/jumbo v0, "WifiStateMachinePrime"

    invoke-static {p1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get2(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$WifiDisabledState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeActiveState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeActiveState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeActiveState:Lcom/android/internal/util/State;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->addState(Lcom/android/internal/util/State;)V

    const-string/jumbo v0, "WifiStateMachinePrime"

    const-string/jumbo v1, "Starting Wifi in WifiDisabledState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->start()V

    return-void
.end method

.method private checkForAndHandleModeChange(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string/jumbo v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to ClientMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mClientModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const-string/jumbo v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to ScanOnlyMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mScanOnlyModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to SoftApMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mSoftAPModeState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "WifiStateMachinePrime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to WifiDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->mWifiDisabledState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCurrentMode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tearDownInterfaces()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get6(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/IWificond;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get6(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/net/wifi/IWificond;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/IWificond;->tearDownInterfaces()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachinePrime;->-set0(Lcom/android/server/wifi/WifiStateMachinePrime;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiStateMachinePrime"

    const-string/jumbo v2, "Failed to tear down interfaces via wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
