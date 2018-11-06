.class public Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
.super Lsun/nio/ch/AsynchronousFileChannelImpl;
.source "SimpleAsynchronousFileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;
    }
.end annotation


# static fields
.field private static final nd:Lsun/nio/ch/FileDispatcher;


# instance fields
.field private final threads:Lsun/nio/ch/NativeThreadSet;


# direct methods
.method static synthetic -get0()Lsun/nio/ch/FileDispatcher;
    .locals 1

    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/nio/ch/AsynchronousFileChannelImpl;-><init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V

    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    return-void
.end method

.method public static open(Ljava/io/FileDescriptor;ZZLsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 2

    if-nez p3, :cond_0

    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;->defaultExecutor:Ljava/util/concurrent/ExecutorService;

    :goto_0
    new-instance v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;-><init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V

    return-object v1

    :cond_0
    invoke-virtual {p3}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->invalidateAllLocks()V

    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public force(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    :cond_0
    sget-object v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v5, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-ltz v0, :cond_2

    :goto_0
    :try_start_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    if-ltz v0, :cond_3

    :goto_1
    :try_start_2
    invoke-virtual {p0, v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v2

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JJZTA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/nio/channels/FileLock;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_0

    iget-boolean v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    :cond_0
    if-nez p5, :cond_1

    iget-boolean v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    :cond_1
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v13, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v13}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    if-nez p7, :cond_2

    invoke-static {v13}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v3

    return-object v3

    :cond_2
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1, v4, v13, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    const/4 v3, 0x0

    return-object v3

    :cond_3
    if-nez p7, :cond_5

    new-instance v11, Lsun/nio/ch/PendingFuture;

    invoke-direct {v11, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    :goto_0
    new-instance v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;JJZLsun/nio/ch/FileLockImpl;Ljava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    const/4 v14, 0x0

    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x1

    if-nez v14, :cond_4

    invoke-virtual {p0, v9}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    :cond_4
    return-object v11

    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-nez v14, :cond_6

    invoke-virtual {p0, v9}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    :cond_6
    throw v3
.end method

.method implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Read-only buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-nez p5, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v2

    return-object v2

    :cond_4
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p5, p4, v2, v0, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    return-object v5

    :cond_6
    if-nez p5, :cond_7

    new-instance v7, Lsun/nio/ch/PendingFuture;

    invoke-direct {v7, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    :goto_1
    new-instance v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p5

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v7

    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected implRelease(Lsun/nio/ch/FileLockImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-nez p5, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v2

    return-object v2

    :cond_3
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    goto :goto_0

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p5, p4, v2, v0, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    return-object v5

    :cond_5
    if-nez p5, :cond_6

    new-instance v7, Lsun/nio/ch/PendingFuture;

    invoke-direct {v7, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    :goto_1
    new-instance v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p5

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public size()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    :cond_0
    sget-object v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v6}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    const-wide/16 v6, -0x3

    cmp-long v3, v0, v6

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    cmp-long v3, v0, v8

    if-ltz v3, :cond_2

    :goto_0
    :try_start_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-wide v0

    :cond_2
    move v4, v5

    goto :goto_0

    :catchall_0
    move-exception v3

    cmp-long v6, v0, v8

    if-ltz v6, :cond_3

    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v3

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public truncate(J)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, -0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Negative size"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-boolean v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    :cond_1
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    :cond_2
    sget-object v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v6}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    cmp-long v3, v0, v10

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    cmp-long v3, p1, v0

    if-gez v3, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    sget-object v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v6, p1, p2}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v3

    int-to-long v0, v3

    cmp-long v3, v0, v10

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    :cond_5
    cmp-long v3, v0, v8

    if-lez v3, :cond_6

    :goto_0
    :try_start_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-object p0

    :cond_6
    move v4, v5

    goto :goto_0

    :catchall_0
    move-exception v3

    cmp-long v6, v0, v8

    if-lez v6, :cond_7

    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v3

    :cond_7
    move v4, v5

    goto :goto_1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_0

    iget-boolean v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    :cond_0
    if-nez p5, :cond_1

    iget-boolean v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v11

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    :cond_3
    sget-object v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v10

    const/4 v1, 0x2

    if-ne v10, v1, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    if-nez v10, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x1

    if-nez v9, :cond_5

    invoke-virtual {p0, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    :cond_5
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v11}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-object v0

    :cond_6
    const/4 v1, -0x1

    if-ne v10, v1, :cond_8

    const/4 v1, 0x0

    if-nez v9, :cond_7

    invoke-virtual {p0, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    :cond_7
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v11}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    return-object v1

    :cond_8
    const/4 v1, 0x2

    if-ne v10, v1, :cond_a

    :try_start_1
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    if-nez v9, :cond_9

    invoke-virtual {p0, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v11}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    throw v1

    :cond_a
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
