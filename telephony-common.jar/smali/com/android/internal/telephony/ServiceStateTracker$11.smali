.class Lcom/android/internal/telephony/ServiceStateTracker$11;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTracker;->setPrefNetTypeForDataLockSim(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[DataLockFeature] Waiting for slave slot set GsmOnly. sleepCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set23(Z)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTracker;->-get22()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get12(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTracker;->-get20()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap4(Lcom/android/internal/telephony/ServiceStateTracker;I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set21(Z)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTracker;->-get21()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap4(Lcom/android/internal/telephony/ServiceStateTracker;I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set22(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
