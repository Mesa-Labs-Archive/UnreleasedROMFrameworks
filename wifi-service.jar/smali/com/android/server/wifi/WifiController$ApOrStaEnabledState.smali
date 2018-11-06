.class Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApOrStaEnabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field private mPendingState:Lcom/android/internal/util/State;

.field private mResetArg:I

.field private mResetSoftAp:Z

.field private mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetArg:I

    return-void
.end method

.method private checkNextStateTransition()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms ApOrStaEnabledState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    const/4 v1, 0x1

    return v1
.end method

.method private getNextWifiState()Lcom/android/internal/util/State;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

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
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isUsbTethered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v4

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return-object v4

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "WifiController"

    const-string/jumbo v2, "Wi-Fi hotspot enable succeeded"

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/samsung/android/server/wifi/WifiMobileDeviceManager;->auditLog(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "Transition to ApOrStaEnabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDisabledTimestamp:J

    iget v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    return-void
.end method

.method public exit()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

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
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2, p1, p0}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v6

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    move-result-object v3

    if-ne v2, v3, :cond_4

    :cond_1
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getRvfMode()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiApState(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    :cond_3
    :goto_0
    :pswitch_2
    return v5

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CMD_SET_AP msg.arg1 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "msg.arg2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "CurrentState :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    goto/16 :goto_0

    :cond_8
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "SoftApModeConfiguration msg.obj is null"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    move-result-object v3

    if-eq v2, v3, :cond_c

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get1()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "Received msg from Wifi Sub states"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    if-ne v2, v8, :cond_b

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/SoftApModeConfiguration;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    goto :goto_1

    :cond_b
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "during WIFI_AP_STATE_DISABLING we deffered the CMD_SET_AP.."

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "only for illegal and timing issue WifiApState():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    if-ne v2, v8, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "Illegal MHS State found in WifiController and WifiStateMachine"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CMD_RESET_AP mResetSoftAp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    if-nez v2, :cond_3

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    :goto_3
    new-instance v2, Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-direct {v2, v5, v1}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetArg:I

    goto/16 :goto_0

    :cond_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    goto :goto_3

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mResetSoftAp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mResetArg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetArg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mPendingState..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get1()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiController;->logForWifiSharing()V

    :cond_e
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-nez v2, :cond_10

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetSoftAp:Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iput v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mResetArg:I

    :goto_4
    iput-object v7, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    goto/16 :goto_0

    :cond_f
    new-instance v2, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    goto :goto_4

    :cond_10
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->checkNextStateTransition()V

    iput-object v7, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto/16 :goto_0

    :pswitch_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    move-result-object v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isExtenderEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->checkNextStateTransition()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_a
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "DEFERRED_TOGGLE handled with CMD_WIFI_TOGGLED ApOrStaEnabledState"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_13
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "DEFERRED_TOGGLE handled in ApOrStaEnabled State"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_14
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    if-eq v2, v3, :cond_13

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "DEFERRED_TOGGLE ignored due to serial mismatch ApOrStaEnabledState"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
