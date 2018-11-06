.class Lsun/nio/fs/UnixCopyFile;
.super Ljava/lang/Object;
.source "UnixCopyFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixCopyFile$Flags;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    :cond_0
    invoke-static/range {p2 .. p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromCopyOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v11, 0x0

    :try_start_0
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/file/LinkPermission;

    const-string/jumbo v2, "symbolic"

    invoke-direct {v0, v2}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_2

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_5

    invoke-virtual {v1, v11}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :catch_0
    move-exception v13

    invoke-virtual {v13, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :catch_1
    move-exception v13

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_2
    invoke-virtual {v11}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_3
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    return-void

    :cond_6
    :try_start_3
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v13

    invoke-virtual {v11}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v13}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_7

    invoke-virtual {v13}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_8

    :cond_7
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v13, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    return-void

    :cond_a
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->interruptible:Z

    if-nez v0, :cond_b

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    return-void

    :cond_b
    move-object v6, v1

    new-instance v7, Lsun/nio/fs/UnixCopyFile$1;

    invoke-direct {v7, p0, v6, p1, v3}, Lsun/nio/fs/UnixCopyFile$1;-><init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    :try_start_4
    invoke-static {v7}, Lsun/nio/fs/Cancellable;->runInterruptibly(Lsun/nio/fs/Cancellable;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    instance-of v0, v10, Ljava/io/IOException;

    if-eqz v0, :cond_c

    check-cast v10, Ljava/io/IOException;

    throw v10

    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {p2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir(Lsun/nio/fs/UnixPath;I)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    if-nez v5, :cond_0

    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    if-ltz v0, :cond_8

    :try_start_3
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {v0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {v0, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_2
    :try_start_4
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_4

    if-ltz v0, :cond_4

    const/4 v3, -0x1

    :try_start_5
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    :cond_3
    :goto_3
    if-ltz v3, :cond_4

    :try_start_6
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_4
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_5

    if-ltz v0, :cond_b

    :try_start_7
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-static {v0, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :goto_4
    const/4 v1, 0x1

    if-ltz v0, :cond_6

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_6
    if-nez v1, :cond_7

    :try_start_8
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_7
    :goto_5
    return-void

    :catch_1
    move-exception v4

    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v5, :cond_1

    :try_start_9
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_6
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_6

    :cond_8
    :try_start_a
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {p2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_a
    .catch Lsun/nio/fs/UnixException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v4

    :try_start_b
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    if-ltz v0, :cond_9

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    :cond_9
    if-nez v1, :cond_a

    :try_start_c
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_c
    .catch Lsun/nio/fs/UnixException; {:try_start_c .. :try_end_c} :catch_7

    :cond_a
    :goto_7
    throw v5

    :catch_4
    move-exception v4

    :try_start_d
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v5, :cond_3

    invoke-virtual {v4, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :cond_b
    :try_start_e
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-static {p2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_e
    .catch Lsun/nio/fs/UnixException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    :catch_5
    move-exception v4

    :try_start_f
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v5, :cond_5

    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_5

    :catch_7
    move-exception v2

    goto :goto_7
.end method

.method private static copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    :try_start_0
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, -0x1

    :try_start_1
    sget v5, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    sget v6, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    or-int/2addr v5, v6

    sget v6, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    or-int/2addr v5, v6

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v6

    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v1, p4, p5}, Lsun/nio/fs/UnixCopyFile;->transfer(IIJ)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {v2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {v2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_3
    :try_start_5
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    :cond_1
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_2

    :try_start_6
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_6
    .catch Lsun/nio/fs/UnixException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_4
    const/4 v0, 0x1

    :try_start_7
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_3

    :try_start_8
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :goto_5
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_9
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    throw v5

    :catch_2
    move-exception v4

    :try_start_a
    invoke-virtual {v4, p0, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_b
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v0, :cond_4

    :try_start_c
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_c
    .catch Lsun/nio/fs/UnixException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_4
    :goto_6
    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_3
    move-exception v4

    :try_start_e
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    :cond_5
    :try_start_f
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-static {p2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_f
    .catch Lsun/nio/fs/UnixException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v4

    :try_start_10
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_4

    :catch_5
    move-exception v3

    goto :goto_5

    :catch_6
    move-exception v3

    goto :goto_6
.end method

.method private static copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->readlink(Lsun/nio/fs/UnixPath;)[B
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-static {v0, p2}, Lsun/nio/fs/UnixNativeDispatcher;->symlink([BLsun/nio/fs/UnixPath;)V

    iget-boolean v2, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v2

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v3

    invoke-static {p2, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->lchown(Lsun/nio/fs/UnixPath;II)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->rdev()J

    move-result-wide v4

    invoke-static {p2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->mknod(Lsun/nio/fs/UnixPath;IJ)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v4

    invoke-static {p2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {p2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    :try_start_3
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {p2, v4, v5, v6, v7}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    if-nez v0, :cond_2

    :try_start_5
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_6
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-nez v0, :cond_3

    :try_start_7
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_4
    throw v3

    :catch_2
    move-exception v2

    :try_start_8
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4
.end method

.method static varargs move(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    :cond_0
    invoke-static {p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromMoveOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v3

    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->atomicMove:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/nio/file/AtomicMoveNotSupportedException;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v10, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_6

    invoke-virtual {v1, v8}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :catch_1
    move-exception v10

    invoke-virtual {v10, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_1

    :catch_2
    move-exception v10

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_3
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_4
    :try_start_4
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :cond_7
    :try_start_5
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v10

    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_8

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_9

    :cond_8
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v10, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_4

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-eq v0, v2, :cond_a

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-eq v0, v2, :cond_a

    invoke-virtual {v10, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    :cond_a
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    :goto_5
    :try_start_6
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_6
    .catch Lsun/nio/fs/UnixException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    return-void

    :cond_b
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDevice()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    goto :goto_5

    :cond_d
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    goto :goto_5

    :cond_e
    :try_start_7
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v10

    :try_start_8
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_7
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_f

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_11

    :cond_f
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :try_start_9
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    move-exception v6

    goto :goto_7

    :cond_11
    invoke-virtual {v10, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_6
.end method

.method static native transfer(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
