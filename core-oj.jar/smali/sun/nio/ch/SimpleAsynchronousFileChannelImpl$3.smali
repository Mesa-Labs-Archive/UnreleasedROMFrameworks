.class Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;
.super Ljava/lang/Object;
.source "SimpleAsynchronousFileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic val$position:J

.field final synthetic val$result:Lsun/nio/ch/PendingFuture;

.field final synthetic val$src:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iput-object p2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$src:Ljava/nio/ByteBuffer;

    iput-wide p3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$position:J

    iput-object p5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$result:Lsun/nio/ch/PendingFuture;

    iput-object p7, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$attachment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    :try_start_0
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    :cond_0
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v4, v4, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$src:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$position:J

    invoke-static {}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get0()Lsun/nio/ch/FileDispatcher;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v1

    const/4 v4, -0x3

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    if-gez v1, :cond_3

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    new-instance v4, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v4}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, v3

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    :goto_0
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$handler:Ljava/nio/channels/CompletionHandler;

    if-nez v4, :cond_4

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$result:Lsun/nio/ch/PendingFuture;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v4

    :cond_4
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;->val$attachment:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6, v0}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
