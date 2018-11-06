.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;,
        Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/ForkJoinTask;

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    aget-object v0, v6, v2

    const/4 v5, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v4, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_2

    if-nez v5, :cond_1

    aput-object v4, v6, v2

    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    const/4 v7, 0x0

    iput v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iput-object v4, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    :cond_2
    move-object v5, v0

    move-object v0, v4

    goto :goto_0
.end method

.method private doInvoke()I
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v4, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, p0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    goto :goto_0
.end method

.method private doJoin()I
    .locals 8

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    move v4, v0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v4, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v2, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v2, p0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v4

    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 8

    :cond_0
    :goto_0
    sget-object v7, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    instance-of v7, v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    iget v1, v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    aget-object v0, v5, v2

    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    if-ne v0, v6, :cond_2

    if-nez v4, :cond_1

    aput-object v3, v5, v2

    goto :goto_0

    :cond_1
    iput-object v3, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    goto :goto_0

    :cond_2
    move-object v4, v0

    move-object v0, v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 8

    const/4 v2, 0x0

    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_3

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v4

    :goto_0
    if-ltz v4, :cond_2

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_2

    const/4 v7, 0x0

    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_5

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    :cond_1
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v4, :cond_0

    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return v4

    :cond_3
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_5

    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_2

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v4

    :goto_0
    if-ltz v4, :cond_5

    :cond_1
    :goto_1
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_5

    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    return v4
.end method

.method public static getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQueuedTaskCount()I
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    goto :goto_1
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 15

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v3

    aget-object v1, v8, v10

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v10

    if-eq v10, p0, :cond_0

    iget-object v1, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    :cond_1
    const/4 v10, 0x0

    return-object v10

    :catchall_0
    move-exception v10

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v10

    :cond_2
    iget-wide v10, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_1
    if-ge v10, v12, :cond_5

    aget-object v0, v11, v10

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v13, v7

    if-nez v13, :cond_4

    move-object v6, v0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    array-length v13, v7

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    aget-object v13, v7, v13

    const-class v14, Ljava/lang/Throwable;

    if-ne v13, v14, :cond_3

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    return-object v10

    :cond_5
    if-eqz v6, :cond_6

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v9

    :catch_0
    move-exception v4

    :cond_6
    return-object v2
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static helpQuiesce()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->quiesceCommonPool()V

    goto :goto_0
.end method

.method public static inForkJoinPool()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    const/high16 v7, -0x10000000

    const/4 v6, 0x0

    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_0

    instance-of v5, p0, Ljava/util/List;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    return-object p0

    :cond_1
    move-object v4, p0

    check-cast v4, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    move v1, v2

    :goto_0
    if-ltz v1, :cond_5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_1

    :cond_4
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v7, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_8

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v7, :cond_6

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_9
    return-object p0
.end method

.method public static invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    const/high16 v3, -0x10000000

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v2

    and-int v0, v2, v3

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    :cond_0
    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v2

    and-int v1, v2, v3

    if-eq v1, v3, :cond_1

    invoke-direct {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    const/high16 v6, -0x10000000

    const/4 v5, 0x0

    const/4 v0, 0x0

    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    move v1, v2

    :goto_0
    if-ltz v1, :cond_3

    aget-object v3, p0, v1

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_1

    :cond_2
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v4

    if-ge v4, v6, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_6

    aget-object v3, p0, v1

    if-eqz v3, :cond_4

    if-eqz v0, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v4

    if-ge v4, v6, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    goto :goto_1
.end method

.method protected static pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->pollSubmission()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static pollTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    return-void
.end method

.method private setCompletion(I)I
    .locals 6

    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v4, :cond_1

    return v4

    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    or-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :cond_2
    return p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_0

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "Unknown Exception"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6

    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, -0x10000000

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    return-void
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method final doExec()I
    .locals 4

    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v3, -0x10000000

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v2

    :cond_0
    return v2

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v3

    return v3
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    :goto_0
    return-object p0

    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v1, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    :goto_0
    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v8, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v10, v4, v16

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_3

    const-wide/16 v12, 0x1

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v4, :cond_4

    move-object/from16 v21, v20

    check-cast v21, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v0, v21

    iget-object v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, v21

    iget-object v5, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0, v12, v13}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v8

    :cond_1
    if-ltz v8, :cond_2

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    :cond_2
    const/high16 v4, -0x10000000

    and-int/2addr v8, v4

    const/high16 v4, -0x10000000

    if-eq v8, v4, :cond_b

    const/high16 v4, -0x40000000    # -2.0f

    if-ne v8, v4, :cond_9

    new-instance v4, Ljava/util/concurrent/CancellationException;

    invoke-direct {v4}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v4

    :cond_3
    move-wide v12, v10

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    instance-of v4, v0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v4, :cond_6

    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v4, p0

    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v8

    :goto_1
    if-ltz v8, :cond_1

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v18, v12, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_5

    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v5, 0x10000

    or-int v9, v8, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_5

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    goto :goto_2

    :cond_6
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v8

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_9
    const/high16 v4, -0x80000000

    if-eq v8, v4, :cond_a

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    :cond_a
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 3

    const/high16 v2, -0x10000000

    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int v0, v1, v2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method final internalWait(J)V
    .locals 7

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_1

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    :cond_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/high16 v2, -0x10000000

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v1

    and-int v0, v1, v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final isCancelled()Z
    .locals 2

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    const/high16 v1, -0x10000000

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final join()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/high16 v2, -0x10000000

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v1

    and-int v0, v1, v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final quietlyComplete()V
    .locals 1

    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 9

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    aget-object v0, v5, v2

    :goto_0
    if-nez v0, :cond_2

    new-instance v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    aget-object v7, v5, v2

    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v6, p0, p1, v7, v8}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V

    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/high16 v6, -0x80000000

    invoke-direct {p0, v6}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v4

    :cond_1
    return v4

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public reinitialize()V
    .locals 2

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    goto :goto_0
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 6

    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p1

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-short v0, v4

    return v0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public tryUnfork()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    goto :goto_0
.end method
