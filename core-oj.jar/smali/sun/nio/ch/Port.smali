.class abstract Lsun/nio/ch/Port;
.super Lsun/nio/ch/AsynchronousChannelGroupImpl;
.source "Port.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Port$PollableChannel;
    }
.end annotation


# instance fields
.field protected final fdToChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/nio/ch/Port$PollableChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected final fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lsun/nio/ch/AsynchronousChannelGroupImpl;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final attachForeignChannel(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 2

    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    new-instance v1, Lsun/nio/ch/Port$1;

    invoke-direct {v1, p0, p1}, Lsun/nio/ch/Port$1;-><init>(Lsun/nio/ch/Port;Ljava/nio/channels/Channel;)V

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method final closeAllChannels()V
    .locals 10

    const/16 v9, 0x80

    const/16 v0, 0x80

    new-array v1, v9, [Lsun/nio/ch/Port$PollableChannel;

    :cond_0
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v3, 0x1

    :try_start_2
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/nio/ch/Port$PollableChannel;

    aput-object v8, v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v2, v9, :cond_1

    :goto_1
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_2

    :try_start_3
    aget-object v8, v1, v6

    invoke-interface {v8}, Lsun/nio/ch/Port$PollableChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_4
    iget-object v9, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    :cond_2
    if-gtz v2, :cond_0

    return-void

    :catch_0
    move-exception v7

    goto :goto_3

    :catchall_1
    move-exception v8

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method final detachForeignChannel(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/ch/Port;->unregister(I)V

    return-void
.end method

.method final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected preUnregister(I)V
    .locals 0

    return-void
.end method

.method final register(ILsun/nio/ch/Port$PollableChannel;)V
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/Port;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v0}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method abstract startPoll(II)V
.end method

.method final unregister(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lsun/nio/ch/Port;->preUnregister(I)V

    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/Port;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/Port;->shutdownNow()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method
