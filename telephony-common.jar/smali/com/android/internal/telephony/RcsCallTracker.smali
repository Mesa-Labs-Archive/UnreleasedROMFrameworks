.class public Lcom/android/internal/telephony/RcsCallTracker;
.super Landroid/os/Handler;
.source "RcsCallTracker.java"


# static fields
.field static final ACTIVE:I = 0x2

.field public static final CALL_CONNECTED:I = 0x2

.field public static final CALL_DISCONECTED:I = 0x1

.field public static final CALL_HOLD:I = 0x3

.field public static final CALL_RESUMED:I = 0x4

.field public static final CALL_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.rcs.CALL_STATE_CHANGED"

.field static final DISCONECTED:I = 0x4

.field static final EVENT_CALL_STATE_CHANGED:I = 0x1

.field public static final EXTRA_CALL_EVENT:Ljava/lang/String; = "EXTRA_CALL_EVENT"

.field public static final EXTRA_IS_INCOMING:Ljava/lang/String; = "EXTRA_IS_INCOMING"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "EXTRA_PHONE_ID"

.field public static final EXTRA_TEL_NUMBER:Ljava/lang/String; = "EXTRA_TEL_NUMBER"

.field static final HOLD:I = 0x3

.field static final NEW:I = 0x1

.field static final PERMISSION:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field static final TAG:Ljava/lang/String; = "RcsCallTracker"

.field private static final VDBG:Z


# instance fields
.field availableConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mActiveConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHoldConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    const-string/jumbo v0, "RcsCallTracker"

    const-string/jumbo v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private analizeAndSendEvents()V
    .locals 10

    const/4 v7, 0x4

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v9, v7, v4}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v6, 0x3

    invoke-direct {p0, v6, v7, v4}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string/jumbo v6, "RcsCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connection state  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x2

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v2, 0x4

    :cond_4
    :goto_4
    if-ne v2, v5, :cond_a

    if-ne v2, v9, :cond_5

    if-eq v5, v9, :cond_a

    :cond_5
    const-string/jumbo v6, "RcsCallTracker"

    const-string/jumbo v7, "Dual notification from modem... skipping notification"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x3

    goto :goto_3

    :cond_7
    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_9

    const/4 v2, 0x3

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_4

    const/4 v2, 0x2

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    packed-switch v2, :pswitch_data_0

    :goto_5
    :pswitch_0
    invoke-direct {p0, v5, v2, v0}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyTransition(IILcom/android/internal/telephony/Connection;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    if-ne p1, p2, :cond_1

    if-ne p2, v4, :cond_0

    if-eq p1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "EXTRA_IS_INCOMING"

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "EXTRA_TEL_NUMBER"

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "EXTRA_PHONE_ID"

    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "RcsCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v6, :cond_2

    const-string/jumbo v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    if-ne p2, v5, :cond_3

    const-string/jumbo v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne p2, v4, :cond_4

    if-ne p1, v7, :cond_4

    const-string/jumbo v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_4
    if-ne p2, v4, :cond_5

    if-ne p1, v5, :cond_5

    const-string/jumbo v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_5
    if-ne p2, v4, :cond_6

    if-ne p1, v4, :cond_6

    const-string/jumbo v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "RcsCallTracker"

    const-string/jumbo v2, "dest == ACTIVE && src == ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_6
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/internal/telephony/RcsCallTracker;->analizeAndSendEvents()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
