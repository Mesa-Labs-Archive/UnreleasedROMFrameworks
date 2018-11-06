.class Lcom/android/internal/telephony/dataconnection/DcTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Intent.getAction() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "screen on"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set6(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap16(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap15(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap12(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap14(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSupportingUPSM()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnectionForUPMS(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "screen off"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set6(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap16(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap15(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap12(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSupportingUPSM()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnectionForUPMS(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v14, "com.android.internal.telephony.data-reconnect"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Reconnect alarm. Previous state was "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get12(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap5(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v14, "com.android.internal.telephony.data-stall"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "Data stall alarm"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v14, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "Provisioning apn alarm"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v14, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    :goto_1
    invoke-static {v15, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set7(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get5(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap9(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    :cond_7
    const-string/jumbo v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "Wifi state changed"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    const-string/jumbo v14, "wifi_state"

    const/4 v15, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    const/4 v7, 0x1

    :goto_2
    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set7(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mIsWifiConnected="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get5(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    :cond_a
    const-string/jumbo v14, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "carrier_config"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v14

    invoke-virtual {v4, v14}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "editable_tether_apn_bool"

    invoke-virtual {v3, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set2(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v14, "android.intent.action.SPECIFIC_TETHER_APN_REQUESTED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "android.intent.action.SPECIFIC_TETHER_APN_REQUESTED recieved"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTetherStateChanged(Z)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v14, "android.intent.action.SPECIFIC_TETHER_APN_UNREQUESTED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "android.intent.action.SPECIFIC_TETHER_APN_UNREQUESTED recieved"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTetherStateChanged(Z)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v14, "android.intent.action.PDP_RESET_TEST"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string/jumbo v14, "actionNum"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PDP Rest Test: doRecoveryAction= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "pdpReset"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap6(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/4 v14, 0x1

    if-ne v6, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v14, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    const-string/jumbo v16, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    const-string/jumbo v16, "CscFeature_RIL_PromptToDataRoam"

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    :cond_10
    const-string/jumbo v14, "DataEnable"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v14, "Roaming"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DATA_SELECTION_POPUP_PRESSED : dataEnable = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", roamingStatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNeedRoamingDataSelctionPopup:Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWaitingForUserSelection:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "pressDataEnable"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNeedDataSelctionPopup:Z

    goto :goto_3

    :cond_12
    const-string/jumbo v14, "com.android.phone.UsimDownload.end"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string/jumbo v14, "SKT"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    const-string/jumbo v16, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "nothing"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v14, "android.intent.action.ACTION_DATA_CALL_SETUP_RETRY"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string/jumbo v14, "KTT"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "[KT_NOTI] android.intent.action.ACTION_DATA_CALL_SETUP_RETRY recieved"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    const-string/jumbo v14, "true"

    const-string/jumbo v15, "ril.isPermanentFail"

    const-string/jumbo v16, ""

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "[KT_NOTI] call onTrySetupData()"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "nothing"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    const-string/jumbo v14, "LGT"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAirplaneMode()Z

    move-result v14

    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v14, v14, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWaitingForUserSelection:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "DATA : air plane mode is disabled "

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNeedRoamingDataSelctionPopup:Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAirplaneMode()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set1(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "Airplane mode : set mAllowNotifyOffApnsOfAvailability = false"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v14, "com.samsung.intent.action.NOTI_CSC_UPDATE_DONE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    const-string/jumbo v16, "CscFeature_RIL_SupportDynamicDataApnDuringRoaming"

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->changeCscUpdateStatus()V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v14, "android.intent.action.SET_DEPENDENCY_MET"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    const-string/jumbo v14, "KOR"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string/jumbo v14, "Met"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SET_DEPENDENCY_MET: met = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDependencyMet(Z)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v14, "android.intent.action.SET_POLICY_DATA_ENABLE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string/jumbo v14, "enabled"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v15, 0x42020

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    if-eqz v7, :cond_19

    const/4 v14, 0x1

    :goto_4
    iput v14, v9, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_19
    const/4 v14, 0x0

    goto :goto_4

    :cond_1a
    const-string/jumbo v14, "android.intent.action.retrySetupData"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const-string/jumbo v14, "phone"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v14

    if-ne v11, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "call onTrySetupData cause of received intent retrySetupData"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "t3396Stopped"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v14, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    const-string/jumbo v14, "com.nttdocomo.android.felicaremotelock.ACTION_STATUS_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    :cond_1c
    const-string/jumbo v14, "status"

    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v15, 0x42072

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v16, 0x42072

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/32 v16, 0xea60

    invoke-virtual/range {v14 .. v17}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "Send Message TERMINATE TIMEOUT(60000)"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v15, 0x42072

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeMessages(I)V

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set0(Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    const-string/jumbo v15, "LCSAPP_START"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v16, 0x42072

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/32 v16, 0x927c0

    invoke-virtual/range {v14 .. v17}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v15, "Send Message MAX TIMEOUT(600000)"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lscapp sent wrong data. status : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onReceive: Unknown action="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
