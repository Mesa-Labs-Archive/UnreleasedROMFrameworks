.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final INHERITABLETHREADLOCALS:J

.field private static final INHERITEDACCESSCONTROLCONTEXT:J

.field private static final THREADLOCALS:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "threadLocals"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "inheritableThreadLocals"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "inheritedAccessControlContext"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 1

    const-string/jumbo v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 4

    const-string/jumbo v0, "aForkJoinWorkerThread"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J

    invoke-virtual {v0, p0, v2, v3, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->eraseThreadLocals()V

    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    return-void
.end method

.method final eraseThreadLocals()V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iget-object v3, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ForkJoinPool;->runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    if-nez v0, :cond_1

    move-object v2, v1

    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v3

    :catchall_2
    move-exception v3

    :try_start_3
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_3
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v3
.end method
