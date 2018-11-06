.class final Lsun/nio/ch/PendingFuture;
.super Ljava/lang/Object;
.source "PendingFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final attachment:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final channel:Ljava/nio/channels/AsynchronousChannel;

.field private volatile context:Ljava/lang/Object;

.field private volatile exc:Ljava/lang/Throwable;

.field private final handler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;"
        }
    .end annotation
.end field

.field private volatile haveResult:Z

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private timeoutTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    sput-object v0, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    iput-object p2, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    iput-object p3, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    iput-object p2, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    iput-object p3, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    iput-object p4, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    return-void
.end method

.method private prepareForWait()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method attachment()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    instance-of v1, v1, Lsun/nio/ch/Cancellable;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/Cancellable;

    invoke-interface {v1, p0}, Lsun/nio/ch/Cancellable;->onCancel(Lsun/nio/ch/PendingFuture;)V

    :cond_1
    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    iput-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/AsynchronousChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    return v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method channel()Ljava/nio/channels/AsynchronousChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    return-object v0
.end method

.method exception()Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lsun/nio/ch/PendingFuture;->prepareForWait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v2, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lsun/nio/ch/PendingFuture;->prepareForWait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v2, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v1
.end method

.method getContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    return-object v0
.end method

.method handler()Ljava/nio/channels/CompletionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    return v0
.end method

.method setContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    return-void
.end method

.method setFailure(Ljava/lang/Throwable;)V
    .locals 3

    instance-of v1, p1, Ljava/io/IOException;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/SecurityException;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method setTimeoutTask(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v0
.end method
