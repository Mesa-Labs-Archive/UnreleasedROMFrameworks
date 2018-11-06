.class Lcom/samsung/android/server/wifi/AutoWifiController$2;
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$2;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiController$2;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiController;->sendMessage(I)V

    return-void
.end method
