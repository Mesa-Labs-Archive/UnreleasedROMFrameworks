.class Lcom/android/internal/telephony/ModemStackController$1;
.super Landroid/content/BroadcastReceiver;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ModemStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ModemStackController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ModemStackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string/jumbo v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "phoneinECMState"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string/jumbo v8, "Device is in ECBM Mode"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->-wrap0(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->-set0(Lcom/android/internal/telephony/ModemStackController;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const-string/jumbo v8, "Device is out of ECBM Mode"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->-wrap0(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->-set0(Lcom/android/internal/telephony/ModemStackController;Z)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "phone"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v7, "operationResult"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v7, "newSubState"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received ACTION_SUBSCRIPTION_SET_UICC_RESULT on phoneId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " subState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->-wrap0(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->-get0(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v4, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v9, 0x8

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-nez v2, :cond_4

    if-nez v5, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->-get1(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    sget-object v4, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    :cond_4
    const/4 v7, 0x0

    invoke-static {v0, v4, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "phone"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "ABSENT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->-get1(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->-get0(Lcom/android/internal/telephony/ModemStackController;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received ACTION_SIM_STATE_CHANGED on phoneId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/ModemStackController;->-wrap1(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-static {v7}, Lcom/android/internal/telephony/ModemStackController;->-get1(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v9, 0x8

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/ModemStackController$1;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
