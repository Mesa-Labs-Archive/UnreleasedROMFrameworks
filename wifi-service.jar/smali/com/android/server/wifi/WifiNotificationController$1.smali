.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/FrameworkFacade;Landroid/app/Notification$Builder;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiConfigManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string/jumbo v13, "wifi_state"

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set5(Lcom/android/server/wifi/WifiNotificationController;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-wrap8(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get1()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-wrap7(Lcom/android/server/wifi/WifiNotificationController;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-wrap3(Lcom/android/server/wifi/WifiNotificationController;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get4(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/ConnectivityManager;

    move-result-object v12

    if-nez v12, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->-get4(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/ConnectivityManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set1(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get8(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get8(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set1(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get8(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get8(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get5(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-wrap8(Lcom/android/server/wifi/WifiNotificationController;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set0(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    const-string/jumbo v12, "VZW"

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x1

    const v14, 0x108096e

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->-wrap10(Lcom/android/server/wifi/WifiNotificationController;ZIZ)V

    :cond_4
    const-string/jumbo v12, "ATT"

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get3()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get12(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get9(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-wrap9(Lcom/android/server/wifi/WifiNotificationController;Z)V

    :cond_6
    const-string/jumbo v12, "SKT"

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get0()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get12(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x1

    invoke-static {v12, v11, v13}, Lcom/android/server/wifi/WifiNotificationController;->-wrap6(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get5(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set0(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    const-string/jumbo v12, "ATT"

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get3()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get13(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-wrap9(Lcom/android/server/wifi/WifiNotificationController;Z)V

    :cond_9
    const-string/jumbo v12, "SKT"

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get0()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get12(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x0

    invoke-static {v12, v11, v13}, Lcom/android/server/wifi/WifiNotificationController;->-wrap6(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-wrap8(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v12, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string/jumbo v12, "nid"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const v12, 0x2df96b

    if-ne v6, v12, :cond_d

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get3()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set6(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    :cond_c
    const-string/jumbo v12, "VZW"

    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get2()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set3(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    :cond_d
    const v12, 0x1040b91

    if-ne v6, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get6(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const v12, 0x1040b92

    invoke-virtual {v3, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ACTION_SNS_NO_INTERNET_HUN_GO_SETTINGS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get6(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const v12, 0x1040b92

    invoke-virtual {v3, v12}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get6(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v12, 0x10008000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get6(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v12, "WifiNotificationController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ActivityNotFoundException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get11(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiScanner;

    move-result-object v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->-get10(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->-set4(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiScanner;)Landroid/net/wifi/WifiScanner;

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->-get8(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v14}, Lcom/android/server/wifi/WifiNotificationController;->-get11(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiScanner;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiScanner;->getSingleScanResults()Ljava/util/List;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->-wrap4(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    const-string/jumbo v12, "visible"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v12, "info_type"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v5, -0x1

    const-string/jumbo v12, "titleType"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz v10, :cond_12

    const-string/jumbo v12, "targetSSID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "netId"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    :cond_12
    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-get12(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_13

    const/16 v12, 0x12

    if-eq v4, v12, :cond_13

    const-string/jumbo v12, "WifiNotificationController"

    const-string/jumbo v13, "Change visible to FALSE. Because wifi is not enabled"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :cond_13
    const-string/jumbo v13, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SHOW_NOTI_MESSAGE : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ", visible : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ", ssid : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v7, :cond_14

    move-object v12, v7

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ", targetSSID : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ", netId : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ", titleType : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x9

    if-ne v4, v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12, v7, v5, v10}, Lcom/android/server/wifi/WifiNotificationController;->-wrap2(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;IZ)Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v12, "null"

    goto :goto_1

    :cond_15
    const/16 v12, 0xb

    if-ne v4, v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12, v7, v5, v10}, Lcom/android/server/wifi/WifiNotificationController;->-wrap0(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;IZ)Z

    goto/16 :goto_0

    :cond_16
    const/16 v12, 0x12e

    if-ne v4, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12, v10}, Lcom/android/server/wifi/WifiNotificationController;->-wrap1(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->-get1()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-string/jumbo v12, "WifiNotificationController"

    const-string/jumbo v13, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-wrap5(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v12, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->-wrap11(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0
.end method
