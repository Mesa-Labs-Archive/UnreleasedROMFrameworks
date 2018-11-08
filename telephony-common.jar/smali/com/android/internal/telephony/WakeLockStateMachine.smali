.class public abstract Lcom/android/internal/telephony/WakeLockStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WakeLockStateMachine$1;,
        Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_BROADCAST_COMPLETE:I = 0x2

.field public static final EVENT_GET_LOC_FOR_CB_DONE:I = 0x5

.field public static final EVENT_GET_PLMN_FOR_CB_DONE:I = 0x6

.field public static final EVENT_NEW_SMS_MESSAGE:I = 0x1

.field static final EVENT_RELEASE_WAKE_LOCK:I = 0x3

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x4

.field private static final WAKE_LOCK_TIMEOUT:I = 0xbb8


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

.field private final mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$1;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method


# virtual methods
.method public final dispatchSmsMessage(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->quit()V

    return-void
.end method

.method protected handleLocationInfo(Landroid/os/AsyncResult;)V
    .locals 1

    const-string/jumbo v0, "handleLocationInfo in WakeLockStateMachine. It will be used in GsmCellBroadcastHandler."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected handleOperatorInfo(Landroid/os/AsyncResult;)V
    .locals 1

    const-string/jumbo v0, "handleOperatorInfo in WakeLockStateMachine. It will be used in GsmCellBroadcastHandler."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract handleSmsMessage(Landroid/os/Message;)Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected onQuitting()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
