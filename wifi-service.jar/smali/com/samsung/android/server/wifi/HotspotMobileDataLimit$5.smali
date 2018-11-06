.class Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;
.super Landroid/database/ContentObserver;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HotspotMobileDataLimit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiSharing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isWifiApEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get6(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", saveWifiStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get15(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get6(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_ap_mobile_data_usage_value"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-set7(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get15(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get1(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-set4(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get1(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-set3(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-set9(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v1, v5}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-set8(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get7(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get7(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->resume()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
