.class Lcom/android/server/wifi/WifiStateMachine$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;Lcom/android/server/wifi/WifiNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "android.samsung.media.action.receiver_sar"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "android.samsung.media.extra.receiver"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "received android.samsung.media.action.receiver_sar , isRCV = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->startProxSensorForTxPowerBackOff()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->stopProxSensorForTxPowerBackOff()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "received ACTION_PHONE_STATE_CHANGED , EXTRA_STATE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->stopProxSensorForTxPowerBackOff()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    const-string/jumbo v7, "p2pGroupInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v11, :cond_6

    move v7, v8

    :goto_1
    invoke-static {v10, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set26(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    if-eqz v6, :cond_8

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v10

    invoke-static {v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->-set11(Lcom/android/server/wifi/WifiStateMachine;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    const/4 v11, 0x5

    if-ne v7, v11, :cond_7

    move v7, v8

    :goto_2
    invoke-static {v10, v12, v8, v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap65(Lcom/android/server/wifi/WifiStateMachine;IZZZ)V

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto :goto_1

    :cond_7
    move v7, v9

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set11(Lcom/android/server/wifi/WifiStateMachine;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7, v12, v9, v9, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap65(Lcom/android/server/wifi/WifiStateMachine;IZZZ)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "android.intent.action.coexstatus"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "STATUS"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_a

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Z)Z

    :goto_3
    const-string/jumbo v7, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get android.intent.action.coexstatus mScellEnter : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get83()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get83()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v10

    const/4 v11, 0x4

    invoke-static {v7, v11, v9, v10, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap65(Lcom/android/server/wifi/WifiStateMachine;IZZZ)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Z)Z

    goto :goto_3

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.knox.intent.action.ENABLE_NETWORK_INTERNAL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.NETID_INTERNAL"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v11, :cond_c

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ENABLE_OTHERS_INTERNAL"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$8;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-virtual {v7, v2, v0, v8}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BroadcastReceiver - WifiPolicy.ACTION_ENABLE_NETWORK_INTERNAL : netId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
