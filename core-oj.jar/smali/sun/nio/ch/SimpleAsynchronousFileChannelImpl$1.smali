.class Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;
.super Ljava/lang/Object;
.source "SimpleAsynchronousFileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$fli:Lsun/nio/ch/FileLockImpl;

.field final synthetic val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic val$position:J

.field final synthetic val$result:Lsun/nio/ch/PendingFuture;

.field final synthetic val$shared:Z

.field final synthetic val$size:J


# direct methods
.method constructor <init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;JJZLsun/nio/ch/FileLockImpl;Ljava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iput-wide p2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$position:J

    iput-wide p4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$size:J

    iput-boolean p6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$shared:Z

    iput-object p7, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    iput-object p8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p9, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$result:Lsun/nio/ch/PendingFuture;

    iput-object p10, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$attachment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v10

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    :cond_0
    invoke-static {}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get0()Lsun/nio/ch/FileDispatcher;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v2, v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    iget-wide v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$position:J

    iget-wide v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$size:J

    iget-boolean v8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$shared:Z

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v9

    const/4 v1, 0x2

    if-ne v9, v1, :cond_1

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    if-nez v9, :cond_2

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_2
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v11

    :try_start_1
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v1, v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v11, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v11}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    move-object v0, v11

    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v1

    invoke-virtual {v1, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    if-nez v1, :cond_5

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$result:Lsun/nio/ch/PendingFuture;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v1, v2, v0}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_4
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v2

    invoke-virtual {v2, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v1

    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$attachment:Ljava/lang/Object;

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-static {v1, v2, v3, v0}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
