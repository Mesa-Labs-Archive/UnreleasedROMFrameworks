.class Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;
.super Landroid/os/Handler;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    iget-object v2, v2, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string/jumbo v3, "GET_CURRENT_CYCLE_COMPLETE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->-set1(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;I)I

    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    iget-object v2, v2, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mResult (Fail): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    invoke-static {v5}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->-get0(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->-set0(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;Z)Z

    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v4, 0x0

    aget-byte v1, v2, v4

    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->-set1(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;I)I

    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    iget-object v2, v2, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;->this$1:Lcom/android/internal/telephony/DrxController$CurrentCycleThread;

    invoke-static {v5}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->-get0(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
