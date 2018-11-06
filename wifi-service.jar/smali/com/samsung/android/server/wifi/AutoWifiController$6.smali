.class Lcom/samsung/android/server/wifi/AutoWifiController$6;
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v7, :cond_0

    iget-object v8, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, v8, Lcom/samsung/android/server/wifi/AutoWifiController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v7, :cond_1

    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_f

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "AutoWifiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Connected network id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/samsung/android/server/wifi/AutoWifiController;->-wrap7(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-nez v7, :cond_4

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get6()[I

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_6

    aget v2, v8, v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    if-ne v10, v2, :cond_5

    const-string/jumbo v7, "AutoWifiController"

    const-string/jumbo v8, "This is Android Hotspot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get3()[I

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_2
    if-ge v7, v9, :cond_9

    aget v2, v8, v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    if-ne v10, v2, :cond_8

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "AutoWifiController"

    const-string/jumbo v8, "This has a LO Gateway Address"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "KTT"

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    const/16 v8, 0x1388

    if-lt v7, v8, :cond_c

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mScanResultMatcher:Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;->-wrap0(Lcom/samsung/android/server/wifi/AutoWifiController$ScanResultMatcher;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/samsung/android/server/wifi/AutoWifiController;->-get1()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "AutoWifiController"

    const-string/jumbo v8, "This is KT Home AP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/16 v8, 0x65

    if-eq v7, v8, :cond_b

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    invoke-virtual {v7, v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setKTHomeApToFavorite(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0, v5}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setNetworkState(ZZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_d
    const-string/jumbo v7, "AutoWifiController"

    const-string/jumbo v8, "Connected network but Wi-Fi configuration is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    const-string/jumbo v7, "AutoWifiController"

    const-string/jumbo v8, "Connected network but Wi-Fi info is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiController$6;->this$0:Lcom/samsung/android/server/wifi/AutoWifiController;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/AutoWifiController;->mAutoWifiNotificationController:Lcom/samsung/android/server/wifi/AutoWifiNotificationController;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setNetworkState(ZZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_3
.end method
