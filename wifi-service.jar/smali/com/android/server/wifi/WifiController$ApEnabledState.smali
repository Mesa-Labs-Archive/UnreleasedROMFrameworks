.class Lcom/android/server/wifi/WifiController$ApEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApEnabledState"
.end annotation


# instance fields
.field private mPendingState:Lcom/android/internal/util/State;

.field private mResetSoftAp:Z

.field private mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mResetSoftAp:Z

    return-void
.end method

.method private getNextWifiState()Lcom/android/internal/util/State;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v0

    if-ne v0, v3, :cond_2

    const-string/jumbo v0, "TMB"

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MTR"

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TMK"

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isUsbTethered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "Wi-Fi hotspot enable succeeded"

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/samsung/android/server/wifi/WifiMobileDeviceManager;->auditLog(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "Wi-Fi hotspot disable succeeded"

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/samsung/android/server/wifi/WifiMobileDeviceManager;->auditLog(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    return v5

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getRvfMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiApState(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    :cond_1
    :goto_0
    :sswitch_1
    return v6

    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto :goto_0

    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    :cond_2
    const-string/jumbo v1, "WifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShutDown.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "WifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CMD_RESET_AP mResetSoftAp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mResetSoftAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mResetSoftAp:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-direct {v1, v6, v0}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mResetSoftAp:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "WifiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CMD_AP_STOPPED mResetSoftAp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mResetSoftAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mResetSoftAp:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-nez v1, :cond_7

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mResetSoftAp:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    :goto_2
    iput-object v4, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_6
        0x26008 -> :sswitch_2
        0x26009 -> :sswitch_0
        0x2600a -> :sswitch_3
        0x2600d -> :sswitch_7
        0x2600e -> :sswitch_6
        0x2600f -> :sswitch_5
        0x26016 -> :sswitch_4
        0x26017 -> :sswitch_1
    .end sparse-switch
.end method
