.class Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;
.super Landroid/os/Handler;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    iget-object v1, v1, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string/jumbo v2, "CHANGE_DRX_COMPLETE"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->-set1(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    iget-object v1, v1, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-static {v4}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->-get0(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->-set0(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->-set1(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
