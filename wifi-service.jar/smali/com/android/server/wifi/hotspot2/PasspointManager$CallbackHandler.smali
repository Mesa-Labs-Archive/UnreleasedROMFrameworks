.class Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;
.super Ljava/lang/Object;
.source "PasspointManager.java"

# interfaces
.implements Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/PasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onANQPResponse(JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/PasspointManager;->-get1(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    move-result-object v4

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, p1, p2, v3}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->onRequestCompleted(JZ)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v0

    if-eqz p3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->this$0:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/PasspointManager;->-get0(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/AnqpCache;

    move-result-object v3

    invoke-virtual {v3, v0, p3}, Lcom/android/server/wifi/hotspot2/AnqpCache;->addEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/util/Map;)V

    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.action.PASSPOINT_OSU_PROVIDERS_LIST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.extra.BSSID_LONG"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.extra.ANQP_ELEMENT_DATA"

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getPayload()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onIconResponse(JLjava/lang/String;[B)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.action.PASSPOINT_ICON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.BSSID_LONG"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.FILENAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string/jumbo v1, "android.net.wifi.extra.ICON"

    array-length v2, p4

    const/4 v3, 0x0

    invoke-static {p4, v3, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V
    .locals 4

    const/high16 v2, 0x4000000

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->isDeauthEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.action.PASSPOINT_DEAUTH_IMMINENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.BSSID_LONG"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getBssid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.URL"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.ESS"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->isEss()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.DELAY"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getDelay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.action.PASSPOINT_SUBSCRIPTION_REMEDIATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.BSSID_LONG"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getBssid()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.SUBSCRIPTION_REMEDIATION_METHOD"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getMethod()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.extra.URL"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/WnmData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
