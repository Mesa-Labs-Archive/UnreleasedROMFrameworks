.class Lcom/android/server/wifi/WifiServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const v10, 0x26002

    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->-get1()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get4(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiServiceImpl;->-set1(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wifi/AutoWifiController;->setScreenState(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v6, 0x2600c

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->-get1()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiServiceImpl;->-set1(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v7, 0x26003

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/AutoWifiController;->setScreenState(Z)V

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v5, "plugged"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v5

    const v7, 0x26004

    invoke-virtual {v5, v7, v3, v6, v8}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v7, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "phoneinECMState"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v7

    if-eqz v1, :cond_9

    :goto_2
    const v8, 0x26001

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->report(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_9
    move v5, v6

    goto :goto_2

    :cond_a
    const-string/jumbo v7, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "phoneInEmergencyCall"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->-get15(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v7

    if-eqz v2, :cond_b

    :goto_3
    const v8, 0x2600e

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->report(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_b
    move v5, v6

    goto :goto_3

    :cond_c
    const-string/jumbo v6, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v6, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->-get1()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiServiceImpl;->-set1(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiServiceImpl;->-set2(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    const-string/jumbo v5, "WifiService"

    const-string/jumbo v6, "received broadcast ETWS, Scanning will be blocked"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
