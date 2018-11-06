.class Lcom/android/server/enterprise/wifi/WifiPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-get1(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-get1(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-wrap1(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-get1(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-get1(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy$WifiStateHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-set0(Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-wrap3(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V

    goto :goto_0
.end method
