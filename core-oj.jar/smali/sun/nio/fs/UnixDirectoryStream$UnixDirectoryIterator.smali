.class Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
.super Ljava/lang/Object;
.source "UnixDirectoryStream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnixDirectoryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private atEof:Z

.field private nextEntry:Ljava/nio/file/Path;

.field private final stream:Ljava/nio/file/DirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/nio/fs/UnixDirectoryStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixDirectoryStream;Ljava/nio/file/DirectoryStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    iput-object p2, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->stream:Ljava/nio/file/DirectoryStream;

    return-void
.end method

.method private isSelfOrParent([B)Z
    .locals 5

    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v2, 0x1

    aget-byte v0, p1, v3

    if-ne v0, v4, :cond_1

    array-length v0, p1

    if-eq v0, v2, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget-byte v0, p1, v2

    if-ne v0, v4, :cond_1

    :cond_0
    return v2

    :cond_1
    return v3
.end method

.method private readNextEntry()Ljava/nio/file/Path;
    .locals 7

    const/4 v6, 0x0

    sget-boolean v4, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get1(Lsun/nio/fs/UnixDirectoryStream;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->readdir(J)[B
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_1
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v2, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    return-object v6

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get0(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v1

    new-instance v4, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v4, v1}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    :cond_2
    invoke-direct {p0, v2}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->isSelfOrParent([B)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get0(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixPath;->resolve([B)Lsun/nio/fs/UnixPath;

    move-result-object v0

    :try_start_2
    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get2(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->this$0:Lsun/nio/fs/UnixDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixDirectoryStream;->-get2(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/nio/file/DirectoryStream$Filter;->accept(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    return-object v0

    :catch_1
    move-exception v1

    new-instance v4, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v4, v1}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v4
.end method


# virtual methods
.method public declared-synchronized hasNext()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->readNextEntry()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    :cond_0
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized next()Ljava/nio/file/Path;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->atEof:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->readNextEntry()Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;->nextEntry:Ljava/nio/file/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
