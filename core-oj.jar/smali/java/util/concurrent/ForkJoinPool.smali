.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$1;,
        Ljava/util/concurrent/ForkJoinPool$AuxState;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$EmptyTask;,
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ADD_WORKER:J = 0x800000000000L

.field private static final ASHIFT:I

.field private static final COMMON_MAX_SPARES:I

.field static final COMMON_PARALLELISM:I

.field private static final CTL:J

.field private static final DEFAULT_COMMON_MAX_SPARES:I = 0x100

.field static final EVENMASK:I = 0xfffe

.field static final FIFO_QUEUE:I = -0x80000000

.field private static final IDLE_TIMEOUT_MS:J = 0x7d0L

.field static final IS_OWNED:I = 0x1

.field static final LIFO_QUEUE:I = 0x0

.field static final MAX_CAP:I = 0x7fff

.field static final MODE_MASK:I = -0x10000

.field static final POLL_LIMIT:I = 0x3ff

.field private static final RUNSTATE:J

.field private static final SEED_INCREMENT:I = -0x61c88647

.field private static final SHUTDOWN:I = -0x80000000

.field static final SMASK:I = 0xffff

.field static final SPARE_WORKER:I = 0x20000

.field private static final SP_MASK:J = 0xffffffffL

.field static final SQMASK:I = 0x7e

.field static final SS_SEQ:I = 0x10000

.field private static final STARTED:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TERMINATED:I = 0x4

.field private static final TIMEOUT_SLOP_MS:J = 0x14L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UC_MASK:J = -0x100000000L

.field static final UNREGISTERED:I = 0x40000

.field static final UNSIGNALLED:I = -0x80000000

.field static final common:Ljava/util/concurrent/ForkJoinPool;

.field public static final defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I


# instance fields
.field auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

.field final config:I

.field volatile ctl:J

.field final factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile runState:I

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-class v7, Ljava/util/concurrent/ForkJoinPool;

    const-string/jumbo v8, "ctl"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-class v7, Ljava/util/concurrent/ForkJoinPool;

    const-string/jumbo v8, "runState"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-class v7, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v6

    sput v6, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-class v7, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v5

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/Error;

    const-string/jumbo v7, "array index scale not a power of two"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    sput v6, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    const/16 v0, 0x100

    :try_start_2
    const-string/jumbo v6, "java.util.concurrent.ForkJoinPool.common.maximumSpares"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    :cond_1
    :goto_0
    sput v0, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    new-instance v6, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v6, v9}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;)V

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    new-instance v6, Ljava/lang/RuntimePermission;

    const-string/jumbo v7, "modifyThread"

    invoke-direct {v6, v7}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    new-instance v6, Ljava/util/concurrent/ForkJoinPool$1;

    invoke-direct {v6}, Ljava/util/concurrent/ForkJoinPool$1;-><init>()V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinPool;

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    iget v6, v6, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v7, 0xffff

    and-int/2addr v6, v7

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    return-void

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    iput-object p5, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    const v2, 0xffff

    and-int/2addr v2, p1

    or-int/2addr v2, p4

    iput v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    neg-int v2, p1

    int-to-long v0, v2

    const/16 v2, 0x30

    shl-long v2, v0, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    const-wide v6, 0xffff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 6

    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool;->checkParallelism(I)I

    move-result v1

    invoke-static {p2}, Ljava/util/concurrent/ForkJoinPool;->checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-result-object v2

    if-eqz p4, :cond_0

    const/high16 v4, -0x80000000

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ForkJoinPool-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->nextPoolId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-worker-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_0

    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long v4, v0, v3

    long-to-int v3, v4

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    if-gtz v3, :cond_1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iput v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_3

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    :cond_3
    iput-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    iput v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0
.end method

.method private static checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-object p0
.end method

