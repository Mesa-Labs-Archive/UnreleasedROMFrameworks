.class Lcom/android/internal/telephony/dataconnection/DcTracker$5;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mReceiver action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SIMSLOT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "REASON"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hotswap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set3(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set5(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get2(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set1(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v4, "Hotswap : set mAllowNotifyOffApnsOfAvailability = false"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "VZW"

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get9(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "TIM"

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPermanentFailedMap:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPermanentFailedMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v3, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v4, "simcard is changed so Need Data Tariff popup"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap10(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-boolean v7, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNeedDataSelctionPopup:Z

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-boolean v7, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNeedRoamingDataSelctionPopup:Z

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput-boolean v6, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWaitingForUserSelection:Z

    const-string/jumbo v3, "persist.sys.tariffpolicy"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "com.samsung.intent.action.PDPRETRYMECHANISM4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryTCECounter:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    sget-wide v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryTCECounterTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryTCECounterTimeMillis:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x6b1de0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap8(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0
.end method
