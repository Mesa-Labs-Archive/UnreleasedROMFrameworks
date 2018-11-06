.class Lsun/nio/fs/PollingWatchService$PollingWatchKey;
.super Lsun/nio/fs/AbstractWatchKey;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/PollingWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollingWatchKey"
.end annotation


# instance fields
.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/file/Path;",
            "Lsun/nio/fs/PollingWatchService$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final fileKey:Ljava/lang/Object;

.field private poller:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/nio/fs/PollingWatchService;

.field private tickCount:I

.field private volatile valid:Z


# direct methods
.method constructor <init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService;Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    move-object/from16 v0, p4

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey:Ljava/lang/Object;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    const/4 v8, 0x0

    iput v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/nio/file/LinkOption;

    sget-object v10, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-static {v3, v8}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v6

    iget-object v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v10

    new-instance v11, Lsun/nio/fs/PollingWatchService$CacheEntry;

    iget v12, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    invoke-direct {v11, v6, v7, v12}, Lsun/nio/fs/PollingWatchService$CacheEntry;-><init>(JI)V

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_1
    if-eqz v5, :cond_0

    :try_start_2
    invoke-interface {v5}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    if-eqz v9, :cond_4

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v8

    throw v8

    :cond_1
    if-eqz v5, :cond_2

    :try_start_4
    invoke-interface {v5}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    if-eqz v9, :cond_5

    :try_start_5
    throw v9

    :catch_2
    move-exception v9

    goto :goto_3

    :catch_3
    move-exception v10

    if-nez v9, :cond_3

    move-object v9, v10

    goto :goto_2

    :cond_3
    if-eq v9, v10, :cond_0

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v8
    :try_end_5
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    return-void

    :catchall_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-get0(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-get0(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method disable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method enable(Ljava/util/Set;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    new-instance v1, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;

    invoke-direct {v1, p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;-><init>(Lsun/nio/fs/PollingWatchService$PollingWatchKey;)V

    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-get1(Lsun/nio/fs/PollingWatchService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey:Ljava/lang/Object;

    return-object v0
.end method

.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    return v0
.end method

.method declared-synchronized poll()V
    .locals 18

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->watchable()Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    :try_start_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;
    :try_end_3
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v8, 0x0

    const/4 v14, 0x1

    :try_start_4
    new-array v14, v14, [Ljava/nio/file/LinkOption;

    sget-object v15, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v4, v14}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/file/attribute/FileTime;->toMillis()J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v8

    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/fs/PollingWatchService$CacheEntry;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    new-instance v16, Lsun/nio/fs/PollingWatchService$CacheEntry;

    move-object/from16 v0, p0

    iget v0, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v8, v9, v1}, Lsun/nio/fs/PollingWatchService$CacheEntry;-><init>(JI)V

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_6
    invoke-interface {v12}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/nio/fs/PollingWatchService$CacheEntry;

    invoke-virtual {v5}, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    if-eq v14, v15, :cond_2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/file/Path;

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :catch_1
    move-exception v13

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->cancel()V

    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signal()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    :try_start_a
    invoke-interface {v12}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    :try_start_b
    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    :try_start_c
    invoke-static {v3}, Lsun/nio/fs/PollingWatchService$CacheEntry;->-get0(Lsun/nio/fs/PollingWatchService$CacheEntry;)J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    invoke-virtual {v3, v8, v9, v14}, Lsun/nio/fs/PollingWatchService$CacheEntry;->update(JI)V
    :try_end_c
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    :cond_6
    :try_start_d
    invoke-interface {v12}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v13

    goto/16 :goto_1

    :catch_3
    move-exception v13

    goto/16 :goto_1

    :catch_4
    move-exception v13

    goto :goto_3

    :cond_7
    monitor-exit p0

    return-void

    :catch_5
    move-exception v13

    goto/16 :goto_0
.end method
