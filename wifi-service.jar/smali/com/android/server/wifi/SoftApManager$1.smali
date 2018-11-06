.class Lcom/android/server/wifi/SoftApManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/SoftApManager;-><init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Lcom/android/server/wifi/SoftApManager$Listener;Landroid/net/wifi/IApInterface;Landroid/os/INetworkManagementService;Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiMetrics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SoftApManager"

    const-string/jumbo v3, "softApManager got WIFI_AP_STA_DHCPACK_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MAC"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-get6(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-get6(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/SoftApManager$ClientInfo;

    const-string/jumbo v3, "IP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->-get6(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/SoftApManager$ClientInfo;

    const-string/jumbo v3, "DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDeviceName:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    const-string/jumbo v3, "sta_dhcpack"

    invoke-static {v2, v1, v3, v5}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "com.samsung.android.net.wifi.WIFI_AP_STA_DISASSOCSTA_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "MAC"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$1;->this$0:Lcom/android/server/wifi/SoftApManager;

    const-string/jumbo v3, "disassoc_sta"

    invoke-static {v2, v1, v3, v5}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
