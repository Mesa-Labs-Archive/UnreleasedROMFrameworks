.class Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoWifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/AutoWifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "AutoWifiNotiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.android.server.wifi.AutoWifiNotificationController.SETTINGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->-get0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$ConfigureWifiSettingsActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, ":settings:fragment_args_key"

    const-string/jumbo v4, "auto_wifi"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-static {v3, v6}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->-set0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "com.samsung.android.server.wifi.AutoWifiNotificationController.CANCEL_NOTI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "notiid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->-get0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-static {v3, v6}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->-set0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-static {v3, v6}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->-set1(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->factoryReset()V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->-wrap0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;)V

    goto :goto_0
.end method
