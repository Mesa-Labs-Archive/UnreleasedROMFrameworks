.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$WaitNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final INTERRUPTED:I = 0x6

.field private static final INTERRUPTING:I = 0x5

.field private static final NEW:I = 0x0

.field private static final NORMAL:I = 0x2

.field private static final RUNNER:J

.field private static final STATE:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITERS:J


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private outcome:Ljava/lang/Object;

.field private volatile runner:Ljava/lang/Thread;

.field private volatile state:I

.field private volatile waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/FutureTask;

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/FutureTask;

    const-string/jumbo v4, "runner"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/concurrent/FutureTask;

    const-string/jumbo v4, "waiters"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    return-void
.end method

.method private awaitDone(ZJ)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    iget v11, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v0, 0x1

    if-le v11, v0, :cond_2

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    :cond_1
    return v11

    :cond_2
    const/4 v0, 0x1

    if-ne v11, v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_4
    if-nez v5, :cond_6

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_5

    return v11

    :cond_5
    new-instance v5, Ljava/util/concurrent/FutureTask$WaitNode;

    invoke-direct {v5}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    goto :goto_0

    :cond_6
    if-nez v10, :cond_7

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    iput-object v4, v5, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_b

    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_8

    const-wide/16 v12, 0x1

    :cond_8
    move-wide/from16 v8, p2

    :goto_1
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {p0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v6, v0, v12

    cmp-long v0, v6, p2

    if-ltz v0, :cond_a

    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    return v0

    :cond_a
    sub-long v8, p2, v6

    goto :goto_1

    :cond_b
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private finishCompletion()V
    .locals 8

    const/4 v5, 0x0

    :cond_0
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    if-eqz v4, :cond_2

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v7, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v7, :cond_1

    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    iget-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    iput-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    return-void

    :cond_3
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v4, v6

    goto :goto_0
.end method

.method private handlePossibleCancellationInterrupt(I)V
    .locals 2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    :goto_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    :goto_0
    const/4 v6, 0x0

    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    :goto_1
    if-eqz v4, :cond_3

    iget-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    iget-object v0, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    move-object v6, v4

    :cond_0
    move-object v4, v5

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    iput-object v5, v6, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    iget-object v0, v6, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private report(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 7

    const/4 v4, 0x0

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    if-eqz p1, :cond_0

    const/4 v5, 0x5

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    return v4

    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x6

    invoke-virtual {v1, p0, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    throw v0
.end method

.method protected done()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4
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

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
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

    const/4 v1, 0x1

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    if-gt v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isCancelled()Z
    .locals 2

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public run()V
    .locals 12

    const/4 v11, 0x5

    const/4 v4, 0x0

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    if-eqz v6, :cond_2

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {p0, v9}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-lt v10, v11, :cond_3

    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    :cond_3
    return-void

    :catch_0
    move-exception v7

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-lt v10, v11, :cond_4

    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    :cond_4
    throw v0
.end method

.method protected runAndReset()Z
    .locals 12

    const/4 v11, 0x5

    const/4 v4, 0x0

    const/4 v10, 0x0

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return v10

    :cond_1
    const/4 v8, 0x0

    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    if-nez v9, :cond_2

    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    :cond_2
    :goto_0
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-lt v9, v11, :cond_3

    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    :cond_3
    if-eqz v8, :cond_5

    if-nez v9, :cond_5

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-lt v9, v11, :cond_4

    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    :cond_4
    throw v0

    :cond_5
    move v0, v10

    goto :goto_1
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    :cond_0
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 6

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    :cond_0
    return-void
.end method
