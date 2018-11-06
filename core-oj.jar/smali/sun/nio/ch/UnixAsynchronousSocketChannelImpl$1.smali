.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;
.super Ljava/lang/Object;
.source "UnixAsynchronousSocketChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;


# direct methods
.method constructor <init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get4(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get3(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-set0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)Z

    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get2(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;

    move-result-object v4

    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get1(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit v6

    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading(Z)V

    new-instance v2, Ljava/nio/channels/InterruptedByTimeoutException;

    invoke-direct {v2}, Ljava/nio/channels/InterruptedByTimeoutException;-><init>()V

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v1, v4, v0, v8, v2}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
