.class Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/SoftApManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiConnectedFrequency()Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public onStateChanged(II)V
    .locals 3

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20018

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    return-void

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20016

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;IILjava/lang/String;I)V

    return-void
.end method

.method public setMobileApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$WifiOrSoftApModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
