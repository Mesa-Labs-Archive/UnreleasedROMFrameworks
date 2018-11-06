.class Lcom/samsung/android/server/wifi/AutoWifiController$7;
.super Landroid/database/ContentObserver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;->registerForScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$7;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$7;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiController$7;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$7;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap1(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
