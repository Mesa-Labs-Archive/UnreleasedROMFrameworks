.class Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
.super Landroid/os/Handler;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountApData"
.end annotation


# instance fields
.field private check:Z

.field private mBytes:J

.field private mRxBytes:J

.field private mTxBytes:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    if-nez v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get3(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get7(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get7(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get1(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get1(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get9(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v8

    sub-long v8, v2, v8

    iput-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mTxBytes:J

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get8(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v8

    sub-long v8, v0, v8

    iput-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mRxBytes:J

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mTxBytes:J

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mRxBytes:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mBytes:J

    new-instance v6, Ljava/math/BigDecimal;

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mBytes:J

    invoke-direct {v6, v8, v9}, Ljava/math/BigDecimal;-><init>(J)V

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get14(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get2(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get13(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get13(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    :cond_3
    invoke-static {}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get0()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "HotspotMobileDataLimit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mBaseTxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get9(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mBaseRxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get8(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mTx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mRx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mTxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mTxBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mRxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mRxBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", usage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get11(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get12(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "HotspotMobileDataLimit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ap Data Limit Value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get12(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get12(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v7

    if-ltz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-set2(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    const-string/jumbo v7, "HotspotMobileDataLimit"

    const-string/jumbo v8, "Mobile AP Limited Data reached, turn off Mobile AP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_ap_mobile_data_usage_value"

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get12(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v13, v12}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get4(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-nez v7, :cond_6

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v12, v8, v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_ap_mobile_data_usage_value"

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_ap_mobile_data_usage_value"

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    return v0
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->removeMessages(I)V

    return-void
.end method

.method resume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get3(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->-set1(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
