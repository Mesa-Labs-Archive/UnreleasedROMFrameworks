.class Lsun/nio/fs/UnixChannelFactory;
.super Ljava/lang/Object;
.source "UnixChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixChannelFactory$Flags;
    }
.end annotation


# static fields
.field private static final fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newAsynchronousFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;ILsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;I",
            "Lsun/nio/ch/ThreadPool;",
            ")",
            "Ljava/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/fs/UnixChannelFactory$Flags;->toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;

    move-result-object v1

    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    :cond_0
    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "APPEND not allowed"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v1, p2}, Lsun/nio/fs/UnixChannelFactory;->open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    iget-boolean v3, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    invoke-static {v0, v2, v3, p3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->open(Ljava/io/FileDescriptor;ZZLsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object v2

    return-object v2
.end method

.method static newFileChannel(ILjava/lang/String;ZZ)Ljava/nio/channels/FileChannel;
    .locals 2

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sget-object v1, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    invoke-interface {v1, v0, p0}, Lsun/misc/JavaIOFileDescriptorAccess;->set(Ljava/io/FileDescriptor;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method static newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;I)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p3}, Lsun/nio/fs/UnixChannelFactory$Flags;->toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;

    move-result-object v6

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-nez v1, :cond_0

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_1

    iput-boolean v2, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    :cond_0
    :goto_0
    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "READ + APPEND not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-boolean v2, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    goto :goto_0

    :cond_2
    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "APPEND + TRUNCATE_EXISTING not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {p0, p1, p2, v6, p4}, Lsun/nio/fs/UnixChannelFactory;->open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    iget-boolean v3, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    iget-boolean v4, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method static newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;I)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method protected static open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_3

    sget v4, Lsun/nio/fs/UnixConstants;->O_RDWR:I

    :goto_0
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    if-eqz v9, :cond_0

    sget v9, Lsun/nio/fs/UnixConstants;->O_TRUNC:I

    or-int/2addr v4, v9

    :cond_0
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v9, :cond_1

    sget v9, Lsun/nio/fs/UnixConstants;->O_APPEND:I

    or-int/2addr v4, v9

    :cond_1
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-eqz v9, :cond_9

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v5, v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_5

    array-length v9, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    array-length v9, v5

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, v5, v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_5

    :cond_2
    new-instance v9, Lsun/nio/fs/UnixException;

    sget v10, Lsun/nio/fs/UnixConstants;->EEXIST:I

    invoke-direct {v9, v10}, Lsun/nio/fs/UnixException;-><init>(I)V

    throw v9

    :cond_3
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_4

    sget v4, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    goto :goto_0

    :cond_4
    sget v4, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    goto :goto_0

    :cond_5
    sget v9, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    sget v10, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    or-int/2addr v9, v10

    or-int/2addr v4, v9

    :cond_6
    :goto_1
    const/4 v2, 0x1

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-nez v9, :cond_b

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->noFollowLinks:Z

    if-nez v9, :cond_7

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_b

    :cond_7
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_a

    sget v9, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v9, :cond_a

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v9}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v9

    invoke-virtual {v9}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Lsun/nio/fs/UnixException;

    const-string/jumbo v10, "DELETE_ON_CLOSE specified and file is a symbolic link"

    invoke-direct {v9, v10}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v9

    sget v10, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-eq v9, v10, :cond_a

    :cond_8
    throw v7

    :cond_9
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    if-eqz v9, :cond_6

    sget v9, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    or-int/2addr v4, v9

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    sget v9, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v4, v9

    :cond_b
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->dsync:Z

    if-eqz v9, :cond_c

    sget v9, Lsun/nio/fs/UnixConstants;->O_DSYNC:I

    or-int/2addr v4, v9

    :cond_c
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->sync:Z

    if-eqz v9, :cond_d

    sget v9, Lsun/nio/fs/UnixConstants;->O_SYNC:I

    or-int/2addr v4, v9

    :cond_d
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    if-eqz v6, :cond_11

    if-nez p2, :cond_e

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object p2

    :cond_e
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v9, :cond_f

    invoke-virtual {v6, p2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_f
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_10

    invoke-virtual {v6, p2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_10
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_11

    invoke-virtual {v6, p2}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    :cond_11
    if-ltz p0, :cond_13

    :try_start_1
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v9

    invoke-static {p0, v9, v4, p4}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_12

    if-ltz p0, :cond_16

    :try_start_2
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat(I[BI)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_12
    :goto_3
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    sget-object v9, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    invoke-interface {v9, v1, v0}, Lsun/misc/JavaIOFileDescriptorAccess;->set(Ljava/io/FileDescriptor;I)V

    return-object v1

    :cond_13
    :try_start_3
    invoke-static {p1, v4, p4}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_2

    :catch_1
    move-exception v7

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-eqz v9, :cond_14

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v9

    sget v10, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-ne v9, v10, :cond_14

    sget v9, Lsun/nio/fs/UnixConstants;->EEXIST:I

    invoke-virtual {v7, v9}, Lsun/nio/fs/UnixException;->setError(I)V

    :cond_14
    if-nez v2, :cond_15

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v9

    sget v10, Lsun/nio/fs/UnixConstants;->ELOOP:I

    if-ne v9, v10, :cond_15

    new-instance v8, Lsun/nio/fs/UnixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " (NOFOLLOW_LINKS specified)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :cond_15
    throw v7

    :cond_16
    :try_start_4
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3
.end method
