.class Lcom/samsung/android/server/wifi/AutoWifiController$4;
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$4;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$4;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->-set2(Lcom/samsung/android/server/wifi/AutoWifiController;Z)Z

    const-string/jumbo v2, "AutoWifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p2p "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$4;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get8(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "connected"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "disconnected"

    goto :goto_0
.end method
