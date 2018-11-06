.class Lcom/samsung/android/server/wifi/AutoWifiController$5;
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$5;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x12

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiController"

    const-string/jumbo v1, "onReceive CONFIGURED_NETWORKS_CHANGED_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$5;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap16(Lcom/samsung/android/server/wifi/AutoWifiController;I)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$5;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessageDelayed(IJ)V

    return-void
.end method
