.class Lcom/samsung/android/server/wifi/AutoWifiController$8;
.super Landroid/database/ContentObserver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;->registerForAutoWifiModeChange()V
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap2(Lcom/samsung/android/server/wifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    goto :goto_0
.end method
