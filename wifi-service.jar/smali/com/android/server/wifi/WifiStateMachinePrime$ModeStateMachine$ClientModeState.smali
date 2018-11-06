.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientModeState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get5(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->-set0(Lcom/android/server/wifi/WifiStateMachinePrime;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;

    return-void
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
