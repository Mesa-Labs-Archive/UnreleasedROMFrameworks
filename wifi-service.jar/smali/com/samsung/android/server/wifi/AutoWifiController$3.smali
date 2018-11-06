.class Lcom/samsung/android/server/wifi/AutoWifiController$3;
.super Landroid/content/BroadcastReceiver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set4(Lcom/samsung/android/server/wifi/AutoWifiController;I)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get12(Lcom/samsung/android/server/wifi/AutoWifiController;)I

    move-result v4

    if-eq v4, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set5(Lcom/samsung/android/server/wifi/AutoWifiController;I)I

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/AutoWifiController$3;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainMessage(II)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
