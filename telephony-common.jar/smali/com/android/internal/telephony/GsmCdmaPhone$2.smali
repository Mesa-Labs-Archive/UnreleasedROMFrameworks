.class Lcom/android/internal/telephony/GsmCdmaPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-string/jumbo v6, "GsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mBroadcastReceiver: action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v8, 0x2b

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.IMS_SETTINGS_UPDATED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "CTC,CTC"

    const-string/jumbo v7, "ril.simoperator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v6, v6, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    if-nez v6, :cond_2

    const-string/jumbo v5, "voicecall_type"

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    if-eq v6, v1, :cond_0

    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v6, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap2(Lcom/android/internal/telephony/GsmCdmaPhone;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "voicecall_type2"

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->-get0(Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "subscription"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "ims"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "DISCONNECTED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    if-ne v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string/jumbo v7, "ims pdn disconnected, update volte off."

    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap0(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v6, v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->-set0(Lcom/android/internal/telephony/GsmCdmaPhone;Z)Z

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {v6, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->-wrap2(Lcom/android/internal/telephony/GsmCdmaPhone;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
