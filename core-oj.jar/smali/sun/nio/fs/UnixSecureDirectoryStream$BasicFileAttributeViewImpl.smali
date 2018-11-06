.class Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
.super Ljava/lang/Object;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixSecureDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicFileAttributeViewImpl"
.end annotation


# instance fields
.field final file:Lsun/nio/fs/UnixPath;

.field final followLinks:Z

.field final synthetic this$0:Lsun/nio/fs/UnixSecureDirectoryStream;


# direct methods
.method static synthetic -wrap0(Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->checkWriteAccess()V

    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V
    .locals 0

    iput-object p1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    iput-boolean p3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    return-void
.end method

.method private checkWriteAccess()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    goto :goto_0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "basic"

    return-object v0
.end method

.method open()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    iget-boolean v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    if-nez v2, :cond_0

    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    const/4 v2, -0x1

    return v2
.end method

.method public readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v3}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_3

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    invoke-static {v3}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    :cond_2
    :try_start_3
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    invoke-static {v3, v4, v5}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v6
.end method

.method public setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->checkWriteAccess()V

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v3}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_5

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    :try_start_2
    invoke-static {v1}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object p2

    :cond_3
    :goto_1
    :try_start_3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v1, v4, v5, v6, v7}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v3, :cond_4

    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->open()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_6
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_7
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v4, :cond_6

    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_6
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception v2

    :try_start_8
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2
.end method
