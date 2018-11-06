.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;
    }
.end annotation


# instance fields
.field private mClientInterface:Landroid/net/wifi/IClientInterface;

.field mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

.field mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

.field mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

.field private mInterfaceEventHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

.field mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

.field mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

.field private mWificond:Landroid/net/wifi/IWificond;

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Landroid/net/wifi/IClientInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mClientInterface:Landroid/net/wifi/IClientInterface;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInterfaceEventHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Landroid/net/wifi/IWificond;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mWificond:Landroid/net/wifi/IWificond;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/net/wifi/IClientInterface;)Landroid/net/wifi/IClientInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mClientInterface:Landroid/net/wifi/IClientInterface;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;)Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInterfaceEventHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mWificond:Landroid/net/wifi/IWificond;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->hasOutstandingReponderRequests()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v0, "RttStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private hasOutstandingReponderRequests()Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v2, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method currentState()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
