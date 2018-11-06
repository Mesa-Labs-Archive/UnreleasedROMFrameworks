.class abstract Lsun/nio/ch/AsynchronousFileChannelImpl;
.super Ljava/nio/channels/AsynchronousFileChannel;
.source "AsynchronousFileChannelImpl.java"


# instance fields
.field protected final closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected volatile closed:Z

.field protected final executor:Ljava/util/concurrent/ExecutorService;

.field protected final fdObj:Ljava/io/FileDescriptor;

.field private volatile fileLockTable:Lsun/nio/ch/FileLockTable;

.field protected final reading:Z

.field protected final writing:Z


# direct methods
.method protected constructor <init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/nio/channels/AsynchronousFileChannel;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    iput-object p1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    iput-boolean p2, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->reading:Z

    iput-boolean p3, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->writing:Z

    iput-object p4, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method protected final addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;
    .locals 9

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->ensureFileLockTableInitialized()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V

    iget-object v1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v1, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    return-object v0

    :catch_0
    move-exception v7

    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    throw v1
.end method

.method protected final begin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method protected final end()V
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected final end(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method final ensureFileLockTableInitialized()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-static {p0, v0}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final executor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method abstract implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
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
.end method

.method abstract implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
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
.end method

.method protected abstract implRelease(Lsun/nio/ch/FileLockImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
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
.end method

.method final invalidateAllLocks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v4}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/FileLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    check-cast v0, Lsun/nio/ch/FileLockImpl;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRelease(Lsun/nio/ch/FileLockImpl;)V

    invoke-virtual {v3}, Lsun/nio/ch/FileLockImpl;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4

    :cond_1
    return-void
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final lock(JJZ)Ljava/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v8, v7

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final lock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JJZTA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/nio/channels/FileLock;",
            "-TA;>;)V"
        }
    .end annotation

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual/range {p0 .. p7}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 2
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
            "-TA;>;)V"
        }
    .end annotation

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    return-void
.end method

.method final release(Lsun/nio/ch/FileLockImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->begin()V

    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRelease(Lsun/nio/ch/FileLockImpl;)V

    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    throw v0
.end method

.method protected final removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    return-void
.end method

.method public final write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 2
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
            "-TA;>;)V"
        }
    .end annotation

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    return-void
.end method
