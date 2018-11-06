.class Lsun/nio/fs/UnixDirectoryStream;
.super Ljava/lang/Object;
.source "UnixDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final dir:Lsun/nio/fs/UnixPath;

.field private final dp:J

.field private final filter:Ljava/nio/file/DirectoryStream$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final guard:Ldalvik/system/CloseGuard;

.field private volatile isClosed:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->dir:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/fs/UnixDirectoryStream;)J
    .locals 2

    iget-wide v0, p0, Lsun/nio/fs/UnixDirectoryStream;->dp:J

    return-wide v0
.end method

.method static synthetic -get2(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->filter:Ljava/nio/file/DirectoryStream$Filter;

    return-object v0
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "J",
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Lsun/nio/fs/UnixDirectoryStream;->dir:Lsun/nio/fs/UnixPath;

    iput-wide p2, p0, Lsun/nio/fs/UnixDirectoryStream;->dp:J

    iput-object p4, p0, Lsun/nio/fs/UnixDirectoryStream;->filter:Ljava/nio/file/DirectoryStream$Filter;

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->closeImpl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected final closeImpl()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v1, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    :try_start_0
    iget-wide v2, p0, Lsun/nio/fs/UnixDirectoryStream;->dp:J

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->closedir(J)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    return v4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected final directory()Lsun/nio/fs/UnixPath;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->dir:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->close()V

    return-void
.end method

.method protected final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p0}, Lsun/nio/fs/UnixDirectoryStream;->iterator(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected final iterator(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Directory stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Iterator already obtained"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;-><init>(Lsun/nio/fs/UnixDirectoryStream;Ljava/nio/file/DirectoryStream;)V

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->iterator:Ljava/util/Iterator;

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->iterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method protected final readLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method protected final writeLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method
