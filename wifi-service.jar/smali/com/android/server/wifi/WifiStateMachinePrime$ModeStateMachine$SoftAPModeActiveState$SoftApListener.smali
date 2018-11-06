.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;
.super Ljava/lang/Object;
.source "WifiStateMachinePrime.java"

# interfaces
.implements Lcom/android/server/wifi/SoftApManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApListener"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get1(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get1(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiApState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getWifiConnectedFrequency()Landroid/net/wifi/WifiInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStateChanged(II)V
    .locals 2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    const v1, 0x20018

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState$SoftApListener;->this$2:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$SoftAPModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->-get3(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    const v1, 0x20016

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setMobileApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method
