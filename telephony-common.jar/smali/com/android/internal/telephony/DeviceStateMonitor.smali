.class public Lcom/android/internal/telephony/DeviceStateMonitor;
.super Landroid/os/Handler;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DeviceStateMonitor$1;,
        Lcom/android/internal/telephony/DeviceStateMonitor$2;
    }
.end annotation


# static fields
.field protected static final DBG:Z = false

.field private static final EVENT_CHARGING_STATE_CHANGED:I = 0x3

.field private static final EVENT_POWER_SAVE_MODE_CHANGED:I = 0x2

.field private static final EVENT_RIL_CONNECTED:I = 0x0

.field private static final EVENT_SCREEN_STATE_CHANGED:I = 0x1

.field private static final EVENT_TETHERING_STATE_CHANGED:I = 0x4

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mIsCharging:Z

.field private mIsLowDataExpected:Z

.field private mIsPowerSaveOn:Z

.field private mIsScreenOn:Z

.field private mIsTetheringOn:Z

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mUnsolicitedResponseFilter:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    new-instance v2, Lcom/android/internal/telephony/DeviceStateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$1;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Lcom/android/internal/telephony/DeviceStateMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$2;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isDeviceCharging()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DeviceStateMonitor mIsPowerSaveOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mIsScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mIsCharging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.os.action.CHARGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3, v1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private deviceTypeToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "CHARGING_STATE"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "LOW_DATA_EXPECTED"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "POWER_SAVE_MODE"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "SCREEN_STATE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method private isDeviceCharging()Z
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "batterymanager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    return v1
.end method

.method private isLowDataExpected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowerSaveModeOn()Z
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    return v1
.end method

.method private isScreenOn()Z
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "display"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v8

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "Screens all off"

    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v4

    :cond_2
    const-string/jumbo v3, "No displays found"

    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v4
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onRilConnected()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "RIL connected."

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    return-void
.end method

.method private sendDeviceState(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDeviceState(IZLandroid/os/Message;)V

    return-void
.end method

.method private setUnsolResponseFilter(IZ)V
    .locals 2

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    if-eq p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "old filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", new filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setUnsolResponseFilter(ILandroid/os/Message;)V

    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    :cond_1
    return-void
.end method

.method private shouldTurnOffDormancyUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldTurnOffFullNetworkUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldTurnOffSignalStrength()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDeviceState(IZ)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isLowDataExpected()Z

    move-result v2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffSignalStrength()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffFullNetworkUpdate()Z

    move-result v1

    if-nez v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffDormancyUpdate()Z

    move-result v1

    if-nez v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    return-void

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-ne v1, p2, :cond_5

    return-void

    :cond_5
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-ne v1, p2, :cond_6

    return-void

    :cond_6
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-ne v1, p2, :cond_7

    return-void

    :cond_7
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsTetheringOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsPowerSaveOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsLowDataExpected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUnsolicitedResponseFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "Local logs:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->updateDeviceState(IZ)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->onRilConnected()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
