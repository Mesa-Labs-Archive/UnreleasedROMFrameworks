.class Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;
.super Landroid/os/Handler;
.source "GsmCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->-wrap1(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->-wrap2(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-static {v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->-get0(Lcom/android/internal/telephony/GsmCdmaConnection;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string/jumbo v4, "Call control by SIM:send broadcast CHANGED_CALL_NUMBER"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->-wrap0(Lcom/android/internal/telephony/GsmCdmaConnection;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.phone.CHANGED_CALL_NUMBER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "ril.sat_setup_call"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isVolteEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_DAN_TIMEOUT Received (VolteEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->-wrap0(Lcom/android/internal/telephony/GsmCdmaConnection;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string/jumbo v4, "EVENT_DAN_TIMEOUT Received (Ignored)"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->-wrap0(Lcom/android/internal/telephony/GsmCdmaConnection;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