.method private static checkParallelism(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    return p0
.end method

.method private static checkPermission()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method public static commonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_0

    array-length v2, v3

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v4, v1

    and-int/lit8 v4, v4, 0x7e

    aget-object v4, v3, v4

    :cond_0
    return-object v4
.end method

.method private createWorker(Z)Z
    .locals 7

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, v4, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_0

    iget v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    :cond_0
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v3

    move-object v0, v3

    :cond_1
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    return v5
.end method

.method private externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v3, p0, :cond_1

    iget-object v0, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method private findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v8

    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v10, :cond_3

    array-length v9, v10

    if-lez v9, :cond_3

    add-int/lit8 v3, v9, -0x1

    and-int v6, v8, v3

    move v2, v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    aget-object v7, v10, v2

    if-eqz v7, :cond_2

    iget v0, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v11, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v11, v0, v11

    if-gez v11, :cond_1

    return-object v7

    :cond_1
    add-int/2addr v1, v0

    :cond_2
    add-int/lit8 v11, v2, 0x1

    and-int v2, v11, v3

    if-ne v2, v6, :cond_0

    move v5, v1

    if-ne v4, v1, :cond_4

    :cond_3
    return-object v12

    :cond_4
    const/4 v1, 0x0

    move v4, v5

    goto :goto_0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    sget v0, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 11

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    instance-of v8, v5, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v8, :cond_4

    move-object v6, v5

    check-cast v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v3, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget v8, v3, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v9, 0xffff

    and-int v2, v8, v9

    iget-object v4, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iget v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v9, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v1, v8, v9

    iget-wide v8, v3, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v10, 0x30

    shr-long/2addr v8, v10

    long-to-int v8, v8

    add-int v0, v8, v2

    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    :goto_0
    sub-int v7, v1, v7

    return v7

    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_2

    const/4 v7, 0x2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_3

    const/4 v7, 0x4

    goto :goto_0

    :cond_3
    const/16 v7, 0x8

    goto :goto_0

    :cond_4
    return v7
.end method

.method private helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v21, v0

    const/16 v19, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_3

    add-int/lit8 v17, v25, -0x1

    const/4 v11, 0x0

    move-object/from16 v15, p1

    move-object/from16 v22, p2

    :goto_1
    move-object/from16 v0, v22

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    or-int/lit8 v12, v2, 0x1

    const/16 v16, 0x0

    :cond_1
    shl-int/lit8 v2, v16, 0x1

    add-int/2addr v2, v12

    and-int v13, v2, v17

    aget-object v24, v26, v13

    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_4

    iput v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    :cond_2
    move-object/from16 v0, v22

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    move-object/from16 v0, v24

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    add-int/2addr v11, v9

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_7

    array-length v8, v3

    if-lez v8, :cond_7

    add-int/lit8 v2, v8, -0x1

    and-int v14, v2, v9

    int-to-long v0, v14

    move-wide/from16 v28, v0

    sget v2, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long v28, v28, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    add-long v4, v28, v30

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v6, :cond_7

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_6

    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v22

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v24

    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p1

    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v23, v0

    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v2, :cond_8

    :cond_3
    :goto_3
    return-void

    :cond_4
    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    add-int/2addr v11, v2

    :cond_5
    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    goto :goto_3

    :cond_6
    move v9, v10

    :cond_7
    :goto_4
    if-nez v6, :cond_2

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_2

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v9, v2

    if-ltz v2, :cond_2

    move-object/from16 v22, v18

    if-nez v18, :cond_a

    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_0

    move/from16 v20, v11

    move/from16 v0, v19

    if-eq v0, v11, :cond_3

    move/from16 v19, v20

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_9

    move v9, v10

    goto :goto_4

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p1

    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_2

    :cond_a
    move-object/from16 v15, v24

    goto/16 :goto_1

    :cond_b
    move v9, v10

    goto :goto_4
.end method

.method private inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 11

    const/high16 v0, 0x10000

    add-int/2addr v0, p2

    const/high16 v1, -0x80000000

    or-int v10, v0, v1

    int-to-long v0, v10

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    if-eqz p1, :cond_1

    iput v10, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide/high16 v0, 0x1000000000000L

    sub-long v0, v4, v0

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    or-long v6, v8, v0

    long-to-int v0, v4

    iput v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method static makeCommonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.parallelism"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v10, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    if-eqz v7, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v3, v0

    :cond_1
    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    const/16 v1, 0x7fff

    if-le v2, v1, :cond_5

    const/16 v2, 0x7fff

    :cond_5
    new-instance v1, Ljava/util/concurrent/ForkJoinPool;

    const-string/jumbo v6, "ForkJoinPool.commonPool-worker-"

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    return-object v1

    :cond_6
    new-instance v3, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    invoke-direct {v3, v6}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;)V

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public static managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/high16 v4, 0x1000000000000L

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    instance-of v0, v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_4

    move-object v8, v6

    check-cast v8, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v8, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-eqz v1, :cond_4

    iget-object v7, v8, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {v1, v7}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object v9, v0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    throw v9

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    const-class v1, Ljava/util/concurrent/ForkJoinPool;

    monitor-enter v1

    :try_start_0
    sget v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static quiesceCommonPool()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method private scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I
    .locals 28

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_1

    add-int/lit8 v15, v21, -0x1

    and-int v17, v15, p4

    move/from16 v13, v17

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    move/from16 v19, v0

    :cond_0
    :goto_0
    aget-object v18, v22, v13

    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, v18

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v4, v11, v4

    if-gez v4, :cond_5

    move-object/from16 v0, v18

    iget-object v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-eqz v5, :cond_5

    array-length v10, v5

    if-lez v10, :cond_5

    add-int/lit8 v4, v10, -0x1

    and-int v14, v4, v11

    int-to-long v0, v14

    move-wide/from16 v24, v0

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long v24, v24, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    add-long v6, v24, v26

    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/ForkJoinTask;

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    return v20

    :cond_2
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v11, v4, :cond_1

    if-gez v19, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v18

    iput v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p1

    iput-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v18

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v12, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runTask(Ljava/util/concurrent/ForkJoinTask;)V

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_5
    if-nez v16, :cond_1

    add-int v4, v13, p3

    and-int v13, v4, v15

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    if-gez v19, :cond_6

    move/from16 v20, v19

    goto :goto_1

    :cond_6
    if-ltz p4, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    goto :goto_1

    :cond_7
    shl-int/lit8 p4, p4, 0x1

    goto/16 :goto_0
