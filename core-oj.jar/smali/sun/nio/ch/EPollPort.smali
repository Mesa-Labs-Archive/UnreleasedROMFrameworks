.class final Lsun/nio/ch/EPollPort;
.super Lsun/nio/ch/Port;
.source "EPollPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/EPollPort$Event;,
        Lsun/nio/ch/EPollPort$EventHandlerTask;
    }
.end annotation


# static fields
.field private static final ENOENT:I = 0x2

.field private static final MAX_EPOLL_EVENTS:I = 0x200


# instance fields
.field private final EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

.field private final NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

.field private final address:J

.field private closed:Z

.field private final epfd:I

.field private final queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lsun/nio/ch/EPollPort$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final sp:[I

.field private final wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/EPollPort;->EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    return-object v0
.end method

.method static synthetic -get2(Lsun/nio/ch/EPollPort;)J
    .locals 2

    iget-wide v0, p0, Lsun/nio/ch/EPollPort;->address:J

    return-wide v0
.end method

.method static synthetic -get3(Lsun/nio/ch/EPollPort;)I
    .locals 1

    iget v0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    return v0
.end method

.method static synthetic -get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic -get5(Lsun/nio/ch/EPollPort;)[I
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    return-object v0
.end method

.method static synthetic -get6(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -wrap0(I)V
    .locals 0

    invoke-static {p0}, Lsun/nio/ch/EPollPort;->drain1(I)V

    return-void
.end method

.method static synthetic -wrap1(Lsun/nio/ch/EPollPort;)V
    .locals 0

    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->implClose()V

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v6, 0x200

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lsun/nio/ch/Port;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lsun/nio/ch/EPollPort$Event;

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    new-instance v2, Lsun/nio/ch/EPollPort$Event;

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->EXECUTE_TASK_OR_SHUTDOWN:Lsun/nio/ch/EPollPort$Event;

    invoke-static {}, Lsun/nio/ch/EPoll;->epollCreate()I

    move-result v2

    iput v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    const/4 v2, 0x2

    new-array v0, v2, [I

    :try_start_0
    invoke-static {v0}, Lsun/nio/ch/EPollPort;->socketpair([I)V

    iget v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sget-short v4, Lsun/nio/ch/Net;->POLLIN:S

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v4}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    invoke-static {v6}, Lsun/nio/ch/EPoll;->allocatePollArray(I)J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/EPollPort;->address:J

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v2, v6}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lsun/nio/ch/EPollPort;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, p0, Lsun/nio/ch/EPollPort;->NEED_TO_POLL:Lsun/nio/ch/EPollPort$Event;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v1

    iget v2, p0, Lsun/nio/ch/EPollPort;->epfd:I

    invoke-static {v2}, Lsun/nio/ch/EPollPort;->close0(I)V

    throw v1
.end method

.method private static native close0(I)V
.end method

.method private static native drain1(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private implClose()V
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-wide v0, p0, Lsun/nio/ch/EPollPort;->address:J

    invoke-static {v0, v1}, Lsun/nio/ch/EPoll;->freePollArray(J)V

    iget-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    iget-object v0, p0, Lsun/nio/ch/EPollPort;->sp:[I

    aget v0, v0, v2

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    iget v0, p0, Lsun/nio/ch/EPollPort;->epfd:I

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->close0(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native interrupt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native socketpair([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private wakeup()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lsun/nio/ch/EPollPort;->wakeupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/EPollPort;->sp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lsun/nio/ch/EPollPort;->interrupt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method executeOnHandlerTask(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/EPollPort;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lsun/nio/ch/EPollPort;->offerTask(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->wakeup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method shutdownHandlerTasks()V
    .locals 2

    invoke-virtual {p0}, Lsun/nio/ch/EPollPort;->threadCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->implClose()V

    :cond_0
    return-void

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lsun/nio/ch/EPollPort;->wakeup()V

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method start()Lsun/nio/ch/EPollPort;
    .locals 2

    new-instance v0, Lsun/nio/ch/EPollPort$EventHandlerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/nio/ch/EPollPort$EventHandlerTask;-><init>(Lsun/nio/ch/EPollPort;Lsun/nio/ch/EPollPort$EventHandlerTask;)V

    invoke-virtual {p0, v0}, Lsun/nio/ch/EPollPort;->startThreads(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method startPoll(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget v1, p0, Lsun/nio/ch/EPollPort;->epfd:I

    or-int v2, p2, v4

    const/4 v3, 0x3

    invoke-static {v1, v3, p1, v2}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lsun/nio/ch/EPollPort;->epfd:I

    or-int v2, p2, v4

    const/4 v3, 0x1

    invoke-static {v1, v3, p1, v2}, Lsun/nio/ch/EPoll;->epollCtl(IIII)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    return-void
.end method
