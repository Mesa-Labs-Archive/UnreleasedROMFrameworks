.class Lcom/android/internal/telephony/PduTest$1;
.super Landroid/content/BroadcastReceiver;
.source "PduTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PduTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PduTest;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PduTest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PduTest;->-get0()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIntentReceiver.onReceive: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.android.internal.telephony.PduTest"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "phoneId"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v6, "type"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "hexString"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIntentReceiver.onReceive: phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", pduType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", pduHexString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get2(Lcom/android/internal/telephony/PduTest;)I

    move-result v6

    if-eq v6, v4, :cond_1

    return-void

    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mIntentReceiver.onReceive: pdu is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    packed-switch v3, :pswitch_data_0

    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mIntentReceiver.onReceive: unsupported pduType"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_GSM_SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get3(Lcom/android/internal/telephony/PduTest;)Lcom/android/internal/telephony/RadioIndication;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/telephony/RadioIndication;->newSms(ILjava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mIntentReceiver.onReceive: PDU_TYPE_RECEIVED_CDMA_SMS"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6, v1}, Lcom/android/internal/telephony/PduTest;->-wrap0(Lcom/android/internal/telephony/PduTest;[B)Landroid/telephony/SmsMessage;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get1(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mIntentReceiver.onReceive: sms is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6, v9, v5}, Lcom/android/internal/telephony/PduTest;->-wrap1(Lcom/android/internal/telephony/PduTest;ILandroid/telephony/SmsMessage;)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/PduTest$1;->this$0:Lcom/android/internal/telephony/PduTest;

    invoke-static {v6}, Lcom/android/internal/telephony/PduTest;->-get3(Lcom/android/internal/telephony/PduTest;)Lcom/android/internal/telephony/RadioIndication;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/telephony/RadioIndication;->newBroadcastSms(ILjava/util/ArrayList;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
