.class Lcom/android/server/wifi/WifiController$ApStaDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaDisabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field private mSoftApDelayed:Z

.field private mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApDelayed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

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

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms mApStaDisabledState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    iget v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApDelayed:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v5

    :pswitch_1
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiApState()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "illegal state found both WifiController and WifiStateMachine"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ApStaDisabledState CMD_SET_AP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_9

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "SoftApModeConfiguration msg.obj is null"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/android/server/wifi/SoftApModeConfiguration;-><init>(ILandroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    :goto_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/SoftApModeConfiguration;

    iput-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mSoftApWifiConfig:Lcom/android/server/wifi/SoftApModeConfiguration;

    goto :goto_2

    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "illegal state found both WifiController and WifiStateMachine and softap"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get22(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Lcom/android/server/wifi/SoftApModeConfiguration;Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "DEFERRED_TOGGLE ignored due to serial mismatch mApStaDisabledState"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "DEFERRED_TOGGLE handled"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