.end method

.method private timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I
    .locals 20

    const/16 v17, 0x0

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-short v2, v2

    rsub-int/lit8 v15, v2, 0x1

    if-gtz v15, :cond_0

    const/4 v15, 0x1

    :cond_0
    int-to-long v2, v15

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v12, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    move-result v17

    if-lez v17, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/16 v17, -0x1

    :cond_3
    :goto_0
    return v17

    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    move/from16 v16, v0

    if-gez v16, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move-wide/from16 v0, p2

    long-to-int v2, v0

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v12, v2

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    :try_start_0
    move-object/from16 v0, p1

    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v2, 0xffff

    and-int v14, v11, v2

    const-wide v2, 0x100000000L

    sub-long v2, p2, v2

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    move-object/from16 v0, p1

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long v8, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v14, v2, :cond_5

    if-ltz v14, :cond_5

    aget-object v2, v18, v14

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_5

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    aput-object v2, v18, v14

    const/high16 v2, 0x40000

    or-int/2addr v2, v11

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v17, -0x1

    :cond_5
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    throw v2
.end method

.method private tryAddWorker(J)V
    .locals 9

    const/4 v8, 0x0

    :goto_0
    const-wide/high16 v0, 0x1000000000000L

    add-long/2addr v0, p1

    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v0, v2

    const-wide v2, 0x100000000L

    add-long/2addr v2, p1

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    or-long v6, v0, v2

    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v8}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    :cond_0
    return-void

    :cond_1
    iget-wide p1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide v0, 0x800000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    long-to-int v0, p1

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .locals 27

    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int v21, v2, v5

    const/16 v2, 0x30

    shr-long v6, v3, v2

    long-to-int v2, v6

    add-int v14, v21, v2

    const/16 v2, 0x20

    shr-long v6, v3, v2

    long-to-int v2, v6

    int-to-short v2, v2

    add-int v23, v21, v2

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v2, :cond_1

    :cond_0
    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_1
    if-eqz v21, :cond_0

    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_0

    add-int/lit8 v20, v25, -0x1

    const/4 v15, 0x1

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    shl-int/lit8 v2, v17, 0x1

    or-int/lit8 v19, v2, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    if-ltz v19, :cond_4

    aget-object v24, v26, v19

    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v2, :cond_4

    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-nez v2, :cond_4

    const/4 v15, 0x0

    :cond_2
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_5

    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_5
    long-to-int v0, v3

    move/from16 v22, v0

    if-eqz v22, :cond_6

    and-int v2, v20, v22

    aget-object v5, v26, v2

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    move-result v16

    goto :goto_0

    :cond_6
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    const/4 v2, 0x1

    if-le v14, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/high16 v6, 0x1000000000000L

    sub-long v6, v3, v6

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v6, v8

    const-wide v8, 0xffffffffffffL

    and-long/2addr v8, v3

    or-long v12, v6, v8

    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v7, p0

    move-wide v10, v3

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v16

    goto :goto_0

    :cond_7
    const/16 v2, 0x7fff

    move/from16 v0, v23

    if-ge v0, v2, :cond_8

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_9

    sget v2, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    add-int v2, v2, v21

    move/from16 v0, v23

    if-lt v0, v2, :cond_9

    :cond_8
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v5, "Thread limit exceeded replacing blocked worker"

    invoke-direct {v2, v5}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    const/16 v18, 0x1

    :goto_2
    const-wide/high16 v6, -0x1000000000000L

    and-long/2addr v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v8, v3

    const-wide v10, 0xffff00000000L

    and-long/2addr v8, v10

    or-long v12, v6, v8

    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v7, p0

    move-wide v10, v3

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    move-result v16

    goto/16 :goto_0

    :cond_a
    const/16 v18, 0x0

    goto :goto_2

    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private tryCreateExternalQueue(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    new-instance v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-direct {v2, p0, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    iput p1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v4, 0x7fffffff

    iput v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    const/4 v4, 0x1

    iput v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge p1, v4, :cond_0

    aget-object v4, v3, p1

    if-nez v4, :cond_0

    aput-object v2, v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    throw v4

    :catchall_1
    move-exception v4

    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    throw v4
.end method

.method private tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .locals 20

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x20

    shr-long v2, v6, v2

    long-to-int v2, v2

    int-to-short v2, v2

    if-lez v2, :cond_9

    long-to-int v14, v6

    if-nez v14, :cond_1

    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    if-lez v2, :cond_9

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_9

    if-nez v14, :cond_3

    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v6, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0x100000000L

    sub-long v4, v6, v4

    const-wide v18, 0xffff00000000L

    and-long v4, v4, v18

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v6

    or-long v8, v2, v4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v12

    :goto_0
    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v2, 0xffff

    and-int v13, v11, v2

    if-ltz v13, :cond_2

    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v13, v2, :cond_2

    aget-object v2, v17, v13

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_2

    const/4 v2, 0x0

    aput-object v2, v17, v13

    :cond_2
    const/high16 v2, 0x40000

    or-int/2addr v2, v11

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/4 v2, 0x1

    return v2

    :cond_3
    add-int/lit8 v2, v16, -0x1

    and-int/2addr v2, v14

    aget-object v15, v17, v2

    if-eqz v15, :cond_4

    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-eq v2, v14, :cond_5

    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    :cond_5
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v8, v2, v4

    move-object/from16 v0, p1

    if-eq v0, v15, :cond_6

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v2, :cond_7

    :cond_6
    const/4 v10, 0x1

    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v2, v6

    const-wide v4, 0x100000000L

    sub-long v4, v6, v4

    const-wide v18, 0xffff00000000L

    and-long v4, v4, v18

    or-long/2addr v2, v4

    or-long/2addr v8, v2

    :goto_1
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7fffffff

    and-int/2addr v2, v14

    iput v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    move v12, v10

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    const-wide/high16 v2, 0x1000000000000L

    add-long/2addr v2, v6

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    or-long/2addr v8, v2

    goto :goto_1

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    return v2
.end method

.method private tryInitialize(Z)V
    .locals 8

    const v7, 0xffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-nez v4, :cond_1

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    and-int v2, v4, v7

    if-le v2, v5, :cond_2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x2

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x8

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x10

    or-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x1

    and-int v1, v4, v7

    new-instance v0, Ljava/util/concurrent/ForkJoinPool$AuxState;

    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;-><init>()V

    new-array v3, v1, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-nez v4, :cond_0

    iput-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    const/4 v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v5

    :cond_1
    if-eqz p1, :cond_3

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v4, :cond_3

    invoke-direct {p0, v6, v6}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    new-instance v4, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v4

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    return-void
.end method

.method private tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    long-to-int v11, v6

    if-eqz v11, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v13, v0

    if-lez v13, :cond_0

    xor-int v2, v11, p3

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    add-int/lit8 v2, v13, -0x1

    and-int/2addr v2, v11

    aget-object v12, p2, v2

    if-eqz v12, :cond_0

    iget v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/high16 v4, 0x1000000000000L

    add-long/2addr v4, v6

    const-wide v14, -0x100000000L

    and-long/2addr v4, v14

    or-long v8, v2, v4

    const v2, 0x7fffffff

    and-int v10, v11, v2

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v2, :cond_0

    iget v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ne v2, v11, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v10, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    iget-object v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method private tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z
    .locals 11

    long-to-int v9, p1

    const v0, 0x7fffffff

    and-int v8, v9, v0

    if-eqz p3, :cond_0

    iget v10, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    iget v0, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v2, p1, p4

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    or-long v6, v0, v2

    if-ne v9, v10, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v8, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    iget-object v0, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private tryTerminate(ZZ)I
    .locals 20

    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-ltz v6, :cond_3

    if-eqz p2, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    if-nez v6, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    const/high16 v3, -0x80000000

    or-int v7, v6, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_9

    if-nez p1, :cond_8

    const-wide/16 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    shr-long v2, v10, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-lez v2, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v9, v2, :cond_7

    aget-object v13, v18, v9

    if-eqz v13, :cond_6

    iget v8, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    int-to-long v2, v8

    add-long/2addr v10, v2

    iget-object v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-nez v2, :cond_5

    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v8, v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    return v2

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    move-wide/from16 v16, v10

    cmp-long v2, v14, v10

    if-nez v2, :cond_b

    :cond_8
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    or-int/lit8 v7, v6, 0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_9
    const-wide/16 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v9, v2, :cond_c

    aget-object v13, v18, v9

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    int-to-long v2, v2

    add-long/2addr v10, v2

    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-ltz v2, :cond_a

    const/4 v2, -0x1

    iput v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    iget-object v0, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ForkJoinWorkerThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    move-wide/from16 v14, v16

    goto/16 :goto_1

    :catch_0
    move-exception v12

    goto :goto_5

    :cond_c
    move-wide/from16 v16, v10

    cmp-long v2, v14, v10

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-gtz v2, :cond_d

    const v2, -0x7ffffff9

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :cond_d
    const/4 v2, -0x1

    return v2

    :cond_e
    move-wide/from16 v14, v16

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method final awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;J)I"
        }
    .end annotation

    const/4 v12, 0x0

    if-eqz p1, :cond_2

    iget-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    if-eqz p2, :cond_2

    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v12, :cond_2

    iput-object p2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    instance-of v0, p2, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_3

    move-object v6, p2

    check-cast v6, Ljava/util/concurrent/CountedCompleter;

    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    :goto_1
    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v12, :cond_5

    :cond_1
    :goto_2
    iput-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    :cond_2
    return v12

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_8

    const-wide/16 v8, 0x0

    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/ForkJoinTask;->internalWait(J)V

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v4, 0x1000000000000L

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    :cond_7
    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v12, :cond_0

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v10, p3, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_6

    const-wide/16 v8, 0x1

    goto :goto_3
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 25

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v20, v17

    check-cast v20, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v0, v20

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    const/16 v21, 0x1

    return v21

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const/4 v12, 0x0

    const/4 v5, 0x1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isQuiescent()Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_5

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v14

    cmp-long v21, v22, v10

    if-lez v21, :cond_2

    const/16 v21, 0x0

    return v21

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_3
    const/4 v5, 0x0

    add-int/lit8 v8, v18, -0x1

    add-int/lit8 v21, v8, 0x1

    shl-int/lit8 v6, v21, 0x2

    move v13, v12

    :goto_1
    if-ltz v6, :cond_6

    add-int/lit8 v12, v13, 0x1

    and-int v7, v13, v8

    if-gt v7, v8, :cond_4

    if-ltz v7, :cond_4

    aget-object v9, v19, v7

    if-eqz v9, :cond_4

    iget v4, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v21, v0

    sub-int v21, v4, v21

    if-gez v21, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v9, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, -0x1

    move v13, v12

    goto :goto_1

    :cond_5
    const/16 v21, 0x1

    return v21

    :cond_6
    move v12, v13

    goto :goto_0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    :cond_0
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v10, :cond_1

    invoke-virtual/range {p0 .. p3}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return v12

    :cond_1
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v10

    if-eqz v10, :cond_2

    return v13

    :cond_2
    cmp-long v10, v8, v14

    if-gtz v10, :cond_3

    return v12

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v4, v10, v8

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    monitor-exit p0

    return v13

    :cond_4
    cmp-long v10, v8, v14

    if-gtz v10, :cond_5

    monitor-exit p0

    return v12

    :cond_5
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v10, v6, v14

    if-lez v10, :cond_6

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->wait(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    sub-long v8, v4, v10

    goto :goto_0

    :cond_6
    const-wide/16 v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method final deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 22

    const/4 v15, 0x0

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v15, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v15, :cond_1

    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v3, 0xffff

    and-int v12, v2, v3

    iget v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v2, v0

    if-le v2, v12, :cond_0

    aget-object v2, v17, v12

    if-ne v2, v15, :cond_0

    const/4 v2, 0x0

    aput-object v2, v17, v12

    :cond_0
    iget-wide v2, v11, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    int-to-long v4, v13

    add-long/2addr v2, v4

    iput-wide v2, v11, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    :cond_1
    if-eqz v15, :cond_2

    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide/high16 v8, 0x1000000000000L

    sub-long v8, v6, v8

    const-wide/high16 v18, -0x1000000000000L

    and-long v8, v8, v18

    const-wide v18, 0x100000000L

    sub-long v18, v6, v18

    const-wide v20, 0xffff00000000L

    and-long v18, v18, v20

    or-long v8, v8, v18

    const-wide v18, 0xffffffffL

    and-long v18, v18, v6

    or-long v8, v8, v18

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    if-eqz v15, :cond_4

    const/4 v2, 0x0

    iput-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    const/4 v2, -0x1

    iput v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    invoke-virtual {v15}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    move-result v2

    if-ltz v2, :cond_5

    if-eqz v15, :cond_5

    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-nez v2, :cond_6

    :cond_5
    :goto_0
    if-nez p2, :cond_8

    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    throw v2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_5

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    long-to-int v14, v6

    if-eqz v14, :cond_7

    add-int/lit8 v2, v16, -0x1

    and-int/2addr v2, v14

    aget-object v8, v17, v2

    const-wide/high16 v9, 0x1000000000000L

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_5

    const-wide v2, 0x800000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    goto :goto_0

    :cond_8
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-object v3, v4, v1

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public execute(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    return-void
.end method

.method final externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)I"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v3, v0

    and-int/lit8 v3, v3, 0x7e

    aget-object v3, v2, v3

    invoke-virtual {p0, v3, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    move-result v3

    :cond_0
    return v3
.end method

.method final externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    :cond_0
    :goto_0
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-lez v3, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    goto :goto_0

    :cond_2
    array-length v5, v6

    if-lez v5, :cond_1

    add-int/lit8 v7, v5, -0x1

    and-int/2addr v7, v2

    and-int/lit8 v0, v7, 0x7e

    aget-object v1, v6, v0

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryCreateExternalQueue(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->sharedPush(Ljava/util/concurrent/ForkJoinTask;)I

    move-result v4

    if-gez v4, :cond_4

    :goto_1
    return-void

    :cond_4
    if-nez v4, :cond_5

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v2

    goto :goto_0
.end method

.method public getActiveThreadCount()I
    .locals 6

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v3, 0xffff

    and-int/2addr v2, v3

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v4, v3

    long-to-int v3, v4

    add-int v0, v2, v3

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 3

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int v0, v1, v2

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 4

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v2, v3, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 8

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    aget-object v4, v5, v2

    if-eqz v4, :cond_0

    iget v6, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v6

    add-long/2addr v0, v6

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    iget-wide v0, v3, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method final helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)I"
        }
    .end annotation

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    add-int/lit8 v6, v16, -0x1

    move-object/from16 v0, p1

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    not-int v13, v7

    and-int v10, v13, v6

    move v5, v10

    const/4 v15, 0x3

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    iget v14, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-gez v14, :cond_2

    :cond_1
    return v14

    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    if-eqz p3, :cond_3

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_1

    :cond_3
    move v10, v5

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    or-int/lit8 v4, v5, 0x1

    if-ltz v4, :cond_5

    if-le v4, v6, :cond_8

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_1
    if-lez v3, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_7

    if-eqz p3, :cond_7

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_1

    :cond_7
    ushr-int/lit8 v18, v13, 0x10

    or-int/lit8 v15, v18, 0x3

    shl-int/lit8 v18, v13, 0xd

    xor-int v13, v13, v18

    ushr-int/lit8 v18, v13, 0x11

    xor-int v13, v13, v18

    shl-int/lit8 v18, v13, 0x5

    xor-int v13, v13, v18

    and-int v10, v13, v6

    move v5, v10

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    aget-object v12, v17, v4

    if-eqz v12, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I

    move-result v3

    if-gez v3, :cond_6

    add-int/2addr v2, v3

    goto :goto_1

    :cond_9
    add-int v18, v5, v15

    and-int v5, v18, v6

    if-ne v5, v10, :cond_0

    move v9, v2

    if-eq v8, v2, :cond_1

    const/4 v2, 0x0

    move v8, v9

    goto :goto_0
.end method

.method final helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 23

    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    move/from16 v22, v0

    const/16 v18, 0x1

    :cond_0
    :goto_0
    if-ltz v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v20

    if-eqz v20, :cond_3

    if-nez v18, :cond_2

    const/16 v18, 0x1

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v6, 0x1000000000000L

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    :cond_2
    move-object/from16 v0, v20

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    if-gez v2, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    goto :goto_0

    :cond_3
    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v6, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffffffL

    and-long/2addr v4, v6

    or-long v8, v2, v4

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v18, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v2, 0x1000000000000L

    add-long v16, v6, v2

    move-object/from16 v11, p0

    move-wide v14, v6

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method public invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, v5}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    return-object v1

    :cond_2
    throw v4
