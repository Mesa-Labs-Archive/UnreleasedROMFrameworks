.class Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "SemWifiApBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "com.samsung.intent.action.MIP_ERROR"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "com.samsung.android.intent.action.TETHERING_FAILED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_0
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "SPRINT"

    invoke-static {}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->-get0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "SPRINT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "SPR"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "XAS"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "VMU"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "BST"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    invoke-static {v8, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->-wrap1(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const-string/jumbo v8, "ALL"

    invoke-static {}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->-get0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v8, 0xc

    if-eq v5, v8, :cond_2

    const/16 v8, 0xd

    if-eq v5, v8, :cond_2

    return-void

    :cond_2
    const-string/jumbo v8, "SemWifiApBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Mobile AP is disabled by [USA OPEN (SPR)] don\'t : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_saved_state"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :goto_1
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    const-string/jumbo v8, "SemWifiApBroadcastReceiver"

    const-string/jumbo v9, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_saved_state"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v8, "SemWifiApBroadcastReceiver"

    const-string/jumbo v9, "SettingNotFoundException"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v8, "com.samsung.intent.action.MIP_ERROR"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "CODE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "SemWifiApBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mipErrorCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string/jumbo v8, "67"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    const/4 v9, 0x2

    invoke-static {v8, p1, v9, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->-wrap2(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    const/4 v9, 0x3

    invoke-static {v8, p1, v9, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->-wrap2(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "SemWifiApBroadcastReceiver"

    const-string/jumbo v9, "do NOT turn off MHS when DIALOG_HOTSPOT_NO_DATA , spr new requirement!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string/jumbo v8, "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "SemWifiApBroadcastReceiver"

    const-string/jumbo v9, "Sending the dialog type51"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    const/16 v9, 0x33

    invoke-static {v8, p1, v9, p2}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->-wrap2(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v8, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;

    invoke-static {v8, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->-wrap3(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;)V

    goto/16 :goto_2
.end method
