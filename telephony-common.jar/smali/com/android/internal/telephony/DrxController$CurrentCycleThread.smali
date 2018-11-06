.class Lcom/android/internal/telephony/DrxController$CurrentCycleThread;
.super Ljava/lang/Thread;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DrxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentCycleThread"
.end annotation


# static fields
.field private static final GET_CURRENT_CYCLE_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:I

.field final synthetic this$0:Lcom/android/internal/telephony/DrxController;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mResult:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mResult:I

    return p1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DrxController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mDone:Z

    iput v0, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mResult:I

    return-void
.end method


# virtual methods
.method declared-synchronized getCurrentCycle()I
    .locals 9

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x2

    :try_start_4
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v5}, Lcom/android/internal/telephony/DrxController;->-get1(Lcom/android/internal/telephony/DrxController;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_1
    :try_start_6
    iget-boolean v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mDone:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_7

    :try_start_7
    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string/jumbo v6, "wait for done"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_2
    move-exception v3

    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception during getCurrentCycle #2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/DrxController;->-wrap1(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_9
    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception during getCurrentCycle #1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/DrxController;->-wrap1(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_4
    :goto_2
    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :catch_4
    move-exception v3

    :try_start_b
    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception during getCurrentCycle #2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/DrxController;->-wrap1(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v5

    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_6
    :goto_3
    :try_start_d
    throw v5

    :catch_5
    move-exception v3

    iget-object v6, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception during getCurrentCycle #2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/DrxController;->-wrap1(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "done. getCurrentCycle - cycle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mResult:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mResult:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return v5
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread$1;-><init>(Lcom/android/internal/telephony/DrxController$CurrentCycleThread;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DrxController$CurrentCycleThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
