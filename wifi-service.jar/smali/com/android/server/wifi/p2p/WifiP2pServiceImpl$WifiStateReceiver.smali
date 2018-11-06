.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set43(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "wifi_state"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set41(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.RESTRICTION_DISABLE_WFD_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get47(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v1

    const v2, 0x22010

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiP2pService"

    const-string/jumbo v2, "ACTION_P2P_STOPFIND_TIMER_EXPIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get47(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v1

    const v2, 0x22004

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "sscon"

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "ssdis"

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "com.sec.android.sidesync.sink.SIDESYNC_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "sicon"

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "com.sec.android.sidesync.sink.SERVICE_DESTROY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "sidis"

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "lcdon"

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string/jumbo v2, "lcdoff"

    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