.end method

.method public isQuiescent()Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShutdown()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTerminated()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTerminating()Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1
.end method

.method protected pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v2

    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v6, :cond_1

    array-length v5, v6

    if-lez v5, :cond_1

    add-int/lit8 v1, v5, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    shl-int/lit8 v7, v0, 0x1

    and-int/2addr v7, v1

    aget-object v4, v6, v7

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method final registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 18

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    new-instance v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v14, -0x10000

    and-int v6, v13, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    :try_start_0
    iget-wide v14, v2, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    const-wide/32 v16, -0x61c88647

    add-long v14, v14, v16

    iput-wide v14, v2, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    long-to-int v9, v14

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v12, :cond_4

    array-length v7, v12

    if-lez v7, :cond_4

    add-int/lit8 v5, v7, -0x1

    shl-int/lit8 v13, v9, 0x1

    or-int/lit8 v13, v13, 0x1

    and-int v4, v5, v13

    aget-object v13, v12, v4

    if-eqz v13, :cond_3

    const/4 v8, 0x0

    const/4 v13, 0x4

    if-gt v7, v13, :cond_2

    const/4 v10, 0x2

    :cond_1
    :goto_0
    add-int v13, v4, v10

    and-int v4, v13, v5

    aget-object v13, v12, v4

    if-eqz v13, :cond_3

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v7, :cond_1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    add-int/lit8 v5, v7, -0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    ushr-int/lit8 v13, v7, 0x1

    const v14, 0xfffe

    and-int/2addr v13, v14

    add-int/lit8 v10, v13, 0x2

    goto :goto_0

    :cond_3
    iput v9, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    or-int v13, v4, v6

    iput v13, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v13, 0x7fff0000

    and-int/2addr v13, v9

    or-int/2addr v13, v4

    iput v13, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    aput-object v11, v12, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    ushr-int/lit8 v14, v4, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    return-object v11

    :catchall_0
    move-exception v13

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    throw v13
.end method

