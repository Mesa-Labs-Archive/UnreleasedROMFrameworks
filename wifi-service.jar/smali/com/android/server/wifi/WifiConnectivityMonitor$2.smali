.class Lcom/android/server/wifi/WifiConnectivityMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v12, "newRssi"

    const/16 v13, -0xc8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const v13, 0x21003

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v12, v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v11, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21002

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21008

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21009

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v11, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v12, "wifi_state"

    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const v13, 0x21005

    invoke-virtual {v11, v13, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(II)V

    goto :goto_0

    :cond_5
    const-string/jumbo v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21006

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v11, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21006

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string/jumbo v11, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21006

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    const/4 v10, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-nez v11, :cond_b

    const-string/jumbo v11, "WifiConnectivityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "TYPE_MOBILE received. isConnected="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get53(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set40(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get53(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v11

    if-eq v10, v11, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "EVENT_MOBILE_CONNECTED"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_9
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x2103f

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set40(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :cond_b
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set40(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v11, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get113()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set43(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21046

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap37(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x2103e

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v11, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get100(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get100(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get18(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v11

    if-eqz v11, :cond_e

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v12, "Network country change is detected."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap52(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->setUrlList()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v11, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v12, "OWNER is background"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set82(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap55(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v11, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v12, "OWNER is foreground"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set82(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap55(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v12, "ACTION_BOOT_COMPLETED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v11, "com.samsung.android.captiveportallogin.APP_FINISHED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v11

    if-eqz v11, :cond_13

    const-string/jumbo v11, "WifiConnectivityMonitor"

    const-string/jumbo v12, "BIG_DATA_CAPTIVE_PORTAL_APP_FINISHED_INTENT"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v12, "OPTION"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set14(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v12, "REDIRECT"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set16(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v12, "PAGE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set15(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v11

    const-string/jumbo v12, "WFCP"

    const-string/jumbo v13, "COpt"

    iget-object v14, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get21(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v11

    const-string/jumbo v12, "WFCP"

    const-string/jumbo v13, "CRed"

    iget-object v14, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get23(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get95(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    move-result-object v11

    const-string/jumbo v12, "WFCP"

    const-string/jumbo v13, "CPag"

    iget-object v14, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v14}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get22(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v11, "com.samsung.android.server.wifi.SCNT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap41(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v11, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    const-string/jumbo v11, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    if-eqz v6, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    const/4 v4, 0x1

    if-eqz v5, :cond_16

    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_16

    const/4 v4, 0x0

    :cond_16
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x2104d

    invoke-virtual {v11, v12, v7, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(III)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v11, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get43(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v9

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v12, "VOWIFI"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set32(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v11

    if-eqz v11, :cond_18

    const-string/jumbo v11, "WifiConnectivityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IMS_REGISTRATION - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get43(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get43(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v11

    if-eq v9, v11, :cond_0

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const v12, 0x21006

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v11, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v11, "ONOFF"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$2;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const-string/jumbo v11, "ONOFF"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v12, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set48(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0
.end method
