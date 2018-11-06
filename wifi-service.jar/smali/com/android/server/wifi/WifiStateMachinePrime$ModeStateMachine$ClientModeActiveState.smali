.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;
.super Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientModeActiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/ClientModeManager;

    invoke-direct {v0}, Lcom/android/server/wifi/ClientModeManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ClientModeActiveState;->mActiveModeManager:Lcom/android/server/wifi/ActiveModeManager;

    return-void
.end method
