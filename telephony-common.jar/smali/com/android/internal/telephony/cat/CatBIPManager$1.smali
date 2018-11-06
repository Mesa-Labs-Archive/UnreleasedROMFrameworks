.class Lcom/android/internal/telephony/cat/CatBIPManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v3, "apn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "VZW"

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get3(Lcom/android/internal/telephony/cat/CatBIPManager;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "apnFailed"

    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "bip"

    const-string/jumbo v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DISCONNECTED"

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ACL fail so send TR"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-wrap4(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->isListening()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v4, "enableBIP"

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "bip"

    const-string/jumbo v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v4, "enableHIPRI"

    if-ne v3, v4, :cond_3

    const-string/jumbo v3, "default"

    const-string/jumbo v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string/jumbo v4, "enableIMS"

    if-ne v3, v4, :cond_5

    const-string/jumbo v3, "ims"

    const-string/jumbo v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v3, "DISCONNECTED"

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return-void

    :cond_7
    const-string/jumbo v3, "bip"

    const-string/jumbo v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;->BIP:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setType(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;)V

    :cond_8
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NetInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->DISCONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    :cond_9
    :goto_1
    const-string/jumbo v3, "CONNECTED"

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    :cond_a
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive(): Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getType()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_SupportCloseChannelReplyForBIP"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    if-ne v3, v4, :cond_13

    const-string/jumbo v3, "connected - Open Channel"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    :cond_b
    :goto_3
    return-void

    :cond_c
    const-string/jumbo v3, "default"

    const-string/jumbo v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;->HIPRI:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setType(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v3, "ims"

    const-string/jumbo v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;->IMS:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setType(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;)V

    goto/16 :goto_0

    :cond_e
    return-void

    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPManager;->isBipOverWifi:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->DISCONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    goto/16 :goto_1

    :cond_10
    return-void

    :cond_11
    const-string/jumbo v3, "DISCONNECTED"

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->DISCONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v3, "CONNECTING"

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->CONNECTING:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V

    goto/16 :goto_2

    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->DISCONNECTED:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    if-ne v3, v4, :cond_b

    const-string/jumbo v3, "disconnected - Close Channel"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->-set0(Lcom/android/internal/telephony/cat/CatBIPManager;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get0(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-wrap0(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    goto/16 :goto_3

    :cond_14
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$1;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->-get2(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->notifyHandler()V

    goto/16 :goto_3
.end method
