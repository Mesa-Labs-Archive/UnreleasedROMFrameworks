.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-get0()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    if-eqz v2, :cond_2

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-get1(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-get1(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-wrap0(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Lcom/android/internal/telephony/InboundSmsTracker;Z)V

    goto :goto_0
.end method
