.class abstract Lsun/nio/fs/AbstractWatchService;
.super Ljava/lang/Object;
.source "AbstractWatchService.java"

# interfaces
.implements Ljava/nio/file/WatchService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractWatchService$1;
    }
.end annotation


# instance fields
.field private final CLOSE_KEY:Ljava/nio/file/WatchKey;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/nio/file/WatchKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lsun/nio/fs/AbstractWatchService$1;

    invoke-direct {v0, p0, v1, v1}, Lsun/nio/fs/AbstractWatchService$1;-><init>(Lsun/nio/fs/AbstractWatchService;Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchService;->CLOSE_KEY:Ljava/nio/file/WatchKey;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchService;->closeLock:Ljava/lang/Object;

    return-void
.end method

.method private checkKey(Ljava/nio/file/WatchKey;)V
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->CLOSE_KEY:Ljava/nio/file/WatchKey;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V

    :cond_0
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    return-void
.end method

.method private checkOpen()V
    .locals 1

    iget-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v0}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z

    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchService;->implClose()V

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lsun/nio/fs/AbstractWatchService;->CLOSE_KEY:Ljava/nio/file/WatchKey;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final closeLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->closeLock:Ljava/lang/Object;

    return-object v0
.end method

.method final enqueueKey(Ljava/nio/file/WatchKey;)V
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final poll()Ljava/nio/file/WatchKey;
    .locals 2

    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchKey;

    invoke-direct {p0, v0}, Lsun/nio/fs/AbstractWatchService;->checkKey(Ljava/nio/file/WatchKey;)V

    return-object v0
.end method

.method public final poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchKey;

    invoke-direct {p0, v0}, Lsun/nio/fs/AbstractWatchService;->checkKey(Ljava/nio/file/WatchKey;)V

    return-object v0
.end method

.method varargs abstract register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final take()Ljava/nio/file/WatchKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchKey;

    invoke-direct {p0, v0}, Lsun/nio/fs/AbstractWatchService;->checkKey(Ljava/nio/file/WatchKey;)V

    return-object v0
.end method
