.class abstract Lsun/nio/ch/AsynchronousChannelGroupImpl;
.super Ljava/nio/channels/AsynchronousChannelGroup;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final internalThreadCount:I


# instance fields
.field private final pool:Lsun/nio/ch/ThreadPool;

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final shutdownNowLock:Ljava/lang/Object;

.field private final taskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile terminateInitiated:Z

.field private final threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static synthetic -get0(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Lsun/nio/ch/ThreadPool;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v1, "sun.nio.ch.internalThreadPoolSize"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/channels/AsynchronousChannelGroup;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {p2}, Lsun/nio/ch/ThreadPool;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    :goto_0
    invoke-static {}, Lsun/nio/ch/ThreadPool;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    goto :goto_0
.end method

.method private bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    move-object v0, p0

    new-instance v1, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;

    invoke-direct {v1, p0, p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method private shutdownExecutors()V
    .locals 1

    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;

    invoke-direct {v0, p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private startInternalThread(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;

    invoke-direct {v0, p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract attachForeignChannel(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method abstract closeAllChannels()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract detachForeignChannel(Ljava/lang/Object;)V
.end method

.method final detachFromThreadPool()V
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Already shutdown"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Group not empty"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    move-object v1, p1

    new-instance v3, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;

    invoke-direct {v3, p0, v0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/security/AccessControlContext;Ljava/lang/Runnable;)V

    move-object p1, v3

    :cond_0
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method abstract executeOnHandlerTask(Ljava/lang/Runnable;)V
.end method

.method final executeOnPooledThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnHandlerTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final executor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method final fixedThreadCount()I
    .locals 2

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v0

    sget v1, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method abstract isEmpty()Z
.end method

.method final isFixedThreadPool()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->isFixedThreadPool()Z

    move-result v0

    return v0
.end method

.method public final isShutdown()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method final offerTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method final pollTask()Ljava/lang/Runnable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final shutdown()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    invoke-direct {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method abstract shutdownHandlerTasks()V
.end method

.method public final shutdownNow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->closeAllChannels()V

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    invoke-direct {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final startThreads(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget v2, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    if-ge v0, v2, :cond_0

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->startInternalThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v2}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v2}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v2}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_1
    return-void
.end method

.method final threadCount()I
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final threadExit(Ljava/lang/Runnable;Z)I
    .locals 3

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Lsun/nio/ch/Invoker;->isBoundToAnyGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v1}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->startInternalThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    return v1
.end method
