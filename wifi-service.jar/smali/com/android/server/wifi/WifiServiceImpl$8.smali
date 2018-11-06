.class Lcom/android/server/wifi/WifiServiceImpl$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
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

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "resetting networks because SIM was removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->resetSimAuthNetworks(Z)V

    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "resetting country code because SIM is removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->simCardRemoved()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "INTENT_VALUE_ICC_ABSENT received, disable wifi hotspot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->stopSoftAp()Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController;->setSimState(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "IMSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/samsung/android/server/wifi/AutoWifiController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/AutoWifiController;->setSimState(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "resetting networks because SIM was loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->resetSimAuthNetworks(Z)V

    goto :goto_0
.end method
