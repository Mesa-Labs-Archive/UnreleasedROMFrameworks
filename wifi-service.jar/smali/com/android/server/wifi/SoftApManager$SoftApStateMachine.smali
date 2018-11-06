.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
    }
.end annotation


# static fields
.field public static final AP_STA_DISCONNECT_DELAY:I = 0xea60

.field public static final AP_STA_RECONNECT_DELAY:I = 0x2710

.field public static final CMD_AP_INTERFACE_BINDER_DEATH:I = 0x2

.field public static final CMD_AP_STA_DISCONNECT:I = 0x5

.field public static final CMD_AP_STA_RECONNECT:I = 0x6

.field public static final CMD_INTERFACE_STATUS_CHANGED:I = 0x3

.field public static final CMD_RESET:I = 0x4

.field public static final CMD_START:I = 0x0

.field public static final CMD_STOP:I = 0x1

.field public static final RESET_DELAY:I = 0x258


# instance fields
.field intent:Landroid/content/Intent;

.field private final mDeathRecipient:Lcom/android/server/wifi/StateMachineDeathRecipient;

.field private final mIdleState:Lcom/android/internal/util/State;

.field private mNetworkObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

.field private final mStartedState:Lcom/android/internal/util/State;

.field mac:Ljava/lang/String;

.field sb:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/StateMachineDeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mDeathRecipient:Lcom/android/server/wifi/StateMachineDeathRecipient;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mNetworkObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mNetworkObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$NetworkObserver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const-string/jumbo v0, "SoftApManager"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mac:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sb:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->intent:Landroid/content/Intent;

    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/wifi/StateMachineDeathRecipient;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/StateMachineDeathRecipient;-><init>(Lcom/android/internal/util/StateMachine;I)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mDeathRecipient:Lcom/android/server/wifi/StateMachineDeathRecipient;

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->setLogRecSize(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->setLogOnlyTransitions(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->start()V

    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/SoftApManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SoftApManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->printTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method printTime()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "unknown"

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CMD_START"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "CMD_STOP"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
