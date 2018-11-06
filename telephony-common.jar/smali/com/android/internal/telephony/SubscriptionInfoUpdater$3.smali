.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v8, "[Receiver]+"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get4(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string/jumbo v7, "rebroadcastOnUnlock"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Broadcasting intent ACTION_SIM_STATE_CHANGED for mCardIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    invoke-static {v1, v10}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v8, "[Receiver]-"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v7, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z

    return-void

    :cond_2
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mIsSystemShutdown: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ignore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v7, "phone"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "slotIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ACTION_SIM_STATE_CHANGED contains invalid slotIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "rebroadcastOnUnlock"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rebroadcastOnUnlock ignore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get4(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v7, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v8, "READY"

    invoke-static {v7, v6, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;)V

    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v8, "[Receiver]-"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    return-void

    :cond_8
    const-string/jumbo v7, "ABSENT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_9
    const-string/jumbo v7, "UNKNOWN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x7

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_a
    const-string/jumbo v7, "CARD_IO_ERROR"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_b
    const-string/jumbo v7, "CARD_RESTRICTED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v9, 0x8

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring simStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "LOCKED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v6, v10, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v7, "LOADED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_f
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring simStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