.method final runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 10

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    iget v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v7, 0x20000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    int-to-long v6, v6

    const-wide v8, -0x2545f4914f6cdd1dL    # -1.1283317689613908E129

    mul-long v4, v6, v8

    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    const-wide/16 v2, 0x1

    :cond_0
    :goto_1
    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/16 v0, 0x3ff

    goto :goto_0

    :cond_3
    move-wide v2, v4

    goto :goto_1

    :cond_4
    const/16 v6, 0x30

    ushr-long v6, v2, v6

    long-to-int v6, v6

    or-int/lit8 v1, v6, 0x1

    const/16 v6, 0xc

    ushr-long v6, v2, v6

    xor-long/2addr v2, v6

    const/16 v6, 0x19

    shl-long v6, v2, v6

    xor-long/2addr v2, v6

    const/16 v6, 0x1b

    ushr-long v6, v2, v6

    xor-long/2addr v2, v6

    long-to-int v6, v2

    invoke-direct {p0, p1, v0, v1, v6}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I

    move-result v6

    if-gez v6, :cond_0

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_2
.end method

.method public shutdown()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork()V
    .locals 18

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-ltz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    long-to-int v12, v6

    if-nez v12, :cond_3

    const-wide v2, 0x800000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v15, :cond_1

    array-length v2, v15

    const v3, 0xffff

    and-int v10, v12, v3

    if-le v2, v10, :cond_1

    aget-object v13, v15, v10

    if-eqz v13, :cond_1

    const v2, 0x7fffffff

    and-int v11, v12, v2

    iget v14, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/high16 v4, 0x1000000000000L

    add-long/2addr v4, v6

    const-wide v16, -0x100000000L

    and-long v4, v4, v16

    or-long v8, v2, v4

    if-ne v12, v14, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v11, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    iget-object v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
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

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    const-wide/16 v18, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_3

    aget-object v21, v22, v5

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v17

    and-int/lit8 v23, v5, 0x1

    if-nez v23, :cond_2

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v10, v10, v24

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    move-wide/from16 v18, v0

    goto :goto_0

    :cond_2
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v12, v12, v24

    move-object/from16 v0, v21

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v18, v18, v24

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v23

    if-eqz v23, :cond_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    move/from16 v23, v0

    const v24, 0xffff

    and-int v9, v23, v24

    const/16 v23, 0x20

    ushr-long v24, v6, v23

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    add-int v20, v9, v23

    const/16 v23, 0x30

    shr-long v24, v6, v23

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v4, v9, v23

    if-gez v4, :cond_4

    const/4 v4, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v23, v15, 0x4

    if-eqz v23, :cond_5

    const-string/jumbo v8, "Terminated"

    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/util/concurrent/AbstractExecutorService;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", parallelism = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", size = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", active = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", running = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", steals = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", tasks = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", submissions = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    return-object v23

    :cond_5
    and-int/lit8 v23, v15, 0x2

    if-eqz v23, :cond_6

    const-string/jumbo v8, "Terminating"

    goto/16 :goto_3

    :cond_6
    const/high16 v23, -0x80000000

    and-int v23, v23, v15

    if-eqz v23, :cond_7

    const-string/jumbo v8, "Shutting down"

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v8, "Running"

    goto/16 :goto_3
.end method

.method final tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_0

    array-length v2, v3

    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v0

    and-int/lit8 v5, v5, 0x7e

    aget-object v1, v3, v5

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    :cond_0
    return v4
.end method
