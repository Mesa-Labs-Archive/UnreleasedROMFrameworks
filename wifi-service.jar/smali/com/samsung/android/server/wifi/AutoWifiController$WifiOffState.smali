.class Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiOffState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private allowWifiStateChange()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap0(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap3(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public enter()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap14(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap6(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap8(Lcom/samsung/android/server/wifi/AutoWifiController;Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get26(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_0
    :sswitch_1
    return v2

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap1(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap8(Lcom/samsung/android/server/wifi/AutoWifiController;Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;)Z

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiOffState;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get26(Lcom/samsung/android/server/wifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
